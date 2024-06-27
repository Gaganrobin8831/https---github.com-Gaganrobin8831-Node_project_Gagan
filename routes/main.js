const express = require('express');
const router = express.Router();
const bodyParser = require('body-parser');
const axios = require('axios');
const session = require('express-session');
const database = require('../database');
const multer = require('multer');
// Middleware to parse JSON bodies
router.use(bodyParser.json());

// Middleware to parse incoming request bodies
router.use(bodyParser.urlencoded({ extended: true }));







// Set up multer to handle file uploads
const storage = multer.diskStorage({
    destination: function (request, file, cb) {
        cb(null, 'public/image/'); // specify the destination folder as public/image
    },
    filename: function (request, file, cb) {
        cb(null, file.originalname); // use the original filename
    }
});
const upload = multer({ storage: storage });






// router.get('/menu', function(req, res, next) {
//     res.render('menubar'); 
// });
router.get('/Admin', function(req, res, next) {
    res.render('admin');
});

router.get('/slide', function(req, res, next) {
    res.render('slider'); 
});

router.get('/About', function(req, res, next) {
    res.render('about'); 
});

router.get('/API', function(req, res, next) {
    res.render('api_detail'); 
});
router.get('/tour', function(req, res, next) {
    res.render('tour_detail'); 
});
// router.get('/feed_back', function(req, res, next) {
//     res.render('feedback'); 
// });
router.get('/regestraion_form', function(req, res, next) {
    res.render('regestraion'); 
});

// router.get('/feedThanks', function(req, res, next) {
//     res.render('feed_thanks'); 
// });
// router.get('/pay', function(req, res, next) {
//     res.render('payment'); 
// });



// router.get("/AddTour",requireAdmin, function (request, response, next) {
//     response.render('AddTour'); // Render the sample_form.hbs template
// });

router.get("/addCategory",requireAdmin, function (request, response, next) {
    response.render('AddCategory'); // Render the sample_form.hbs template
});







router.use(session({
    secret:'Gagan',
    resave:false,
    saveUninitialized:true
}));



// get data of all table

router.get('/main', function(req, res, next) {
    const query = 'SELECT * FROM tour_table';
    database.query(query, (err, results) => {
        if (err) {
            throw err;
        }
        // Render the mainpage view and pass the tour data
        res.render('mainpage', { tours: results, isAuthenticated: req.session.userId});
        console.log(results);
    });
});



router.post('/register', function(req, res, next) {
    const { uname, email, phoneno, pwd } = req.body;
    const query = "INSERT INTO user_registration_table (`user_name`, `email`, `mobile_number`, `password`) VALUES (?, ?, ?, ?)";

    database.query(query, [uname, email, phoneno, pwd], function(error, results, fields) {
        if (error) {
            console.error('Error executing query:', error);
            res.status(500).send('Error executing query');
            return;
        }
        // Redirect the user to the login page after successful registration
        res.redirect("/login_form");
    });
});

// router.get('/loginform', function(req, res, next) {
//     // Pass a variable indicating whether the user is authenticated
//     res.render('mainpage',{ isAuthenticated: req.session.isAdmin || req.session.userId });

// });
router.get('/login_form', function(req, res, next) {
    // Pass a variable indicating whether the user is authenticated
    res.render('login');

});

function requirelogin(req, res, next) {
    if (req.session && req.session.userId) {
        return next();
    } else {
        return res.redirect('/login_form');
    }
}

function requireAdmin(req, res, next) {
    if (req.session && req.session.isAdmin) {
        return next();
    } else {
        return res.redirect('/login_form');
    }
}


router.post('/login', (req, res) => {
    const { uname, pwd } = req.body;

    // Check if username and password match fixed admin credentials
    if (uname === 'admin' && pwd === '123456') {
        // Set session data
       
        req.session.isAdmin = true;
        // Redirect to admin page
        res.render('AddTour');
        //res.redirect('/AddTour');
    } else {
        // Check credentials against registration table in database
        const query = 'SELECT * FROM user_registration_table WHERE user_name = ? AND password = ?';
        database.query(query, [uname, pwd], (err, results) => {
            if (err) {
                console.error('Error querying database:', err);
                res.status(500).send('Internal Server Error');
                return;
            }

            if (results.length > 0) {
                // Set session data
                req.session.userId = true;
                req.session.isAuthenticated = true; // Set isAuthenticated to true
                // Redirect to main page
                res.redirect('/main');
            } else {
                // Credentials don't match
                res.render('login');
            }
        });
    }
});



router.get('/logout', function(request, response, next) {
    // Clear the session data associated with the user
    request.session.destroy(function(err) {
        if (err) {
            console.error('Error destroying session:', err);
            res.status(500).send('Error destroying session');
            return;
        }
        // Redirect the user to the login page or any other appropriate page
        response.redirect('/main');
    });
});



router.post('/feed_form', function(req, res, next) {
    const { feedname, feedphno, feedmail, text_area } = req.body;
    const query = "INSERT INTO feedback_table ( `name`, `mobile_no`, `email_id`, `feedback`) VALUES (?, ?, ?, ?)";

    database.query(query, [ feedname, feedphno, feedmail, text_area], function(error, results, fields) {
        if (error) {
            console.error('Error executing query:', error);
            res.status(500).send('Error executing query');
            return;
        }
        // Redirect the user to the login page after successful registration
        res.render('feed_thanks');
    });
});

// router.get('/items', (req, res) => {
//     console.log('Fetching items from feedback_table');
//     database.query('SELECT * FROM feedback_table', (error, results) => {
//         if (error) {
//             return res.status(500).json({ error: error.message });
//         }
//         res.json(results);
//     });
// });




// Route to handle search functionality
router.post('/search', async function(req, res) {
    const name = req.body.name; // Get the name from the request body
    if (!name) {
        return res.status(400).json({ error: "No name provided" });
    }

    try {
        // Make a request to the Wikipedia API to get full details based on the name
        const response = await axios.get(`https://en.wikipedia.org/w/api.php?action=query&format=json&prop=extracts|pageimages|coordinates&exintro&explaintext&piprop=original&titles=${encodeURIComponent(name)}`);
        const pages = response.data.query.pages;
        const pageId = Object.keys(pages)[0];
        const details = pages[pageId];

        // Extract the image URL from the response
        const imageUrl = details.original ? details.original.source : null;

        // Extract location coordinates
        const coordinates = details.coordinates ? details.coordinates[0] : null;
        const latitude = coordinates ? coordinates.lat : null;
        const longitude = coordinates ? coordinates.lon : null;

        // Add the image URL and location coordinates to the details object
        details.imageUrl = imageUrl;
        details.latitude = latitude;
        details.longitude = longitude;

        // Render the 'api_detail' view and pass the details as variables
        res.render('api_detail', details);
        console.log(details);
    } catch (error) {
        console.error("Error searching Wikipedia:", error);
        res.status(500).json({ error: "Internal server error" });
    }
});

// Define the route to fetch data from the API
router.get('/mydatafeed',requireAdmin, async (req, res, next) => {
    console.log('Received request for /mydatafeed');
    try {
        const response = await axios.get('http://localhost:5000/api/feedback');
        const data = response.data;

        console.log('Fetched data:', data); // Logs the fetched data to the console
        res.render('feedback_detail',{feeddata : data});
        //res.json(data); // Send the fetched data as a JSON response to the client
    } catch (error) {
        console.error('Error fetching data:', error);
        next(error); // Pass any errors to the error handling middleware
    }
});
// Define the route to fetch data from the API
router.get('/payment_check',requireAdmin, async (req, res, next) => {
    console.log('Received request for /mydatafeed');
    try {
        const response = await axios.get('http://localhost:5000/api/feedback/payment');
        const data = response.data;

        console.log('Fetched data:', data); // Logs the fetched data to the console
        res.render('pay_check',{Paydata : data});
        //res.json(data); // Send the fetched data as a JSON response to the client
    } catch (error) {
        console.error('Error fetching data:', error);
        next(error); // Pass any errors to the error handling middleware
    }
});


router.get('/booking_detail',requirelogin,function(req, res, next) {
    let tourId = req.query.Item_id;
    console.log(tourId);
    const query = "SELECT * FROM tour_table WHERE tour_id = ?";

    database.query(query, [tourId], function(error, results, fields) {
        if (error) {
            console.error('Error executing query:', error);
            res.status(500).send('Error executing query');
            return;
        }
        console.log('this is tour detail',results);
        // Redirect the user to the login page after successful registration
        res.render("booking_detail",{ tours_detail: results[0]});
    });
});



router.post('/booking',requirelogin, function(req, res, next) {
    let { Item_id, name, mail, phno, price, noofperson, tdestination } = req.body;
    console.log({ Item_id, name, mail, phno, price, noofperson, tdestination });
    const insertQuery = "INSERT INTO new_tour_booking(`tour_id`, `name`, `email`, `phone`, `amount`, `no_of_person`, `tour_name`) VALUES (?,?,?,?,?,?,?)";

    // Inserting data into the new_tour_booking table
    database.query(insertQuery, [Item_id, name, mail, phno, price, noofperson, tdestination], function(error, results, fields) {
        if (error) {
            console.error('Error executing insert query:', error);
            res.status(500).send('Error executing insert query');
            return;
        }

        // Getting the last inserted ID
        const lastInsertId = results.insertId;
        console.log('Last inserted ID:', lastInsertId);

        // Selecting the newly inserted record based on the last inserted ID
        const selectQuery = "SELECT * FROM new_tour_booking WHERE booking_id = ?";
        database.query(selectQuery, [lastInsertId], function(error, results, fields) {
            if (error) {
                console.error('Error executing select query:', error);
                res.status(500).send('Error executing select query');
                return;
            }
            console.log('Newly inserted record:', results);
            // Rendering the payment page template with the fetched record
            res.render('payment', { booking: results[0] });
        });
    });
});



router.post('/pay',function(req,res,next){
    const {booking_id,card_type,card_num,name,price,date,Cvv}=req.body;

    const payquery = "INSERT INTO payment_table(`Booking_id`, `Card_type`, `Card_nunber`, `name`, `amount`, `exp_date`, `cvv`) VALUES (?,?,?,?,?,?,?)";
    database.query(payquery,[booking_id,card_type,card_num,name,price,date,Cvv], function(error,results,fields){
        if (error)
        {
        throw error;
        }
        console.log('DAta Enter');


             // Selecting the newly inserted record based on the last inserted ID
             const selectQuery = "SELECT * FROM payment_table WHERE booking_id = ?";
             database.query(selectQuery, [booking_id], function(error, results, fields) {
                 if (error) {
                     console.error('Error executing select query:', error);
                     res.status(500).send('Error executing select query');
                     return;
                 }
                 console.log('Newly inserted record:', results);
                 // Rendering the payment page template with the fetched record
                 res.render('Thankyoupay', { paybooking: results[0] });
             });
    });
});





//admin part


router.post("/addcat", function (request, response, next) {
    // Retrieve form data from request body
    const category = request.body.text1;
    console.log();
    
    // Perform database insertion
    const insertQuery = `INSERT INTO  category_table (catergory_name) VALUES (?)`;
    const values = [category];

    database.query(insertQuery, values, (err, results) => {
        if (err) {
            console.error('Error inserting data into the database:', err);
            return response.status(500).send('Error inserting data into the database');
        }
        // Insertion successful
        response.send('Form submitted successfully');
    });
});
router.get("/Editcategory",requireAdmin,upload.single('myfile'),function (request, response, next) {
    const query = "SELECT * FROM category_table"; // Assuming your table name is 'tour_table'
    
    database.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching data from the database:', err);
            return response.status(500).send('Error fetching data from the database');
        }

      

        response.render('Edit_Category', { category_table: results }); // Pass the data to the display HBS template
       
              console.log(results); // Log the results to check the structure and content

    });

});

router.post("/addtour", upload.single('myfile'), function (request, response, next) {
    // Retrieve form data from request body
    const {name,package,destination,duration,Select,amount,category} = request.body;
    // Retrieve uploaded file information
    const file = request.file;

    // Check if all required data is present
    // if (!name || !package || !destination) {
    //     return response.status(400).send('Missing Tour form data');
    // }

    // Perform database insertion
    const insertQuery = `INSERT INTO tour_table (image,tour_name,package,destination,duration,no_of_days,amount,category) VALUES (?,?,?,?,?,?,?,?)`;
    const values = [file.filename,name,package,destination,duration,Select,amount,category];

    database.query(insertQuery, values, (err, results) => {
        if (err) {
            console.error('Error inserting data into the database:', err);
            return response.status(500).send('Error inserting data into the database');
        }
        // Insertion successful
        response.send('Form submitted successfully');
    });
});


router.get("/Edit_Tour",requireAdmin,upload.single('myfile'),function (request, response, next) {
    const query = "SELECT * FROM tour_table"; // Assuming your table name is 'tour_table'
    
    database.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching data from the database:', err);
            return response.status(500).send('Error fetching data from the database');
        }

      

        response.render('Edit_Tour', { tour_table: results }); // Pass the data to the display HBS template
       
              console.log(results); // Log the results to check the structure and content

    });

});


router.get("/Check_tour_booking",requireAdmin,function (request, response, next) {
    const query = "SELECT * FROM tour_booking"; // Assuming your table name is 'tour_table'
    
    database.query(query, (err, results) => {
        if (err) {
            console.error('Error fetching data from the database:', err);
            return response.status(500).send('Error fetching data from the database');
        }

        response.render('Tour_Check', { tour_check: results }); // Pass the data to the display HBS template
       
         console.log(results); // Log the results to check the structure and content

    });
});


module.exports = router;

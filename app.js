const express = require('express');
const path = require('path');
const indexRouter = require('./routes/index');
const usersRouter = require('./routes/users');
const mainRouter = require('./routes/main');
const exphbs  = require('express-handlebars');
const feedbackRouter = require('./feedbackapi');
const database = require('./database');
const app = express();

// Set views directory
app.set('views', path.join(__dirname, 'views'));

const hbs = exphbs.create({
  extname: 'hbs',
  defaultLayout: false,
  partialsDir: path.join(app.get('views'), 'partials')
});

// Set view engine
app.engine('hbs', hbs.engine);
app.set('view engine', 'hbs');

// Serve static files from the public directory
app.use(express.static(path.join(__dirname, 'public')));


// Define routes
app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/api/feedback', feedbackRouter);
app.use('/', mainRouter);



// Error handler
app.use(function(err, req, res, next) {
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  res.status(err.status || 500);
  res.render('error');
});

// Start the server
const port = process.env.PORT || 5000;
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});

module.exports = app;

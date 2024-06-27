const express = require('express');
const router = express.Router();
const database = require('./database');

// Middleware to parse JSON bodies
router.use(express.json());

// Get all feedbacks
router.get('/feedback', (req, res) => {
    database.query('SELECT * FROM feedback_table', (error, results) => {
        if (error) {
            console.error('Database query error:', error);
            return res.status(500).json({ error: error.message });
        }
        res.json(results);
    });
});



// Get all feedbacks
router.get('/payment', (req, res) => {
    database.query('SELECT * FROM payment_table', (error, results) => {
        if (error) {
            console.error('Database query error:', error);
            return res.status(500).json({ error: error.message });
        }
        res.json(results);
        console.log(results);
    });
});



// Get feedback by ID
router.get('/feedback/:id', (req, res) => {
    const { id } = req.params;
    database.query('SELECT * FROM feedback_table WHERE id = ?', [id], (error, results) => {
        if (error) {
            console.error('Database query error:', error);
            return res.status(500).json({ error: error.message });
        }
        if (results.length === 0) {
            return res.status(404).json({ error: 'Feedback not found' });
        }
        res.json(results[0]);
    });
});

// Create new feedback
router.post('/', (req, res) => {
    const { name, mobile_no, email_id, feedback } = req.body;
    if (!name || !mobile_no || !email_id || !feedback) {
        return res.status(400).json({ error: 'All fields are required' });
    }
    database.query('INSERT INTO feedback_table (name, mobile_no, email_id, feedback) VALUES (?, ?, ?, ?)', [name, mobile_no, email_id, feedback], (error, results) => {
        if (error) {
            console.error('Database query error:', error);
            return res.status(500).json({ error: error.message });
        }
        res.status(201).json({ message: 'Feedback created', id: results.insertId });
    });
});

// Update feedback by ID
router.put('/feedback/:id', (req, res) => {
    const { id } = req.params;
    const { name, mobile_no, email_id, feedback } = req.body;
    if (!name || !mobile_no || !email_id || !feedback) {
        return res.status(400).json({ error: 'All fields are required' });
    }
    database.query('UPDATE feedback_table SET name = ?, mobile_no = ?, email_id = ?, feedback = ? WHERE id = ?', [name, mobile_no, email_id, feedback, id], (error, results) => {
        if (error) {
            console.error('Database query error:', error);
            return res.status(500).json({ error: error.message });
        }
        if (results.affectedRows === 0) {
            return res.status(404).json({ error: 'Feedback not found' });
        }
        res.json({ message: 'Feedback updated' });
    });
});

// Delete feedback by ID
router.delete('/feedback/:id', (req, res) => {
    const { id } = req.params;
    database.query('DELETE FROM feedback_table WHERE id = ?', [id], (error, results) => {
        if (error) {
            console.error('Database query error:', error);
            return res.status(500).json({ error: error.message });
        }
        if (results.affectedRows === 0) {
            return res.status(404).json({ error: 'Feedback not found' });
        }
        res.json({ message: 'Feedback deleted' });
    });
});



module.exports = router;

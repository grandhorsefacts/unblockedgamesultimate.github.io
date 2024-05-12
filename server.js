const express = require('express');
const path = require('path');

const app = express();

// Serve static files from the 'docs' directory
app.use(express.static(path.join(__dirname, 'docs')));

// Handle requests to the root URL
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'docs', 'index.html'));
});

// Start the server
const port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});

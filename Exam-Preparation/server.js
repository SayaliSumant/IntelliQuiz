app.get('/exam', (req, res) => {
    console.log(req.session.user ? `User logged in: ${req.session.user.email}` : "Guest user accessing exam");
    res.sendFile(path.join(__dirname, 'public', 'exam.html'));
});
// Serve Quiz Page
app.get('/quiz', (req, res) => {
    console.log(req.session.user ? `User logged in: ${req.session.user.email}` : "Guest user accessing quiz");
    res.sendFile(path.join(__dirname, 'public', 'quiz.html'));
});

// Fetch questions based on category and subcategory
app.get('/get-questions', async (req, res) => {
    const { category, sub_category } = req.query;

    console.log("🔍 Received:", { category, sub_category });

    if (!category || !sub_category) {
        return res.status(400).json({ error: "Missing category or sub_category." });
    }

    // Case-insensitive query
    const query = `
        SELECT * FROM ExamPreparation
        WHERE LOWER(category) = LOWER(?) AND LOWER(sub_category) = LOWER(?)
    `;

    db.query(query, [category, sub_category], (err, results) => {
        if (err) {
            console.error("Database Error:", err);
            return res.status(500).json({ error: "Internal server error." });
        }

        console.log("Query Results:", results); // Log the results

        if (results.length === 0) {
            return res.status(404).json({ error: "No questions found." });
        }

        res.json(results); // Send the fetched questions as a response
    });
});
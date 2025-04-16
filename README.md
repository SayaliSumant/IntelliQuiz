Dynamic Quiz Generator
A web-based dynamic quiz generator built with HTML, CSS, JavaScript, and Node.js, designed to create quizzes on various technical and non-technical topics through API integration. This project allows users to enter a topic and receive a set of questions tailored to that subject. Additionally, it includes features to help users prepare for competitive exams such as UPSC, MPSC, and bank exams.

This project uses the Open Trivia API for non-technical quizzes and quiz.api for technical quizzes to fetch random quiz questions based on user-selected categories.

Features

Topic-based Quizzes – Generate quizzes on any topic by simply entering the subject name

Static Quizzes – Fun pre-made quizzes for user engagement

Competitive Exam Preparation – Focused quizzes for UPSC, MPSC, and other exams

User Progress Tracking – Track quiz progress and scores

Save Quiz Results – Save and view past quiz attempts

Dynamic Quiz Generation – Auto-generates questions using API integration

Admin Panel – Add, view, or delete quizzes (shortcut: Ctrl + Alt + A)



Technologies Used

Backend: Node.js
Frontend: HTML, CSS, JavaScript
Database: MySQL

Installation
Clone the repository:
git clone https://github.com/your-username/dynamic-quiz-generator.git

Set up the MySQL database (SQL scripts are included in the sql/ folder)

Configure your database credentials in the backend config (e.g., .env or config file)

npm install
node app.js

CREATE TABLE Maths (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Maths (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('What is the value of π to two decimal places?', '3.14', '3.16', '3.12', '3.10', 'A'),
('What is the next number in the sequence: 2, 5, 10, 17, ?', '22', '26', '30', '34', 'B'),
('Which of the following is a prime number?', '4', '6', '11', '15', 'C'),
('What is the sum of the first 10 prime numbers?', '129', '143', '120', '142', 'B'),
('What is the solution to the equation: 3x - 7 = 11?', 'x = 6', 'x = 5', 'x = 4', 'x = 3', 'A'),
('If a right triangle has legs of lengths 3 and 4, what is the length of the hypotenuse?', '5', '6', '7', '8', 'A'),
('What is the next number in the Fibonacci sequence: 0, 1, 1, 2, 3, 5, 8, ?', '11', '13', '15', '18', 'B'),
('Which of the following numbers is divisible by 9?', '12345', '123456', '123457', '123459', 'B'),
('What is the value of 2^5?', '24', '25', '32', '64', 'C'),
('Which of the following is the solution to the inequality: 4x + 1 > 9?', 'x > 2', 'x > 3', 'x < 2', 'x < 3', 'A'),
('What is the value of 7^2 - 5^2?', '24', '20', '18', '12', 'A'),
('Which of the following is the smallest prime number?', '1', '2', '3', '5', 'B'),
('If a number is divisible by both 6 and 8, what is the smallest number it could be?', '12', '24', '48', '96', 'B'),
('What is the area of a rectangle with a length of 8 cm and a width of 5 cm?', '13 cm²', '40 cm²', '30 cm²', '45 cm²', 'B'),
('What is the value of √81?', '8', '9', '10', '11', 'B'),
('Which of the following is a perfect square?', '17', '21', '36', '48', 'C'),
('What is the median of the following set of numbers: 2, 3, 5, 7, 10?', '2', '5', '7', '10', 'B'),
('If 3x + 4 = 19, what is the value of x?', '4', '5', '6', '7', 'B'),
('What is the value of 5! (5 factorial)?', '120', '100', '60', '24', 'A'),
('If a sequence starts with 3, and each successive number is multiplied by 2, what is the 4th term in the sequence?', '12', '24', '48', '36', 'A'),
('Which of the following is an example of a rational number?', 'π', '√2', '5.5', '√3', 'C'),
('What is the next number in the arithmetic sequence: 4, 7, 10, 13, ?', '14', '16', '18', '15', 'B'),
('If x^2 = 49, what are the possible values of x?', 'x = 7', 'x = -7', 'x = 7 or x = -7', 'x = 49', 'C'),
('What is the least common multiple (LCM) of 4 and 6?', '12', '24', '8', '6', 'A'),
('Which of the following numbers is divisible by 3?', '1234', '1235', '1236', '1237', 'C');

CREATE TABLE GeneralScience (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO GeneralScience (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which of the following elements is a noble gas?', 'Oxygen', 'Helium', 'Nitrogen', 'Hydrogen', 'B'),
('What is the atomic number of carbon?', '6', '12', '14', '8', 'A'),
('What is the chemical symbol for gold?', 'Ag', 'Au', 'Pb', 'Fe', 'B'),
('Which of the following is a compound?', 'Oxygen', 'Water', 'Hydrogen', 'Nitrogen', 'B'),
('What is the pH of pure water at 25°C?', '7', '6', '8', '5', 'A'),
('Which of the following particles has a negative charge?', 'Proton', 'Neutron', 'Electron', 'Positron', 'C'),
('Which gas is most abundant in Earth''s atmosphere?', 'Oxygen', 'Nitrogen', 'Carbon dioxide', 'Argon', 'B'),
('What is the main component of natural gas?', 'Methane', 'Propane', 'Butane', 'Ethane', 'A'),
('Which of the following is a renewable source of energy?', 'Coal', 'Natural Gas', 'Wind', 'Nuclear', 'C'),
('What is the process of a liquid turning into a gas called?', 'Melting', 'Freezing', 'Evaporation', 'Condensation', 'C'),
('Which type of bond involves the sharing of electrons between atoms?', 'Ionic bond', 'Covalent bond', 'Hydrogen bond', 'Metallic bond', 'B'),
('Which of the following is a characteristic of an acid?', 'Bitter taste', 'Slippery feel', 'Turns blue litmus paper red', 'Does not dissolve in water', 'C'),
('What is the chemical formula for carbon dioxide?', 'CO', 'CO₂', 'C₂O', 'C₂O₂', 'B'),
('Which of the following elements is most reactive in Group 1 of the periodic table?', 'Sodium', 'Potassium', 'Lithium', 'Cesium', 'D'),
('What is the process by which plants make their own food using sunlight?', 'Respiration', 'Photosynthesis', 'Fermentation', 'Digestion', 'B'),
('Which of the following is a property of metals?', 'Poor conductivity of heat', 'Brittle and shatter easily', 'Malleability', 'Poor conductivity of electricity', 'C'),
('Which of the following is the most abundant element in the Earth''s crust?', 'Iron', 'Oxygen', 'Silicon', 'Aluminum', 'B'),
('What is the primary function of the mitochondria in a cell?', 'Protein synthesis', 'Energy production', 'Genetic storage', 'Cell division', 'B'),
('What is the chemical formula for ammonia?', 'NH₃', 'NH₄', 'N₂H₂', 'N₂O', 'A'),
('Which of the following is NOT a type of chemical bond?', 'Ionic bond', 'Covalent bond', 'Metallic bond', 'Hydrogen bond', 'D'),
('Which element is the basis of organic chemistry?', 'Oxygen', 'Hydrogen', 'Carbon', 'Nitrogen', 'C'),
('What is the atomic number of oxygen?', '8', '16', '18', '6', 'A'),
('What is the principle behind the law of conservation of mass?', 'Mass can be created or destroyed in chemical reactions', 'Mass remains constant in a closed system', 'Mass is always proportional to volume', 'Mass increases with temperature', 'B'),
('Which of the following gases is a byproduct of respiration in animals?', 'Oxygen', 'Nitrogen', 'Carbon dioxide', 'Methane', 'C'),
('What type of energy is stored in food?', 'Kinetic energy', 'Thermal energy', 'Chemical energy', 'Radiant energy', 'C');


CREATE TABLE LanguageLiterature (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO LanguageLiterature (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who is the author of Romeo and Juliet?', 'Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain', 'B'),
('Which of the following is the first book in the Harry Potter series?', 'Harry Potter and the Chamber of Secrets', 'Harry Potter and the Prisoner of Azkaban', 'Harry Potter and the Philosopher''s Stone', 'Harry Potter and the Goblet of Fire', 'C'),
('What is the main theme of George Orwell''s 1984?', 'Love and sacrifice', 'Totalitarianism and surveillance', 'Friendship and loyalty', 'Exploration and adventure', 'B'),
('Which of the following novels was written by Charles Dickens?', 'Moby-Dick', 'Pride and Prejudice', 'Great Expectations', 'The Catcher in the Rye', 'C'),
('Which poet is known for writing The Raven?', 'William Wordsworth', 'Edgar Allan Poe', 'Robert Frost', 'Emily Dickinson', 'B'),
('What is the setting of To Kill a Mockingbird by Harper Lee?', 'New York City', 'Maycomb, Alabama', 'Paris, France', 'London, England', 'B'),
('Which of the following is a dystopian novel written by Aldous Huxley?', 'Fahrenheit 451', 'Brave New World', '1984', 'The Handmaid''s Tale', 'B'),
('In which language was Don Quixote originally written?', 'French', 'Spanish', 'Italian', 'Portuguese', 'B'),
('What is the genre of the novel Frankenstein by Mary Shelley?', 'Science fiction', 'Gothic horror', 'Fantasy', 'Romance', 'B'),
('Who wrote The Great Gatsby?', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'William Faulkner', 'John Steinbeck', 'B'),
('What is the term for a recurring theme or symbol in a piece of literature?', 'Motif', 'Allegory', 'Irony', 'Metaphor', 'A'),
('Which of the following is the primary language spoken in One Hundred Years of Solitude by Gabriel García Márquez?', 'French', 'Spanish', 'Portuguese', 'Italian', 'B'),
('Which Shakespeare play features the characters of Othello, Desdemona, and Iago?', 'Macbeth', 'Hamlet', 'Othello', 'Julius Caesar', 'C'),
('In The Odyssey, who is the hero''s wife?', 'Penelope', 'Helen', 'Circe', 'Medea', 'A'),
('Which of the following books was NOT written by J.R.R. Tolkien?', 'The Hobbit', 'The Lord of the Rings', 'The Silmarillion', 'A Song of Ice and Fire', 'D'),
('Who wrote The Catcher in the Rye?', 'John Steinbeck', 'J.D. Salinger', 'F. Scott Fitzgerald', 'Kurt Vonnegut', 'B'),
('What is the name of Sherlock Holmes'' friend and chronicler?', 'Dr. Watson', 'Professor Moriarty', 'Inspector Lestrade', 'Captain Hastings', 'A'),
('Which of the following works was written by Mary Shelley?', 'Wuthering Heights', 'Pride and Prejudice', 'Frankenstein', 'Jane Eyre', 'C'),
('What is the first line of Moby-Dick by Herman Melville?', '"Call me Ishmael."', '"It was the best of times, it was the worst of times."', '"In the beginning, God created the heavens and the earth."', '"All happy families are alike."', 'A'),
('Which of the following is an example of an allusion?', '"He was a real Romeo with the ladies."', '"She was as beautiful as a sunset."', '"The wind whispered through the trees."', '"The stars danced in the sky."', 'A'),
('What is the genre of The Hunger Games by Suzanne Collins?', 'Fantasy', 'Dystopian', 'Romance', 'Historical fiction', 'B'),
('Which of the following characters is from The Lord of the Rings?', 'Harry Potter', 'Aragorn', 'Katniss Everdeen', 'Sherlock Holmes', 'B'),
('Which of these novels was written by Virginia Woolf?', 'Mrs. Dalloway', 'The Grapes of Wrath', 'The Old Man and the Sea', 'The Sound and the Fury', 'A'),
('In Pride and Prejudice, who is Elizabeth Bennet''s love interest?', 'Mr. Darcy', 'Mr. Collins', 'Mr. Bingley', 'Mr. Wickham', 'A'),
('Which of the following is a famous work by Homer?', 'The Iliad', 'The Divine Comedy', 'The Aeneid', 'The Canterbury Tales', 'A');



CREATE TABLE HistoryCulture (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO HistoryCulture (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who was the first emperor of China?', 'Qin Shi Huang', 'Han Wudi', 'Kublai Khan', 'Liu Bang', 'A'),
('In which year did World War I begin?', '1912', '1914', '1916', '1918', 'B'),
('Which country was formerly known as Persia?', 'Iraq', 'Iran', 'Turkey', 'Saudi Arabia', 'B'),
('Who was the first president of the United States?', 'George Washington', 'Thomas Jefferson', 'Abraham Lincoln', 'John Adams', 'A'),
('What was the name of the ship on which the Pilgrims traveled to America in 1620?', 'The Mayflower', 'The Titanic', 'The Santa Maria', 'The Beagle', 'A'),
('Which ancient civilization built the pyramids of Giza?', 'Romans', 'Greeks', 'Egyptians', 'Persians', 'C'),
('Which event triggered the beginning of the French Revolution?', 'The execution of Louis XVI', 'The storming of the Bastille', 'The signing of the Magna Carta', 'The fall of Napoleon Bonaparte', 'B'),
('Who was the leader of the Soviet Union during World War II?', 'Leon Trotsky', 'Joseph Stalin', 'Vladimir Lenin', 'Nikita Khrushchev', 'B'),
('In which year did the Berlin Wall fall?', '1987', '1989', '1991', '1993', 'B'),
('Which empire was ruled by Julius Caesar, Augustus, and Nero?', 'The Roman Empire', 'The Byzantine Empire', 'The Ottoman Empire', 'The Mongol Empire', 'A'),
('Which civilization is credited with creating the first writing system?', 'Mesopotamians', 'Egyptians', 'Mayans', 'Greeks', 'A'),
('What is the name of the famous trade route that connected China to the Mediterranean?', 'The Silk Road', 'The Spice Route', 'The Trans-Saharan Trade Route', 'The Amber Road', 'A'),
('Who was the first female pharaoh of ancient Egypt?', 'Cleopatra', 'Hatshepsut', 'Nefertiti', 'Tutankhamun', 'B'),
('Which country was the birthplace of the Renaissance?', 'Spain', 'France', 'Italy', 'England', 'C'),
('Which war was fought between the North and South regions of the United States from 1861 to 1865?', 'The War of 1812', 'The Civil War', 'The Spanish-American War', 'The Mexican-American War', 'B'),
('Who was the famous queen of ancient Egypt who had relationships with Julius Caesar and Mark Antony?', 'Nefertiti', 'Cleopatra', 'Hatshepsut', 'Amina', 'B'),
('What was the main purpose of the Magna Carta, signed in 1215?', 'To establish the Church of England', 'To declare England''s independence from France', 'To limit the powers of the king', 'To grant voting rights to commoners', 'C'),
('Which city was the capital of the Byzantine Empire?', 'Rome', 'Athens', 'Constantinople', 'Alexandria', 'C'),
('Which ancient civilization built the famous Machu Picchu?', 'Aztecs', 'Incas', 'Mayans', 'Olmecs', 'B'),
('Who was the famous leader of the Mongol Empire, known for uniting the Mongol tribes?', 'Genghis Khan', 'Kublai Khan', 'Attila the Hun', 'Alexander the Great', 'A'),
('Which of these wars was fought between 1950 and 1953?', 'The Korean War', 'World War I', 'The Vietnam War', 'The Falklands War', 'A'),
('What was the name of the ship that brought Christopher Columbus to the Americas in 1492?', 'The Mayflower', 'The Santa Maria', 'The Titanic', 'The Endeavour', 'B'),
('In which year did the United States declare independence from Britain?', '1776', '1783', '1800', '1770', 'A'),
('Who is considered the "Father of Modern Physics" for his work on the theory of relativity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Nikola Tesla', 'B'),
('Which famous structure was constructed in Paris, France, for the 1889 World''s Fair?', 'The Colosseum', 'The Eiffel Tower', 'The Parthenon', 'The Leaning Tower of Pisa', 'B');



CREATE TABLE Computer (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Computer (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which of the following is a programming language primarily used for web development?', 'Python', 'Java', 'JavaScript', 'C++', 'C'),
('What does the acronym "HTML" stand for?', 'Hyper Text Markup Language', 'Hyper Tool Markup Language', 'Home Text Markup Language', 'Hyper Transfer Markup Language', 'A'),
('Which of these is the correct syntax to print "Hello, World!" in Python?', 'echo("Hello, World!")', 'printf("Hello, World!")', 'print("Hello, World!")', 'System.out.println("Hello, World!")', 'C'),
('Which of these programming languages is primarily used for statistical analysis?', 'Python', 'Java', 'R', 'Ruby', 'C'),
('Which operator is used for multiplication in most programming languages?', '*', 'x', '#', '%', 'A'),
('What is the main purpose of a compiler in programming?', 'To translate high-level code into machine code', 'To run the program', 'To manage memory', 'To detect errors during runtime', 'A'),
('What is an array in programming?', 'A data structure that stores a collection of elements', 'A function that processes data', 'A type of loop', 'A file management system', 'A'),
('Which programming language is known as the "mother of all languages"?', 'Python', 'C', 'Assembly', 'Fortran', 'B'),
('Which of the following is a feature of object-oriented programming (OOP)?', 'Functions', 'Variables', 'Classes and Objects', 'Arrays', 'C'),
('In which programming language was the first graphical user interface (GUI) program written?', 'Python', 'C', 'Java', 'Lisp', 'D'),
('What is the purpose of the return keyword in programming?', 'To end the program', 'To call another function', 'To return a value from a function', 'To define a function', 'C'),
('Which of the following is used to handle errors in Python?', 'Try-except', 'Catch-throw', 'Try-catch', 'Error-handle', 'A'),
('What does the acronym "API" stand for in programming?', 'Advanced Programming Interface', 'Application Programming Interface', 'Automated Processing Interface', 'Application Protocol Interface', 'B'),
('What does CSS stand for?', 'Cascading Style Sheets', 'Computerized Style Sheets', 'Creative Style Sheets', 'Cascading System Sheets', 'A'),
('Which data structure uses a "Last In, First Out" (LIFO) principle?', 'Queue', 'Stack', 'Array', 'Linked List', 'B'),
('Which of these is the main feature of a relational database?', 'NoSQL storage', 'Tables and relationships between data', 'Dynamic schema', 'Object storage', 'B'),
('Which command is used to define a function in Python?', 'func', 'define', 'function', 'def', 'D'),
('What is the primary purpose of an operating system?', 'To perform mathematical calculations', 'To compile programs', 'To manage hardware and software resources', 'To encrypt data', 'C'),
('Which of these is NOT a type of loop in programming?', 'For loop', 'While loop', 'Do-while loop', 'Until loop', 'D'),
('What does SQL stand for?', 'Structured Query Language', 'Standard Query Language', 'Simple Query Language', 'Structured Quick Language', 'A'),
('What is the purpose of the void keyword in C and C++?', 'To specify that a function returns no value', 'To declare a variable with no data', 'To define a function', 'To indicate that an error occurred', 'A'),
('Which of the following is a JavaScript framework?', 'Django', 'React', 'Flask', 'Laravel', 'B'),
('Which programming language is mainly used for Android app development?', 'Java', 'Swift', 'Kotlin', 'C#', 'A'),
('What does the "git" command do in software development?', 'Compiles source code', 'Manages database connections', 'Tracks and manages changes to source code', 'Runs the application', 'C'),
('What is the purpose of the class keyword in object-oriented programming?', 'To define a data type', 'To create a function', 'To create a blueprint for objects', 'To declare a variable', 'C');
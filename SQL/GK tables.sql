CREATE DATABASE IntelliQuiz;
USE IntelliQuiz;
show tables;

CREATE TABLE HistoriesMysteries (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO HistoriesMysteries (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('The Antikythera Mechanism, discovered in 1901, is believed to be:', 'An ancient clock', 'A mechanical calculator', 'A weapon blueprint', 'A celestial map', 'B'),
('Which ancient Indian city, discovered in the 20th century, is believed to have had advanced drainage systems?', 'Pataliputra', 'Dholavira', 'Mohenjo-Daro', 'Taxila', 'C'),
('The mysterious Iron Pillar of Delhi is famous because:', 'It’s the tallest iron structure in the world', 'It has not rusted for centuries', 'It is aligned with celestial bodies', 'It is made of an unknown alloy', 'B'),
('The Lost City of Atlantis is first mentioned in the works of which philosopher?', 'Aristotle', 'Plato', 'Socrates', 'Herodotus', 'B'),
('The ancient Ashokan Pillars were inscribed with messages promoting:', 'War and conquest', 'Astrology', 'Dharma and non-violence', 'Worship of deities', 'C'),
('Which ancient site aligns perfectly with astronomical events like solstices?', 'Great Pyramid of Giza', 'Stonehenge', 'Machu Picchu', 'Petra', 'B'),
('The mysterious Nazca Lines in Peru are best viewed from:', 'Ground level', 'Mountain tops', 'The air', 'Nearby rivers', 'C'),
('The disappearance of which pharaoh led to the discovery of her possible tomb, KV60?', 'Cleopatra', 'Nefertiti', 'Hatshepsut', 'Ankhesenamun', 'C'),
('The Indus Valley script remains undeciphered. What type of symbols does it predominantly use?', 'Alphabets', 'Pictographs', 'Numbers', 'Cuneiform', 'B'),
('The Shroud of Turin is believed by some to depict the image of:', 'A medieval knight', 'Jesus Christ', 'A Roman emperor', 'A Templar monk', 'B'),
('Which ship was found mysteriously abandoned in the Atlantic in 1872?', 'Mary Celeste', 'HMS Victory', 'USS Constitution', 'Santa Maria', 'A'),
('The identity of which infamous London criminal in 1888 remains unsolved?', 'Spring-heeled Jack', 'Sweeney Todd', 'Jack the Ripper', 'H.H. Holmes', 'C'),
('What ancient Indian text is considered a treatise on statecraft and strategy, yet its true authorship is debated?', 'Arthashastra', 'Manusmriti', 'Rigveda', 'Mahabharata', 'A'),
('The Terracotta Army in China was discovered while searching for:', 'Gold', 'A well', 'A lost city', 'An ancient map', 'B'),
('The Library of Alexandria, once the largest in the ancient world, was destroyed by:', 'Julius Caesar', 'Earthquakes', 'Religious zealots', 'Its true cause is unknown', 'D'),
('Which rock inscription of Ashoka is significant for containing the first evidence of the Kalinga War?', 'Sanchi Stupa Inscription', 'Dhauli Rock Edict', 'Nasik Cave Inscription', 'Girnar Rock Edict', 'B'),
('What is peculiar about the statues on Easter Island?', 'They glow at night', 'They have hidden torsos underground', 'They point towards stars', 'They change positions', 'B'),
('The Oak Island Money Pit is believed to contain:', 'Pirate treasure', 'Ancient manuscripts', 'Religious relics', 'No one knows', 'A'),
('The mystery of the Bermuda Triangle is linked to:', 'Unusual magnetic fields', 'Alien abductions', 'Rogue waves', 'All of the above', 'D'),
('The Great Zimbabwe ruins were once thought to be built by:', 'Egyptian settlers', 'Local African tribes', 'Phoenician sailors', 'Ancient Greeks', 'B'),
('Which mysterious Indian temple is famous for its hanging pillar that does not touch the ground?', 'Meenakshi Temple', 'Lepakshi Temple', 'Brihadeeswarar Temple', 'Sun Temple, Konark', 'B'),
('What is unique about the Gobekli Tepe site in Turkey?', 'It’s underwater', 'It predates agriculture', 'It’s made of gold', 'It’s shaped like a pyramid', 'B'),
('The Black Knight Satellite is thought to be:', 'A Soviet experiment', 'An alien probe', 'A malfunctioning satellite', 'A piece of space debris', 'B'),
('The Ark of the Covenant is rumoured to be stored in:', 'The Vatican', 'Ethiopia', 'Egypt', 'Jerusalem', 'B'),
('The Rongorongo script of Easter Island is unique because:', 'It resembles Mayan glyphs', 'It remains undeciphered', 'It is sung, not read', 'It contains numeric codes', 'B');

select * from HistoriesMysteries;

-- Science and Technology Table
CREATE TABLE ScienceTechnology (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
select * from ScienceTechnology;
INSERT INTO ScienceTechnology (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('What is the speed of light in a vacuum?', '280,000 km/s', '300,000 km/s', '299,792 km/s', '310,000 km/s', 'C'),
('Who is known as the Father of the Internet?', 'Tim Berners-Lee', 'Vint Cerf', 'Alan Turing', 'Steve Jobs', 'B'),
('The term “Big Bang” refers to:', 'The origin of the universe', 'A large astronomical explosion', 'The collapse of a star', 'Formation of the Milky Way', 'A'),
('Which scientist is credited with the discovery of penicillin?', 'Alexander Fleming', 'Louis Pasteur', 'Marie Curie', 'Gregor Mendel', 'A'),
('What is the primary function of the Large Hadron Collider?', 'To study space debris', 'To generate energy', 'To accelerate particles for collision', 'To investigate subatomic particles', 'C'),
('The SI unit of electric current is:', 'Volt', 'Ohm', 'Joule', 'Ampere', 'D'),
('Who developed the General Theory of Relativity?', 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei', 'Nikola Tesla', 'A'),
('The Higgs Boson is also referred to as:', 'The quantum particle', 'The god molecule', 'The god particle', 'The boson energy', 'C'),
('What is the pH value of pure water at 25°C?', '6', '7', '7 (neutral)', '8', 'C'),
('Which element is the most abundant in the Earth''s crust?', 'Oxygen', 'Silicon', 'Aluminium', 'Iron', 'A'),
('The Turing Test is designed to test a machine''s ability to:', 'Solve equations', 'Exhibit human-like intelligence', 'Process big data', 'Perform quantum computations', 'B'),
('The smallest unit of a chemical element is:', 'Molecule', 'Atom', 'Proton', 'Electron', 'B'),
('Wi-Fi operates primarily on which frequency bands?', '2 GHz and 4 GHz', '2.4 GHz and 5 GHz', '1 GHz and 3 GHz', '4 GHz and 8 GHz', 'B'),
('The first human to travel into space was:', 'Yuri Gagarin', 'Neil Armstrong', 'Buzz Aldrin', 'John Glenn', 'A'),
('The programming language Python was named after:', 'The python snake', 'Monty Python comedy group', 'A Greek myth', 'Its simplicity', 'B'),
('Which Indian scientist developed the RAMAN effect?', 'Homi Bhabha', 'Jagadish Chandra Bose', 'C.V. Raman', 'Vikram Sarabhai', 'C'),
('The process of cell division in eukaryotes is known as:', 'Mitosis', 'Meiosis', 'Cytokinesis', 'Fission', 'A'),
('Silicon Valley, known for its tech innovations, is located in:', 'Texas', 'California', 'Washington', 'Massachusetts', 'B'),
('The Hubble Space Telescope is used to observe:', 'Subatomic particles', 'Distant celestial objects', 'Earth''s atmosphere', 'Geological formations', 'B'),
('The first law of thermodynamics is a statement of:', 'Conservation of momentum', 'Conservation of mass', 'Conservation of energy', 'Conservation of temperature', 'C'),
('Who is credited with inventing the worldwide web (WWW)?', 'Tim Berners-Lee', 'Bill Gates', 'Steve Jobs', 'Vint Cerf', 'A'),
('The device used to measure earthquakes is called a:', 'Barometer', 'Seismograph', 'Thermometer', 'Hygrometer', 'B'),
('The term “quantum leap” refers to:', 'A large physical jump', 'A significant technological breakthrough', 'The sudden change in an electron''s energy level', 'A transition between galaxies', 'C'),
('What is the primary purpose of a CPU (Central Processing Unit) in a computer?', 'To process and execute instructions', 'To store data', 'To display graphics', 'To manage network connections', 'A'),
('Which Indian space mission successfully placed a satellite in Mars'' orbit on its first attempt?', 'Chandrayaan-1', 'Aditya L1', 'Mangalyaan (Mars Orbiter Mission)', 'Astrosat', 'C');


-- World Geography Table
CREATE TABLE WorldGeography (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);

INSERT INTO WorldGeography (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('The largest desert in the world is:', 'Arabian Desert', 'Gobi Desert', 'Kalahari Desert', 'Sahara Desert', 'D'),
('What is the longest river in the world?', 'Amazon', 'Yangtze', 'Mississippi', 'Nile', 'D'),
('Mount Everest is located in which mountain range?', 'Alps', 'Himalayas', 'Andes', 'Rockies', 'B'),
('Which country is known as the “Land of the Rising Sun”?', 'China', 'South Korea', 'Japan', 'Thailand', 'C'),
('The largest freshwater lake by surface area in the world is:', 'Lake Superior', 'Lake Baikal', 'Lake Victoria', 'Caspian Sea', 'A'),
('The equator passes through how many continents?', 'Two', 'Three', 'Four', 'Five', 'B'),
('Which country has the highest number of islands in the world?', 'Sweden', 'Indonesia', 'Philippines', 'Norway', 'A'),
('The Atacama Desert, the driest place on Earth, is located in:', 'Africa', 'Asia', 'South America', 'Australia', 'C'),
('Which ocean is the smallest in the world?', 'Indian Ocean', 'Southern Ocean', 'Arctic Ocean', 'Atlantic Ocean', 'C'),
('The Great Barrier Reef, the world’s largest coral reef system, is located near:', 'India', 'Australia', 'Indonesia', 'Philippines', 'B'),
('Which European country has the longest coastline?', 'Italy', 'Greece', 'Norway', 'Spain', 'C'),
('What is the capital city of Canada?', 'Toronto', 'Vancouver', 'Montreal', 'Ottawa', 'D'),
('The Dead Sea is called so because:', 'It’s surrounded by deserts', 'Its high salinity prevents most life', 'It has no water outlets', 'It is below sea level', 'B'),
('The Andes Mountains are primarily located in:', 'North America', 'Europe', 'Africa', 'South America', 'D'),
('Which is the largest island in the world?', 'Borneo', 'Madagascar', 'New Guinea', 'Greenland', 'D'),
('Which country shares borders with both China and Russia?', 'India', 'Kazakhstan', 'Mongolia', 'Nepal', 'C'),
('The Amazon Rainforest is primarily found in which country?', 'Colombia', 'Brazil', 'Peru', 'Venezuela', 'B'),
('The Great Rift Valley is located in which continent?', 'Asia', 'Europe', 'South America', 'Africa', 'D'),
('Which river forms the Grand Canyon?', 'Missouri River', 'Rio Grande', 'Mississippi River', 'Colorado River', 'D'),
('The Tropic of Cancer passes through which of these countries?', 'Argentina', 'Australia', 'India', 'Chile', 'C'),
('Which city is known as the “City of Canals”?', 'Amsterdam', 'Bangkok', 'Venice', 'Bruges', 'C'),
('What is the largest continent by land area?', 'Asia', 'Africa', 'North America', 'Europe', 'A'),
('The Suez Canal connects which two seas?', 'Black Sea and Mediterranean Sea', 'Mediterranean Sea and Red Sea', 'Arabian Sea and Red Sea', 'Atlantic Ocean and Pacific Ocean', 'B'),
('The Ring of Fire refers to:', 'A region with the hottest temperatures', 'An area with active volcanoes around the Arctic Ocean', 'A series of deserts in Africa', 'A region of active volcanoes and earthquakes around the Pacific Ocean', 'D'),
('Which city lies on two continents?', 'Moscow', 'Istanbul', 'Cairo', 'Mexico City', 'B');


-- Famous Quotes and Authors Table
CREATE TABLE FamousQuotesAuthors (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);

INSERT INTO FamousQuotesAuthors (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who said, “Be the change that you wish to see in the world”?', 'Rabindranath Tagore', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Nelson Mandela', 'B'),
('“Where there is love, there is life” is a quote by:', 'Martin Luther King Jr.', 'Mahatma Gandhi', 'Mother Teresa', 'Leo Tolstoy', 'B'),
('Who is the author of the book “The Discovery of India”?', 'C. Rajagopalachari', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan', 'Rabindranath Tagore', 'B'),
('“I have a dream” was a famous speech by:', 'Abraham Lincoln', 'Barack Obama', 'John F. Kennedy', 'Martin Luther King Jr.', 'D'),
('Who said, “An eye for an eye will only make the whole world blind”?', 'Mahatma Gandhi', 'Swami Vivekananda', 'Winston Churchill', 'Confucius', 'A'),
('The author of “Gitanjali,” which won the Nobel Prize in Literature, is:', 'Rabindranath Tagore', 'Vikram Seth', 'R.K. Narayan', 'Ruskin Bond', 'A'),
('“To be, or not to be, that is the question” is from which Shakespearean play?', 'Romeo and Juliet', 'Macbeth', 'Othello', 'Hamlet', 'D'),
('“Swaraj is my birthright, and I shall have it” was proclaimed by:', 'Bal Gangadhar Tilak', 'Subhas Chandra Bose', 'Bhagat Singh', 'Lala Lajpat Rai', 'A'),
('Who said, “Injustice anywhere is a threat to justice everywhere”?', 'Nelson Mandela', 'Martin Luther King Jr.', 'Franklin D. Roosevelt', 'Desmond Tutu', 'B'),
('The book “Wings of Fire” was written by:', 'Dr. A.P.J. Abdul Kalam', 'Vikram Sarabhai', 'Homi Bhabha', 'C.V. Raman', 'A'),
('“Give me blood, and I will give you freedom” was a famous quote by:', 'Bhagat Singh', 'Subhas Chandra Bose', 'Lala Lajpat Rai', 'Chandrashekhar Azad', 'B'),
('Who said, “Man is the master of his own destiny”?', 'Nelson Mandela', 'Jawaharlal Nehru', 'Swami Vivekananda', 'Subhas Chandra Bose', 'D'),
('“A thing of beauty is a joy forever” is a line from which poet?', 'William Wordsworth', 'John Keats', 'Percy Bysshe Shelley', 'Robert Frost', 'B'),
('The book “My Experiments with Truth” is the autobiography of:', 'Subhas Chandra Bose', 'Jawaharlal Nehru', 'Mahatma Gandhi', 'Dr. B.R. Ambedkar', 'C'),
('Who said, “Knowledge is power”?', 'Socrates', 'Plato', 'Francis Bacon', 'Aristotle', 'C'),
('“Arise, awake, and stop not till the goal is reached” is attributed to:', 'Mahatma Gandhi', 'Swami Vivekananda', 'Rabindranath Tagore', 'S. Radhakrishnan', 'B'),
('The quote “I can resist everything except temptation” is from:', 'George Bernard Shaw', 'Mark Twain', 'Oscar Wilde', 'Ernest Hemingway', 'C'),
('Who is the author of the book “The Guide”?', 'Salman Rushdie', 'R.K. Narayan', 'Ruskin Bond', 'Arundhati Roy', 'B'),
('“You must be the master of your own destiny” was said by:', 'Mahatma Gandhi', 'Jawaharlal Nehru', 'Dr. B.R. Ambedkar', 'Bal Gangadhar Tilak', 'D'),
('Who said, “Do or do not. There is no try”?', 'Yoda (Star Wars)', 'Albert Einstein', 'Carl Sagan', 'Isaac Asimov', 'A'),
('The famous book “A Brief History of Time” was written by:', 'Carl Sagan', 'Stephen Hawking', 'Richard Feynman', 'Isaac Newton', 'B'),
('“In a gentle way, you can shake the world” is a quote by:', 'Mahatma Gandhi', 'Mother Teresa', 'Nelson Mandela', 'Dalai Lama', 'A'),
('The book “India Wins Freedom” is the autobiography of:', 'Maulana Abul Kalam Azad', 'Jawaharlal Nehru', 'Sarvepalli Radhakrishnan', 'C. Rajagopalachari', 'A'),
('Who said, “Success is not final, failure is not fatal: It is the courage to continue that counts”?', 'Winston Churchill', 'Franklin D. Roosevelt', 'Theodore Roosevelt', 'John F. Kennedy', 'A'),
('“I am the poet of the body and the poet of the soul” was written by:', 'T.S. Eliot', 'William Blake', 'Walt Whitman', 'Robert Frost', 'C');



CREATE TABLE MusicAges (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO MusicAges (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who is known as the "Father of Indian Classical Music"?', 'Tyagaraja', 'Swami Haridas', 'Ustad Bismillah Khan', 'Tansen', 'D'),
('The Grammy Awards are presented for excellence in:', 'Music', 'Literature', 'Acting', 'Dance', 'A'),
('Who composed the Indian national song “Vande Mataram”?', 'Rabindranath Tagore', 'Mahatma Gandhi', 'Bankim Chandra Chattopadhyay', 'Lata Mangeshkar', 'C'),
('Who is known as the "King of Pop"?', 'Elvis Presley', 'Michael Jackson', 'Prince', 'Freddie Mercury', 'B'),
('Which Indian instrument is associated with Ravi Shankar?', 'Tabla', 'Veena', 'Mridangam', 'Sitar', 'D'),
('The opera is a combination of:', 'Dance and Painting', 'Singing and Drama', 'Music and Sculpture', 'Poetry and Acting', 'B'),
('Which famous composer is credited with “The Four Seasons”?', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Antonio Vivaldi', 'Ludwig van Beethoven', 'C'),
('Lata Mangeshkar is known as the:', 'Nightingale of India', 'Queen of Melodies', 'Indian Songbird', 'Goddess of Music', 'A'),
('Which genre of music originated in the African-American communities of New Orleans?', 'Rock', 'Classical', 'Jazz', 'Folk', 'C'),
('The Indian Carnatic music tradition originated in:', 'Northern India', 'Southern India', 'Eastern India', 'Western India', 'B'),
('Who composed “Bohemian Rhapsody”, one of the greatest rock songs?', 'The Rolling Stones', 'The Beatles', 'Queen', 'Led Zeppelin', 'C'),
('Which is the oldest stringed instrument in India?', 'Tabla', 'Sarangi', 'Veena', 'Rudra Veena', 'D'),
('What is the tempo in music?', 'The pitch of the notes', 'The speed of the music', 'The melody pattern', 'The rhythm\'s depth', 'B'),
('Who was the first recipient of the Bharat Ratna in music?', 'M.S. Subbulakshmi', 'Bismillah Khan', 'Lata Mangeshkar', 'Ravi Shankar', 'A'),
('The Beatles originated from which city?', 'New York', 'Liverpool', 'London', 'Paris', 'B'),
('The Khayal style is associated with:', 'Western Classical Music', 'Indian Classical Music', 'Jazz', 'Opera', 'B'),
('Which composer wrote Symphony No. 9, also known as “Ode to Joy”?', 'Wolfgang Amadeus Mozart', 'Johann Sebastian Bach', 'Ludwig van Beethoven', 'Antonio Vivaldi', 'C'),
('Who is credited with bringing Hindustani music to global prominence?', 'Zakir Hussain', 'Amjad Ali Khan', 'Pandit Jasraj', 'Ravi Shankar', 'D'),
('The Gramophone was invented by:', 'Alexander Graham Bell', 'Thomas Edison', 'Emile Berliner', 'Guglielmo Marconi', 'C'),
('Who wrote the famous “Boléro”?', 'Claude Debussy', 'Maurice Ravel', 'Igor Stravinsky', 'Sergei Rachmaninoff', 'B'),
('The Tabla is primarily used in which form of music?', 'Western Classical', 'Indian Classical', 'Jazz', 'Rock', 'B'),
('Who composed the famous “Mozart Symphony No. 40”?', 'Ludwig van Beethoven', 'Johann Sebastian Bach', 'Wolfgang Amadeus Mozart', 'Antonio Vivaldi', 'C'),
('“Raag Yamn” is primarily performed during:', 'Morning', 'Afternoon', 'Night', 'Evening', 'D'),
('The Grammy Award for Album of the Year 2023 was won by:', 'Beyoncé', 'Harry Styles', 'Adele', 'Taylor Swift', 'B'),
('The famous “Hallelujah Chorus” is part of which oratorio?', 'The Creation', 'Messiah', 'St. Matthew Passion', 'Elijah', 'B');

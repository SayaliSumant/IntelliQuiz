CREATE TABLE Christmas (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Christmas (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which Christmas carol begins with the line "Jingle bells, jingle bells, jingle all the way"?', 'Deck the Halls', 'Jingle Bells', 'Silent Night', 'Hark! The Herald Angels Sing', 'B'),
('In the song "We Wish You a Merry Christmas," what do the singers ask for in the second verse?', 'A Christmas tree', 'A figgy pudding', 'A white Christmas', 'A holly wreath', 'B'),
('Which carol includes the lyrics "O holy night, the stars are brightly shining"?', 'O Little Town of Bethlehem', 'O Holy Night', 'Hark! The Herald Angels Sing', 'Away in a Manger', 'B'),
('In "The Twelve Days of Christmas," what gift is given on the fifth day?', 'Five golden rings', 'Five French hens', 'Five pipers piping', 'Five geese a-laying', 'A'),
('Which Christmas carol was first written in French, with the title "Minuit, chrétiens"?', 'O Holy Night', 'Silent Night', 'Joy to the World', 'The First Noel', 'A'),
('In "Good King Wenceslas," who does the king help on the Feast of Stephen?', 'A poor beggar', 'A shepherd', 'A wise man', 'A farmer', 'A'),
('Which Christmas carol features the lyrics "Glory to the new born King, peace on earth and mercy mild"?', 'Joy to the World', 'Hark! The Herald Angels Sing', 'O Come, All Ye Faithful', 'The First Noel', 'B'),
('In the song "Frosty the Snowman," what is the snowman’s nose made of?', 'A button', 'A carrot', 'A coal', 'A pipe', 'B'),
('Which Christmas carol mentions "the little Lord Jesus asleep on the hay"?', 'Silent Night', 'Away in a Manger', 'O Little Town of Bethlehem', 'The First Noel', 'B'),
('Which Christmas carol includes the lyrics "Oh, come all ye faithful, joyful and triumphant"?', 'O Come, All Ye Faithful', 'O Holy Night', 'Joy to the World', 'We Three Kings', 'A'),
('In "Rudolph the Red-Nosed Reindeer," what makes Rudolph\'s nose glow?', 'Magic dust', 'Christmas spirit', 'A special light', 'His red nose', 'D'),
('Which Christmas carol asks for "tidings of comfort and joy"?', 'O Holy Night', 'We Wish You a Merry Christmas', 'God Rest Ye Merry, Gentlemen', 'Deck the Halls', 'C'),
('What is the name of the reindeer mentioned in "Rudolph the Red-Nosed Reindeer" who is known for his shiny red nose?', 'Dasher', 'Rudolph', 'Prancer', 'Blitzen', 'B'),
('In "O Little Town of Bethlehem," what is said to be the "darkest day"?', 'The day of Jesus\' birth', 'The day Jesus died', 'The day of the crucifixion', 'The day of the Resurrection', 'B'),
('Which carol includes the line "Tis the season to be jolly"?', 'Jingle Bells', 'Deck the Halls', 'We Wish You a Merry Christmas', 'O Christmas Tree', 'B'),
('What gift is given in the carol "The Twelve Days of Christmas" on the seventh day?', 'Seven swans a-swimming', 'Seven geese a-laying', 'Seven golden rings', 'Seven pipers piping', 'A'),
('Which Christmas carol was written by Isaac Watts and was first published in 1719?', 'Joy to the World', 'Hark! The Herald Angels Sing', 'O Holy Night', 'O Come, O Come, Emmanuel', 'A'),
('In the song "Jingle Bell Rock," what is mentioned as the “jingle bell” of choice?', 'Sleigh bells', 'Church bells', 'Wedding bells', 'Cowbells', 'A'),
('Which Christmas carol includes the line "Let earth receive her King"?', 'Hark! The Herald Angels Sing', 'O Come, All Ye Faithful', 'We Wish You a Merry Christmas', 'Silent Night', 'A'),
('Which Christmas carol mentions "The cattle are lowing, the poor baby wakes"?', 'Away in a Manger', 'O Little Town of Bethlehem', 'Silent Night', 'Hark! The Herald Angels Sing', 'A'),
('In "The First Noel," what did the wise men follow to find Jesus?', 'A star', 'A comet', 'A dove', 'A bright light', 'A'),
('Which Christmas carol has the lyrics "Don we now our gay apparel"?', 'Deck the Halls', 'Jingle Bells', 'We Wish You a Merry Christmas', 'O Christmas Tree', 'A'),
('In "Little Drummer Boy," what does the boy play for Jesus?', 'A guitar', 'A drum', 'A flute', 'A harp', 'B'),
('Which Christmas carol begins with the words "O come, all ye faithful"?', 'O Come, All Ye Faithful', 'Silent Night', 'Hark! The Herald Angels Sing', 'The First Noel', 'A'),
('What Christmas carol mentions "glory to the new born King"?', 'O Holy Night', 'Joy to the World', 'Hark! The Herald Angels Sing', 'O Come, O Come, Emmanuel', 'C');


CREATE TABLE Halloween (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Halloween (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which classic horror film features the villain Michael Myers?', 'Halloween', 'Friday the 13th', 'A Nightmare on Elm Street', 'The Texas Chainsaw Massacre', 'A'),
('Which Stephen King novel was adapted into a movie about a girl with telekinetic powers?', 'The Shining', 'It', 'Carrie', 'Pet Sematary', 'C'),
('In "The Texas Chainsaw Massacre," what is the name of the infamous killer?', 'Jason Voorhees', 'Freddy Krueger', 'Michael Myers', 'Leatherface', 'D'),
('Which 1996 film revived the "slasher" genre and featured the character Ghostface?', 'Scream', 'I Know What You Did Last Summer', 'The Blair Witch Project', 'Urban Legend', 'A'),
('What is the name of the haunted hotel in Stephen King\'s "The Shining"?', 'The Overlook Hotel', 'The Bates Motel', 'The Elm Street Inn', 'The Red Rum Resort', 'A'),
('Who played Freddy Krueger in the "A Nightmare on Elm Street" series?', 'Robert Englund', 'Johnny Depp', 'Bruce Campbell', 'Jamie Lee Curtis', 'A'),
('In the movie "The Exorcist," what is the name of the possessed girl?', 'Linda', 'Regan', 'Jessica', 'Sarah', 'B'),
('Which 2017 film is based on Stephen King\'s novel about a killer clown?', 'It', 'The Shining', 'Pet Sematary', 'Misery', 'A'),
('In "Friday the 13th," who is the first victim of Jason Voorhees?', 'Alice', 'Steve', 'Jack', 'Pamela Voorhees', 'B'),
('In the film "Psycho," what is the name of the motel owned by Norman Bates?', 'Bates Motel', 'Redrum Motel', 'Norman\'s Inn', 'Lonely Pines Motel', 'A'),
('Which creature is the focus of the horror movie "The Ring"?', 'A zombie', 'A ghost', 'A werewolf', 'A vampire', 'B'),
('Which 1980s film features a possessed doll named Chucky?', 'The Omen', 'Child’s Play', 'Annabelle', 'Puppet Master', 'B'),
('What is the name of the family in "The Addams Family"?', 'The Munsters', 'The Kruegers', 'The Addams', 'The Bates', 'C'),
('Which Halloween horror movie features the quote "They\'re here!"?', 'The Exorcist', 'Poltergeist', 'The Shining', 'A Nightmare on Elm Street', 'B'),
('Which movie character is known for saying, “Here’s Johnny!”?', 'Freddy Krueger', 'Michael Myers', 'Jack Torrance', 'Norman Bates', 'C'),
('In "The Blair Witch Project," the characters are searching for a legendary figure in the woods. Who is it?', 'The Wendigo', 'The Blair Witch', 'Slender Man', 'Bigfoot', 'B'),
('Which horror movie involves a killer named Jason who wears a hockey mask?', 'Friday the 13th', 'Halloween', 'Texas Chainsaw Massacre', 'Scream', 'A'),
('What is the name of the killer doll in the "Annabelle" series?', 'Chucky', 'Samara', 'Annabelle', 'Jigsaw', 'C'),
('What horror movie franchise involves a puzzle box and a group of demons known as the Cenobites?', 'Hellraiser', 'The Conjuring', 'Saw', 'The Texas Chainsaw Massacre', 'A'),
('Which horror movie is famous for the line "Do you like scary movies?"', 'Halloween', 'The Texas Chainsaw Massacre', 'Scream', 'A Nightmare on Elm Street', 'C'),
('In "The Conjuring," what is the name of the real-life paranormal investigators?', 'The Warrens', 'The Jacksons', 'The Smiths', 'The Thompsons', 'A'),
('Which of these is a classic 1970s horror film directed by George Romero?', 'The Evil Dead', 'Dawn of the Dead', 'Rosemary\'s Baby', 'The Texas Chainsaw Massacre', 'B'),
('What is the name of the ghost in "Beetlejuice"?', 'Lydia', 'Adam', 'Beetlejuice', 'Maitland', 'C'),
('Which iconic horror movie features the line "I see dead people"?', 'The Sixth Sense', 'The Others', 'The Ring', 'The Conjuring', 'A'),
('In "The Cabin in the Woods," who is behind the horrific events taking place at the cabin?', 'Zombies', 'Ghosts', 'Government officials', 'Scientists', 'D');



CREATE TABLE Valentine (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Valentine (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which Roman god is considered the god of love, often associated with Valentine\'s Day?', 'Mars', 'Apollo', 'Cupid', 'Neptune', 'C'),
('Which famous couple is known for their tragic love story in Shakespeare\'s play?', 'Antony and Cleopatra', 'Romeo and Juliet', 'Cleopatra and Julius Caesar', 'Paris and Helen', 'B'),
('Which flower is most commonly associated with love on Valentine’s Day?', 'Lily', 'Rose', 'Tulip', 'Daisy', 'B'),
('In which country did Valentine\'s Day originate?', 'France', 'Italy', 'United States', 'England', 'D'),
('What is the traditional Valentine\'s Day gift for someone you love?', 'Chocolates', 'Jewelry', 'A book', 'A pet', 'A'),
('What romantic comedy movie is about a young woman who falls in love with a man whose identity she mistakes for someone else?', 'The Wedding Planner', '10 Things I Hate About You', 'Sweet Home Alabama', 'While You Were Sleeping', 'D'),
('Which of the following is a famous love song by Elvis Presley?', 'Let It Be', 'Can’t Help Falling in Love', 'I Will Always Love You', 'My Heart Will Go On', 'B'),
('Which symbol is often used to represent Valentine\'s Day, commonly seen on cards and decorations?', 'Star', 'Heart', 'Moon', 'Starfish', 'B'),
('What does the term "Valentine" traditionally refer to?', 'A type of flower', 'A type of chocolate', 'A letter or card sent to express love', 'A gift exchange', 'C'),
('Which of these is the name of a famous love poem by Elizabeth Barrett Browning?', 'How Do I Love Thee?', 'Sonnet 18', 'The Raven', 'The Tyger', 'A'),
('What is the name of the love story between a mermaid and a prince in a popular fairy tale by Hans Christian Andersen?', 'Cinderella', 'Snow White', 'The Little Mermaid', 'Beauty and the Beast', 'C'),
('Which gemstone is most commonly associated with love and is often given on Valentine\'s Day?', 'Sapphire', 'Ruby', 'Diamond', 'Emerald', 'C'),
('Which famous romantic comedy features the line, "To me, you are perfect"?', 'Sleepless in Seattle', 'Love Actually', 'The Proposal', '13 Going on 30', 'B'),
('What is the name of the Cupid\'s arrow in Greek mythology that causes people to fall in love?', 'Eros', 'Apollo', 'Zeus', 'Hermes', 'A'),
('Which of these love-related holidays is celebrated on the 14th of February?', 'International Love Day', 'St. Valentine’s Day', 'World Romance Day', 'National Sweetheart Day', 'B'),
('In the song "My Heart Will Go On," who is the singer?', 'Adele', 'Celine Dion', 'Whitney Houston', 'Mariah Carey', 'B'),
('Which animal is often associated with love and romance, particularly on Valentine\'s Day?', 'Owl', 'Dove', 'Swan', 'Elephant', 'B'),
('Which of these countries celebrates Valentine\'s Day as "Friends Day"?', 'Italy', 'France', 'Sweden', 'Mexico', 'C'),
('Which famous couple is the subject of a classic Shakespearean play, where they both die tragically in the end?', 'Hamlet and Ophelia', 'Cleopatra and Julius Caesar', 'Romeo and Juliet', 'Macbeth and Lady Macbeth', 'C'),
('Which type of chocolate is most commonly given on Valentine’s Day?', 'White chocolate', 'Dark chocolate', 'Milk chocolate', 'All of the above', 'D'),
('Which love story is set in the fictional land of Elsinore Castle?', 'Othello and Desdemona', 'Hamlet and Ophelia', 'Pyramus and Thisbe', 'Anthony and Cleopatra', 'B'),
('Which fruit is traditionally associated with love and often used as a symbol on Valentine\'s Day?', 'Apple', 'Cherry', 'Strawberry', 'Pomegranate', 'C'),
('Which famous movie features the line, "You complete me"?', 'Sleepless in Seattle', 'Jerry Maguire', 'Notting Hill', 'When Harry Met Sally', 'B'),
('Which of these is the name of a famous love story that was written by Jane Austen?', 'Pride and Prejudice', 'Moby Dick', 'The Great Gatsby', 'The Picture of Dorian Gray', 'A'),
('Which color is commonly associated with love, passion, and Valentine\'s Day?', 'Pink', 'Red', 'Blue', 'Yellow', 'B');



CREATE TABLE Easter (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO Easter (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('What is the traditional symbol of Easter that is often hidden for children to find?', 'Chocolate bunnies', 'Easter eggs', 'Jelly beans', 'Carrots', 'B'),
('Which animal is said to deliver Easter eggs to children in some cultures?', 'Bunny', 'Duck', 'Chicken', 'Lamb', 'A'),
('What color is commonly associated with Easter?', 'Red', 'Purple', 'Yellow', 'Green', 'C'),
('Which flower is traditionally associated with Easter?', 'Rose', 'Daffodil', 'Tulip', 'Lily', 'D'),
('In which country did the Easter Egg Hunt tradition begin?', 'Germany', 'United States', 'France', 'England', 'A'),
('What do people typically hide during an Easter Egg Hunt?', 'Chocolate bunnies', 'Plastic or real eggs', 'Jelly beans', 'Carrots', 'B'),
('Which of the following is NOT a common Easter egg filling?', 'Chocolate', 'Jelly beans', 'Marshmallows', 'Pickles', 'D'),
('What day of the week is Easter celebrated?', 'Friday', 'Saturday', 'Sunday', 'Monday', 'C'),
('What is the traditional Easter candy that is shaped like a chick?', 'Jelly beans', 'Peeps', 'Chocolate eggs', 'Caramel bunnies', 'B'),
('Which popular Easter candy comes in a small, egg-shaped form?', 'M&M’s', 'Skittles', 'Cadbury Crème Eggs', 'Gummy Bears', 'C'),
('Which U.S. city holds an annual Easter Egg Roll at the White House?', 'New York', 'Washington, D.C.', 'Los Angeles', 'Chicago', 'B'),
('What is the name of the popular game where children roll eggs down a hill on Easter?', 'Egg Toss', 'Egg Roll', 'Egg Hunt', 'Egg Smash', 'B'),
('Which of these Easter-related activities was first introduced by the early Christians?', 'Easter egg painting', 'Easter egg hunting', 'The Easter parade', 'The Easter sunrise service', 'D'),
('What is a common game played during Easter egg hunts in which the egg is rolled or tossed?', 'Egg Toss', 'Egg Toss Relay', 'Egg Balance', 'Egg Drop Challenge', 'A'),
('What event does Easter celebrate in Christian tradition?', 'The birth of Jesus Christ', 'The resurrection of Jesus Christ', 'The baptism of Jesus Christ', 'The Last Supper', 'B'),
('Which animal is said to lay eggs on Easter in some traditions?', 'Chicken', 'Duck', 'Rabbit', 'Parrot', 'A'),
('Which country is known for the tradition of the "Easter Fire" to celebrate the holiday?', 'United Kingdom', 'Germany', 'United States', 'Spain', 'B'),
('What type of tree is traditionally decorated during Easter in some cultures?', 'Palm tree', 'Easter tree', 'Apple tree', 'Cherry tree', 'B'),
('What is the name of the holiday that marks the beginning of the Easter season?', 'Ash Wednesday', 'Palm Sunday', 'Good Friday', 'Lent', 'A'),
('Which of the following is a common theme used for Easter egg designs?', 'Halloween characters', 'Christmas trees', 'Spring flowers', 'Halloween pumpkins', 'C'),
('In the United Kingdom, what is the traditional treat served on Easter Sunday?', 'Hot cross buns', 'Mince pies', 'Christmas pudding', 'Scones', 'A'),
('Which of the following is a traditional Easter parade city?', 'New York City', 'Paris', 'London', 'Tokyo', 'A'),
('Which of these chocolate brands is famous for making Easter eggs?', 'Lindt', 'Hershey’s', 'Ferrero Rocher', 'Cadbury', 'D'),
('Which animal is associated with Easter in the sense of bringing candy and eggs?', 'Rooster', 'Rabbit', 'Chicken', 'Fox', 'B'),
('What food is traditionally eaten during Easter dinner in many cultures?', 'Turkey', 'Ham', 'Roast beef', 'Chicken', 'B');



CREATE TABLE NewYear (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option ENUM('A', 'B', 'C', 'D') NOT NULL
);
INSERT INTO NewYear (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('What is the most common New Year’s resolution made by people?', 'Travel more', 'Lose weight', 'Learn a new language', 'Save money', 'B'),
('Which of these is a common goal related to health for New Year’s resolutions?', 'Exercise more', 'Drink more soda', 'Sleep less', 'Eat more junk food', 'A'),
('Which of the following is a common New Year’s resolution related to personal growth?', 'Stop reading books', 'Spend more time on social media', 'Learn a new skill', 'Watch more TV', 'C'),
('What is the main purpose of making New Year’s resolutions?', 'To make impossible promises', 'To set achievable goals and create positive changes', 'To make others proud', 'To avoid commitments', 'B'),
('Which of the following is the least common New Year’s resolution?', 'Quit smoking', 'Spend more time with family', 'Visit new countries', 'Watch more Netflix', 'D'),
('What percentage of people typically give up on their New Year’s resolutions by February?', '25%', '50%', '70%', '80%', 'B'),
('Which of these goals is most commonly linked with New Year’s resolutions related to money?', 'Buy a new car', 'Travel more', 'Save more money', 'Spend on luxury items', 'C'),
('What type of resolutions are most people likely to focus on in the first month of the year?', 'Social goals', 'Career advancement goals', 'Health and fitness goals', 'Financial goals', 'C'),
('Which of the following is a good tip for sticking to your New Year’s resolutions?', 'Make them vague and non-specific', 'Set smaller, more attainable goals', 'Avoid telling anyone about them', 'Focus on resolutions you don’t care about', 'B'),
('What is a common resolution related to relationships?', 'Avoid friends and family', 'Be more social and spend quality time with loved ones', 'Cut off all social media', 'Stay alone more', 'B'),
('Which New Year’s resolution is commonly associated with increasing productivity?', 'Procrastinate less', 'Sleep more', 'Take more breaks', 'Work longer hours', 'A'),
('Which of the following is a common resolution for people who want to reduce stress?', 'Work harder', 'Take up yoga or meditation', 'Increase caffeine consumption', 'Spend more time on social media', 'B'),
('What year did the tradition of New Year’s resolutions start?', '1000 BC', '500 BC', '1582', '1850', 'B'),
('What is a common New Year’s resolution related to work or career?', 'Change careers', 'Improve time management skills', 'Take more vacations', 'Work fewer hours', 'B'),
('Which of these is a healthy eating-related New Year’s resolution?', 'Eat more fast food', 'Eat more fruits and vegetables', 'Skip meals', 'Avoid all sugar', 'B'),
('Which of these is a positive financial resolution people might make?', 'Spend more money on luxury items', 'Cut out all fun activities', 'Create and stick to a budget', 'Borrow more money from others', 'C'),
('Which of the following is a common resolution for people who want to improve their mental well-being?', 'Read more books', 'Stay in bed all day', 'Spend less time with others', 'Ignore feelings and emotions', 'A'),
('Which of the following is considered a “bad” New Year’s resolution?', 'Be more patient', 'Get fit', 'Set unrealistic expectations', 'Save money', 'C'),
('Which of these is a resolution related to environmental impact?', 'Recycle more', 'Buy more plastic products', 'Drive more frequently', 'Use more disposable products', 'A'),
('Which popular resolution could help improve one\'s sleep quality?', 'Go to bed later', 'Sleep fewer hours', 'Sleep on a more consistent schedule', 'Avoid sleep altogether', 'C'),
('What is a common New Year’s resolution for students or those in education?', 'Procrastinate more', 'Study harder and get better grades', 'Skip class more often', 'Take more breaks during study sessions', 'B'),
('Which of the following is a social resolution some people make?', 'Talk less', 'Spend more time alone', 'Be more kind and compassionate', 'Avoid meeting new people', 'C'),
('Which of these is NOT a typical New Year’s resolution?', 'Start a new hobby', 'Quit smoking', 'Sleep more', 'Break all relationships', 'D'),
('Which of the following is often suggested to help people achieve their New Year’s resolutions?', 'Set a deadline for completion', 'Keep it a secret', 'Make it vague', 'Set no goals', 'A'),
('Which is the best strategy for maintaining a New Year’s resolution?', 'Give up after a few failures', 'Monitor progress regularly', 'Avoid sharing goals with anyone', 'Wait for motivation to come naturally', 'B');
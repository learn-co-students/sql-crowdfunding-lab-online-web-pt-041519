INSERT INTO users(name,age) VALUES("Harry", 11);
INSERT INTO users(name,age) VALUES("Hermione", 11);
INSERT INTO users(name,age) VALUES("Ron", 11);
INSERT INTO users(name,age) VALUES("Ginny", 9);
INSERT INTO users(name,age) VALUES("Fred", 14);
INSERT INTO users(name,age) VALUES("George", 14);
INSERT INTO users(name,age) VALUES("Bill", 20);
INSERT INTO users(name,age) VALUES("Percy", 18);
INSERT INTO users(name,age) VALUES("Cho", 12);
INSERT INTO users(name,age) VALUES("Cedric", 13);
INSERT INTO users(name,age) VALUES("Dean", 11);
INSERT INTO users(name,age) VALUES("Snape", 36);
INSERT INTO users(name,age) VALUES("Lupin", 37);
INSERT INTO users(name,age) VALUES("Sirius", 37);
INSERT INTO users(name,age) VALUES("Draco", 12);
INSERT INTO users(name,age) VALUES("Luna", 11);
INSERT INTO users(name,age) VALUES("Voldy", 100);
INSERT INTO users(name,age) VALUES("Dumbledore", 200);
INSERT INTO users(name,age) VALUES("Goyle", 11);
INSERT INTO users(name,age) VALUES("Crabbie", 11);

INSERT INTO projects(title,category,funding_goal,start_date,end_date) VALUES
("Houses for Orphanes","charity",1000.00,"09-10-2020", "10-10-2020"),
("Books for kids","charity",2000.00,"06-01-2019","12-01-2020"),
("Learn how to learn","books",500.00,"10-20-1990","08-09-1995"),
("SLYTHERIN ROCK","music", 10000.00,"11-23-2000","12-02-2001"),
("Snape Shampoo","beauty",5000.00,"09-03-1970","09-20-1970"),
("ABC", "books", 100.00,"03-09-2019","04-07-2026"),
("Love spell","potions", 8000.00,"10-30-2020","10-20-2021"),
("Clothes for elves","charity",200.00,"06-01-2019","12-01-2020"),
("Every Flavor Frogs","food", 6000.00, "06-04-2019","06-04-2020"),
("WereWolfs Snacks", "food", 1200.20,"02-04-1980","10-20-1990");

INSERT INTO pledges(amount,project_id,user_id) VALUES
(10000.00,1,1),
(125.00,4,19),
(125.00,4,20),
(1000.00,2,2),
(1000.00,3,2),
(500.00,6,2),
(200.00,5,19),
(200.00,5,20),
(6000.00,5,15),
(10.00,4,15),
(1200.00,8,2),
(1000.00,8,3),
(5000.00,8,1),
(500.00,8,4),
(4000.00,1,4),
(2000.00,20,1),
(1200.00,20,13),
(6000.00,20,14),
(3000.00,19,18),
(5000.70,4,17),
(20.00,20,16),
(1200.00,7,9),
(6.00,7,16),
(3600.00,3,8),
(3500.25,2,11),
(3000.00,10,5),
(3200.00,10,6),
(600.00,9,5),
(7000.00,9,18),
(5000.70,10,18);

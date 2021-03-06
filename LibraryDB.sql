CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE member (
        member_id int(10) NOT NULL AUTO_INCREMENT,
        roles varchar(6) NOT NULL,
        first_name varchar(20) NOT NULL,
        last_name varchar(20) NOT NULL,
        user_name varchar(50) NOT NULL,
        password varchar(50) NOT NULL,
        address_line_1 varchar(50) not null,
        address_line_2 varchar(50) not null,
        city varchar(25) NOT NULL,
        state varchar(2) NOT NULL,
        zip int(5) NOT NULL,
        start_date date NOT NULL,
        email varchar(50) NOT NULL,
        phone_number varchar(16) NOT NULL,
        PRIMARY KEY (member_id))
    ENGINE=MyISAM;

INSERT INTO member (member_id, roles, first_name, last_name, user_name, password, address_line_1, address_line_2, city, state, zip, start_date, email, phone_number) VALUES
    (10000, 'admin', 'Ethan', 'Larsen', 'elarsen', 'c9adf19fa02c68697932be19deedbb2b', '123 Easy Street', NULL, 'Salt Lake City', 'UT', 84123, '2020-04-09', 'ethan.larsen@gmail.com', '8017215003'),
    (10001, 'admin', 'Chandler', 'Braddley', 'cbraddley', 'root', '567 Some Street', NULL, 'Salt Lake City', 'UT', 84123, '2020-04-09', 'Chandler.Braddley@gmail.com', '8014253625'),
    (10002, 'admin', 'Tamsen', 'Reid', 'treid', 'root', 'River Heights', NULL, 'South Jordan', 'UT', 84095, '2020-04-09', 'Tamsen.Reid@gmail.com', '8017215232'),
    (10003, 'admin', 'Dustin', 'Fife', 'dfife', 'root', 'Oak Drive', NULL, 'Sandy', 'UT', 84123, '2020-04-09', 'Dustin.Fife@gmail.com', '5627524603'),
    (10004, 'member', 'Rudy', 'Gobert', 'rgobert', 'root', 'Maple Avenue', NULL, 'Cottonwood Heights', 'UT', 84635, '2020-04-03', 'Rudy.Gobert@gmail.com', '8018426325'),
    (10005, 'member', 'Mike', 'Conley', 'mconley', 'root', 'Cherry Street', NULL, 'Draper', 'UT', 84526, '2020-04-02', 'Mike.Conley@gmail.com', '8015632462'),
    (10006, 'member', 'Bowser', 'Boss', 'bboss', 'c9adf19fa02c68697932be19deedbb2b', 'Dogwood Lane', NULL, 'Herriman', 'UT', 84856, '2020-04-01', 'Bowser.Boss@gmail.com', '8013698562'),
    (10007, 'member', 'Peach', 'Princess', 'pprincess', 'root', 'Applewood Row', NULL, 'Riverton', 'UT', 84452, '2020-04-01', 'Princess.Peach@gmail.com', '8015236526'),
    (10008, 'member', 'Mario', 'Plumber', 'mplumber', 'root', 'Mario Street', NULL, 'Layton', 'UT', 84953, '2020-04-05', 'Mario.Plumber@gmail.com', '8017536985'),
    (10009, 'member', 'Lugi', 'Plumber', 'lplumber', 'root', 'Lugi Street', NULL, 'Hooper', 'UT', 84456, '2020-04-06', 'Lugi.Plumber@gmail.com', '8017856324'),
    (10010, 'admin', 'Jeff', 'Larsen', 'elarsen', 'c9adf19fa02c68697932be19deedbb2b', '123 Easy Street', NULL, 'Salt Lake City', 'UT', 84123, '2020-04-09', 'Jeff.larsen@gmail.com', '8017215003'),
    (10011, 'admin', 'Susy', 'Braddley', 'cbraddley', 'root', '567 Some Street', NULL, 'Salt Lake City', 'UT', 84123, '2020-04-09', 'Susy.Braddley@gmail.com', '8014253625'),
    (10012, 'admin', 'Allen', 'Reid', 'treid', 'root', 'River Heights', NULL, 'South Jordan', 'UT', 84095, '2020-04-09', 'Allen.Reid@gmail.com', '8017215232'),
    (10013, 'admin', 'Layne', 'Fife', 'dfife', 'root', 'Oak Drive', NULL, 'Sandy', 'UT', 84123, '2020-04-09', 'Layne.Fife@gmail.com', '5627524603'),
    (10014, 'member', 'Alfred', 'Gobert', 'rgobert', 'root', 'Maple Avenue', NULL, 'Cottonwood Heights', 'UT', 84635, '2020-04-03', 'Alfred.Gobert@gmail.com', '8018426325'),
    (10015, 'member', 'Jake', 'Conley', 'mconley', 'root', 'Cherry Street', NULL, 'Draper', 'UT', 84526, '2020-04-02', 'Aaron.Conley@gmail.com', '8015632462'),
    (10016, 'member', 'Aaron', 'Boss', 'bboss', 'c9adf19fa02c68697932be19deedbb2b', 'Dogwood Lane', NULL, 'Herriman', 'UT', 84856, '2020-04-01', 'Bowser.Boss@gmail.com', '8013698562'),
    (10017, 'member', 'Eric', 'Princess', 'pprincess', 'root', 'Applewood Row', NULL, 'Riverton', 'UT', 84452, '2020-04-01', 'Eric.Peach@gmail.com', '8015236526'),
    (10018, 'member', 'Kody', 'Plumber', 'mplumber', 'root', 'Mario Street', NULL, 'Layton', 'UT', 84953, '2020-04-05', 'Kody.Plumber@gmail.com', '8017536985'),
    (10019, 'member', 'Luke', 'Plumber', 'lplumber', 'root', 'Lugi Street', NULL, 'Hooper', 'UT', 84456, '2020-04-06', 'Luke.Plumber@gmail.com', '8017856324');
    
CREATE TABLE library (
    library_id int(10) NOT NULL AUTO_INCREMENT,
    street varchar(50) NOT NULL,
    city varchar(50) NOT NULL,
    state varchar(2) NOT NULL,
    zip varchar(5) NOT NULL,
    open_hour int(4) NOT NULL,
    close_hour int(4) NOT NULL,
    PRIMARY KEY (library_id)
);

INSERT INTO library (library_id, street, city, state, zip, open_hour, close_hour) VALUES
    (001, '808 Main Street 400 S', 'Salt Lake City', 'UT', 84123, 0080, 1800);

CREATE TABLE book (
    book_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    isbn varchar(50) NOT NULL,
    publisher varchar(50) NOT NULL,
    publisher_date date NOT NULL,
    author varchar(50) NOT NULL,
    genre varchar(25) NOT NULL,
    PRIMARY KEY (book_id),
    KEY inventory_fk (item_id)
);

INSERT INTO book (book_id, item_id, item_description, item_type, isbn, publisher, publisher_date, author, genre) VALUES
    (100, 1000,'Java A Beginners Guide Sixth Edition', 'book', '978-0-07-180925-2', 'Oracle Press', '2014-01-01', 'Hebert Schildt', 'education'),
    (101, 1001,'Java A Beginners Guide Sixth Edition', 'book', '978-0-07-180925-2', 'Oracle Press', '2014-01-01', 'Hebert Schildt', 'education'),
    (102, 1002,'OCA Oracle Database 12c SQL Fundamentals', 'book', '978-0-07-182028-8', 'Oracle Press', '2014-01-01', 'Roopesh Ramklass', 'education'),
    (103, 1003,'OCA Oracle Database 12c SQL Fundamentals', 'book', '978-0-07-182028-8', 'Oracle Press', '2014-01-01', 'Roopesh Ramklass', 'education'),
    (104, 1004,'CompTIA Network+ Guide to Networks', 'book', '978-1-305-09094-1', 'Cengage Learning', '2016-01-01', 'Jill West', 'education'),
    (105, 1005,'CompTIA Network+ Guide to Networks', 'book', '978-1-305-09094-1', 'Cengage Learning', '2016-01-01', 'Jill West', 'education'),
    (106, 1006,'Python Crash Course', 'book', '978-1-59327-928-8', 'no starch press', '2019-01-01', 'Eric Matthes', 'education'),
    (107, 1007,'Python Crash Course', 'book', '978-1-59327-928-8', 'no starch press', '2019-01-01', 'Eric Matthes', 'education'),
    (108, 1008,'Modern Database MANAGEMENT', 'book', '978-93-868-7326-2', 'Pearson', '2016-01-01', 'Jeffrey A. Hoffer', 'education'),
    (109, 1009,'Modern Database MANAGEMENT', 'book', '978-93-868-7326-2', 'Pearson', '2016-01-01', 'Jeffrey A. Hoffer', 'education'),
    (110, 1010,'Cat and the Hat', 'book', '978-0-07-134679-2', 'Oracle Press', '2014-01-01', 'Hebert Schildt', 'education'),
    (111, 1011,'Cat and the Hat', 'book', '978-0-07-134679-2', 'Oracle Press', '2014-01-01', 'Hebert Schildt', 'education'),
    (112, 1012,'Jane and Joe', 'book', '978-0-07-136524-8', 'Oracle Press', '2014-01-01', 'Roopesh Ramklass', 'education'),
    (113, 1013,'Jane and Joe', 'book', '978-0-07-136524-8', 'Oracle Press', '2014-01-01', 'Roopesh Ramklass', 'education'),
    (114, 1014,'How to Make Friends and Keep Them', 'book', '978-1-305-963258-1', 'Cengage Learning', '2016-01-01', 'Jill West', 'education'),
    (115, 1015,'How to Make Friends and Keep Them', 'book', '978-1-305-963258-1', 'Cengage Learning', '2016-01-01', 'Jill West', 'education'),
    (116, 1016,'So Much SQL...', 'book', '978-1-43169-928-8', 'no starch press', '2019-01-01', 'Eric Matthes', 'education'),
    (117, 1017,'So Much SQL...', 'book', '978-1-43169-928-8', 'no starch press', '2019-01-01', 'Eric Matthes', 'education'),
    (118, 1018,'This is My Last Class', 'book', '978-63-868-4362-2', 'Pearson', '2016-01-01', 'Jeffrey A. Hoffer', 'education'),
    (119, 1019,'This is My Last Class', 'book', '978-74-868-4362-2', 'Pearson', '2016-01-01', 'Jeffrey A. Hoffer', 'education');

CREATE TABLE audiobook (
    audiobook_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    publisher varchar(50) NOT NULL,
    publisher_date date NOT NULL,
    author varchar(50) NOT NULL,
    genre varchar(25) NOT NULL,
    PRIMARY KEY (audiobook_id),
    KEY inventory_fk (item_id)
);

INSERT INTO audiobook (audiobook_id, item_id, item_description, item_type, publisher, publisher_date, author, genre) VALUES
    (200, 1020, 'The Institute', 'audiobook', 'Simon & Schuster Audio', '2019-09-01', 'Stephen King', 'fiction'),
    (201, 1021, 'The Institute', 'audiobook', 'Simon & Schuster Audio', '2019-09-01', 'Stephen King', 'fiction'),
    (203, 1022, 'Becoming', 'audiobook', 'Random House', '2018-11-01', 'Michelle Obama', 'Biography'),
    (204, 1023, 'Becoming', 'audiobook', 'Random House', '2018-11-01', 'Michelle Obama', 'Biography'),
    (205, 1024, 'The Subtle Art of Not Giving a F*ck', 'audiobook', 'HarperAudio', '2016-09-01', 'Mark Manson', 'self help'),
    (206, 1025, 'The Subtle Art of Not Giving a F*ck', 'audiobook', 'HarperAudio', '2016-09-01', 'Mark Manson', 'self help'),
    (207, 1026, 'Where the Crawdads Sing', 'audiobook', 'Penguin Audio', '2018-08-03', 'Ashley Owens', 'fiction'),
    (208, 1027, 'Where the Crawdads Sing', 'audiobook', 'Penguin Audio', '2018-08-03', 'Ashley Owens', 'fiction'),
    (209, 1028, 'Untamed', 'audiobook', 'Random House', '2020-03-01', 'Mary Doyle', 'biography'),
    (210, 1029, 'Untamed', 'audiobook', 'Random House', '2020-03-01', 'Mary Doyle', 'biography'),
    (211, 1030, 'Farmwork Fun', 'audiobook', 'Simon & Schuster Audio', '2019-09-02', 'Lewis King', 'fiction'),
    (212, 1031, 'Farmwork Fun', 'audiobook', 'Simon & Schuster Audio', '2019-09-02', 'Lewis King', 'fiction'),
    (213, 1032, 'All About Nothing', 'audiobook', 'Random House', '2018-11-01', 'Jane Obama', 'Biography'),
    (214, 1033, 'All About Nothing', 'audiobook', 'Random House', '2018-11-01', 'Jane Obama', 'Biography'),
    (215, 1034, 'Harry Potter', 'audiobook', 'HarperAudio', '2016-09-01', 'Mark Manson', 'self help'),
    (216, 1035, 'Harry Potter', 'audiobook', 'HarperAudio', '2016-09-01', 'Mark Manson', 'self help'),
    (217, 1036, 'Insert Audiobook Title Here', 'audiobook', 'Penguin Audio', '2018-08-01', 'Delia Owens', 'fiction'),
    (218, 1037, 'Insert Audiobook Title Here', 'audiobook', 'Penguin Audio', '2018-08-01', 'Delia Owens', 'fiction'),
    (219, 1038, 'Stuff and Things', 'audiobook', 'Random House', '2020-03-01', 'Glenndon Doyle', 'biography'),
    (220, 1039, 'Stuff and Things', 'audiobook', 'Random House', '2020-03-01', 'Glenndon Doyle', 'biography');

CREATE TABLE film (
    film_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    director varchar(50) NOT NULL,
    release_date date NOT NULL,
    genre varchar(25) NOT NULL,
    PRIMARY KEY (film_id),
    KEY inventory_fk (item_id)
);

INSERT INTO film (film_id, item_id, item_description, item_type, director, release_date, genre) VALUES
    (300, 1040, 'Ip Man 4: The Finale', 'film', 'Wilson Yip', '2019-01-01', 'action'),
    (301, 1041, 'Ip Man 4: The Finale', 'film', 'Wilson Yip', '2019-01-01', 'action'),
    (302, 1042, 'Jurassic Park', 'film', 'Steven Spielberg', '1993-01-01', 'action'),
    (303, 1043, 'Jurassic Park', 'film', 'Steven Spielberg', '1993-01-01', 'action'),
    (304, 1044, 'The Mask', 'film', 'Chuck Russell', '1994-01-01', 'comedy'),
    (305, 1045, 'The Mask', 'film', 'Chuck Russell', '1994-01-01', 'comedy'),
    (306, 1046, 'Zardoz', 'film', 'John Boorman', '1974-01-01', 'sci-fi'),
    (307, 1047, 'Zardoz', 'film', 'John Boorman', '1974-01-01', 'sci-fi'),
    (308, 1048, 'Doctor Sleep', 'film', 'Mike Flanagan', '2019-01-01', 'horror'),
    (309, 1049, 'Doctor Sleep', 'film', 'Mike Flanagan', '2019-01-01', 'horror'),
    (310, 1050, 'Frozen 2', 'film', 'Wilson Yip', '2019-01-01', 'action'),
    (311, 1051, 'Frozen 2', 'film', 'Wilson Yip', '2019-01-01', 'action'),
    (312, 1052, 'Jurassic Park 2', 'film', 'Steven Spielberg', '1993-01-01', 'action'),
    (313, 1053, 'Jurassic Park 2', 'film', 'Steven Spielberg', '1993-01-01', 'action'),
    (314, 1054, 'The Boat', 'film', 'Chuck Russell', '1994-01-01', 'comedy'),
    (315, 1055, 'The Boat', 'film', 'Chuck Russell', '1994-01-01', 'comedy'),
    (316, 1056, 'Frankenstein', 'film', 'John Boorman', '1974-01-01', 'sci-fi'),
    (317, 1057, 'Frankenstein', 'film', 'John Boorman', '1974-01-01', 'sci-fi'),
    (318, 1058, 'Doctor Awake', 'film', 'Mike Flanagan', '2019-01-01', 'horror'),
    (319, 1059, 'Doctor Awake', 'film', 'Mike Flanagan', '2019-01-01', 'horror');

CREATE TABLE magazine (
    magazine_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    publisher varchar(50) NOT NULL,
    publisher_date date NOT NULL,
    issue_number int(5),
    genre varchar(25),
    PRIMARY KEY (magazine_id),
    KEY inventory_fk (item_id)
);

INSERT INTO magazine (magazine_id, item_id, item_description, item_type, publisher, publisher_date, issue_number, genre) VALUES
    (400, 1060, 'People - The Untold Story of Tiger King', 'magazine', 'people', '2020-03-01', 1234, 'lifesytle'),
    (401, 1061, 'People - the Untold Story of Tiger King', 'magazine', 'people', '2020-03-01', 1234, 'lifestyle'),
    (402, 1062, 'Time - Special Report: Heros of the Front Lines', 'magazine', 'time', '2020-03-01', 2765, 'news'),
    (403, 1063, 'Time - Special Report: Heros of the Front Lines', 'magazine', 'time', '2020-03-01', 2765, 'news'),
    (404, 1064, 'Popular Mechanics - What Are You Building?', 'magazine', 'hearst magazines', '2020-03-01', 26548, 'mechanics'),
    (405, 1065, 'Popular Mechanics - What Are You Building?', 'magazine', 'hearst magazines', '2020-03-01', 26548, 'mechanics'),
    (406, 1066, 'Car and Driver - Teslas First Real Test', 'magazine', 'hearst magazines', '2020-03-01', 3623, 'automotive'),
    (407, 1067, 'Car and Driver - Teslas First Real Test', 'magazine', 'hearst magazines', '2020-03-01', 3623, 'automotive'),
    (408, 1068, 'Motor Trend - Super Hybrids', 'magazine', 'magazine express, inc', '2020-03-01', 65423, 'automotive'),
    (409, 1069, 'Motor Trend - Super Hybrids', 'magazine', 'magazine express, inc', '2020-03-01', 65423, 'automotive'),
    (410, 1070, 'People - Who the Hell Reads People?', 'magazine', 'people', '2020-03-01', 1232, 'lifesytle'),
    (411, 1071, 'People - Who the Hell Reads People?', 'magazine', 'people', '2020-03-01', 1232, 'lifestyle'),
    (412, 1072, 'Time - Really Sick of Staying Indoors All Day', 'magazine', 'time', '2020-03-02', 2784, 'news'),
    (413, 1073, 'Time - Really Sick of Staying Indoors All Day', 'magazine', 'time', '2020-03-02', 2784, 'news'),
    (414, 1074, 'Popular Mechanics - Build Stuff Bob', 'magazine', 'hearst magazines', '2020-03-01', 26549, 'mechanics'),
    (415, 1075, 'Popular Mechanics - Build Stuff Bob', 'magazine', 'hearst magazines', '2020-03-01', 26549, 'mechanics'),
    (416, 1076, "Car and Driver - Who is Driving These Days?", 'magazine', 'hearst magazines', '2020-03-01', 3622, 'automotive'),
    (417, 1077, "Car and Driver - Who is Driving These Days?", 'magazine', 'hearst magazines', '2020-03-01', 3622, 'automotive'),
    (418, 1078, 'Motor Trend - Vroom Vroom', 'magazine', 'magazine express, inc', '2020-03-01', 65422, 'automotive'),
    (419, 1079, 'Motor Trend - Vroom Vroom', 'magazine', 'magazine express, inc', '2020-03-01', 65422, 'automotive');

CREATE TABLE music (
    music_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    artist varchar(50) NOT NULL,
    album varchar(50) NOT NULL,
    genre varchar(25) NOT NULL,
    publisher_date date NOT NULL,
    PRIMARY KEY (music_id),
    KEY inventory_fk (item_id)
);

INSERT INTO music (music_id, item_id, item_description, item_type, artist, album, genre, publisher_date) VALUES
    (500, 1080, 'The Arcs - The Arcs vs. The Inventors Vol. I', 'music', 'The Arcs', 'The Arcs vs. The Inventors Vol. 1', 'rock', '2015-01-01'),
    (501, 1081, 'The Arcs - The Arcs vs. The Inventors Vol. I', 'music', 'The Arcs', 'The Arcs vs. The Inventors Vol. 1', 'rock', '2015-01-01'),
    (502, 1082, 'Axel Thesleff - The Hollow Men', 'music', 'Alex Thesleff', 'The Hollow Men', 'indie electronic', '2015-01-01'),
    (503, 1083, 'Axel Thesleff - The Hollow Men', 'music', 'Alex Thesleff', 'The Hollow Men', 'indie electronic', '2015-01-01'),
    (504, 1084, 'Billy Talent Hits', 'music', 'Billy Talent', 'Hits', 'rock', '2014-01-01'),
    (505, 1085, 'Billy Talent Hits', 'music', 'Billy Talent', 'Hits', 'rock', '2014-01-01'),
    (506, 1086, 'Chali 2na, Krafty Kuts - Adventures of a Reluctant Superhero', 'music', 'Chali 2na, Krafty Kuts', 'Adventures of a Reluctnat Superhero', 'rap', '2019-01-01'),
    (507, 1087, 'Chali 2na, Krafty Kuts - Adventures of a Reluctant Superhero', 'music', 'Chali 2na, Krafty Kuts', 'Adventures of a Reluctnat Superhero', 'rap', '2019-01-01'),
    (508, 1088, 'Flight Facilities - Down to Earth', 'music', 'Flight Facilities', 'Down to Earth', 'indie electronic', '2014-01-01'),
    (509, 1089, 'Flight Facilities - Down to Earth', 'music', 'Flight Facilities', 'Down to Earth', 'indie electronic', '2014-01-01'),    
    (510, 1090, 'Writings on the Wall', 'music', 'Destinys Child', 'Writings on the Wall', 'pop', '2015-01-01'),
    (511, 1091, 'Survivor', 'music', 'Destinys Child', 'Survivor', 'pop', '2015-01-01'),
    (512, 1092, 'Because I love You', 'music', 'Lizzo', 'Because I love You', 'pop', '2015-01-01'),
    (513, 1093, 'Big Girl Small World', 'music', 'Lizzo', 'Big Girl Small World', 'pop', '2015-01-01'),
    (514, 1094, 'Damn', 'music', 'Kendrick Lamar', 'Damn', 'rap', '2014-01-01'),
    (515, 1095, 'To Pimp A Butterfly', 'music', 'Kendrick Lamar', 'Damn', 'rap', '2014-01-01'),
    (516, 1096, 'KOD', 'music', 'J Cole', 'KOD', 'rap', '2019-01-01'),
    (517, 1097, 'Forest Hills Drive', 'music', 'J Cole', '2014 Forest Hills Drive', 'rap', '2019-01-01'),
    (518, 1098, 'For Your Eyes Only', 'music', 'J Cole', '4 Your Eyes Only', 'rap', '2014-01-01'),
    (519, 1099, 'Born Sinner', 'music', 'J Cole', 'Born Sinner', 'rap',  '2014-01-01');

CREATE TABLE equipment (
    equipment_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    equipment_type varchar(50) NOT NULL,
    purchase_date date NOT NULL,
    PRIMARY KEY (equipment_id),
    KEY inventory_fk (item_id)
);

INSERT INTO equipment (equipment_id, item_id, item_description, item_type, equipment_type, purchase_date) VALUES
    (600, 1100, 'Cable 6ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (601, 1101, 'Cable 6ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (602, 1102, 'Projector 4k', 'equipment', 'projector', '2020-04-01'),
    (603, 1103, 'Projector 4k', 'equipment', 'projector', '2020-04-01'),
    (604, 1104, 'Record Player Hi-Def', 'equipment', 'record player', '2020-04-01'),
    (605, 1105, 'Record Player Hi-Def', 'equipment', 'record player', '2020-04-01'),
    (606, 1106, 'Folding Chair Plastic', 'equipment', 'chair', '2020-04-01'),
    (607, 1107, 'Folding Chair Plastic', 'equipment', 'chair', '2020-04-01'),
    (608, 1108, 'Cable 12ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (609, 1109, 'Cable 12ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (610, 1110, 'Cable 20ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (611, 1111, 'Cable 20ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (612, 1112, 'Projector 5k', 'equipment', 'projector', '2020-04-01'),
    (613, 1113, 'Projector 5k', 'equipment', 'projector', '2020-04-01'),
    (614, 1114, 'Record Player Low-Def', 'equipment', 'record player', '2020-04-01'),
    (615, 1115, 'Record Player Low-Def', 'equipment', 'record player', '2020-04-01'),
    (616, 1116, 'Folding Chair Wood', 'equipment', 'chair', '2020-04-01'),
    (617, 1117, 'Folding Chair Wood', 'equipment', 'chair', '2020-04-01'),
    (618, 1118, 'Cable 20ft HDMI', 'equipment', 'cable', '2020-04-01'),
    (619, 1119, 'Cable 20ft HDMI', 'equipment', 'cable', '2020-04-01');







CREATE TABLE inventory (
    item_id int(10) NOT NULL AUTO_INCREMENT,
    item_description varchar(100) NOT NULL,
    item_type varchar(10) NOT NULL,
    copy_id int(10) NOT NULL,
    library_id int(10) NOT NULL,
    PRIMARY KEY (item_id),
    KEY copy_fk (copy_id),
    KEY library_fk (library_id)
);

INSERT INTO inventory (item_id, item_description, item_type, copy_id, library_id) VALUES
    (1000, 'Java A Beginners Guide Sixth Edition', 'book', 5000, 001),
    (1001, 'Java A Beginners Guide Sixth Edition', 'book', 5001, 001),
    (1002, 'OCA Oracle Database 12c SQL Fundamentals I Exam Guide', 'book', 5002, 001),
    (1003, 'OCA Oracle Database 12c SQL Fundamentals I Exam Guide', 'book', 5003, 001),
    (1004, 'CompTIA Network+ Guide to Networks', 'book', 5004, 001),
    (1005, 'CompTIA Network+ Guide to Networks', 'book', 5005, 001),
    (1006, 'Python Crash Course', 'book', 5006, 001),
    (1007, 'Python Crash Course', 'book', 5007, 001),
    (1008, 'Modern Database MANAGEMENT', 'book', 5008, 001),
    (1009, 'Modern Database MANAGEMENT', 'book', 5009, 001),
    (1010, 'Cat and the Hat', 'book', 5010, 001),
    (1011, 'Cat and the Hat', 'book', 5011, 001),
    (1012, 'Jane and Joe', 'book', 5012, 001),
    (1013, 'Jane and Joe', 'book', 5013, 001),
    (1014, 'How to Make Friends and Keep Them', 'book', 5014, 001),
    (1015, 'How to Make Friends and Keep Them', 'book', 5015, 001),
    (1016, 'So Much SQL...', 'book', 5016, 001),
    (1017, 'So Much SQL...', 'book', 5017, 001),
    (1018, 'This is My Last Class', 'book', 5018, 001),
    (1019, 'This is My Last Class', 'book', 5019, 001),

    (1020, 'The Institute', 'audiobook', 5020, 001),
    (1021, 'The Institute', 'audiobook', 5021, 001),
    (1022, 'Becoming', 'audiobook', 5022, 001),
    (1023, 'Becoming', 'audiobook', 5023, 001),
    (1024, 'The Subtle Art of Not Giving a F*ck', 'audiobook', 5024, 001),
    (1025, 'The Subtle Art of Not Giving a F*ck', 'audiobook', 5025, 001),
    (1026, 'Where the Crawdads Sing', 'audiobook', 5026, 001),
    (1027, 'Where the Crawdads Sing', 'audiobook', 5027, 001),
    (1028, 'Untamed', 'audiobook', 5028, 001),
    (1029, 'Untamed', 'audiobook', 5029, 001),
    (1030, 'Farmwork Fun', 'audiobook', 5030, 001),
    (1031, 'Farmwork Fun', 'audiobook', 5030, 001),
    (1032, 'All About Nothing', 'audiobook', 5031, 001),
    (1033, 'All About Nothing', 'audiobook', 5032, 001),
    (1034, 'Harry Potter', 'audiobook', 5033, 001),
    (1035, 'Harry Potter', 'audiobook', 5034, 001),
    (1036, 'Insert Audiobook Title Here', 'audiobook', 5035, 001),
    (1037, 'Insert Audiobook Title Here', 'audiobook', 5036, 001),
    (1038, 'Stuff and Things', 'audiobook', 5037, 001),
    (1039, 'Stuff and Things', 'audiobook', 5038, 001),

    (1040, 'Ip Man 4: The Finale', 'film', 5040, 001),
    (1041, 'Ip Man 4: The Finale', 'film', 5041, 001),
    (1042, 'Jurassic Park', 'film', 5042, 001),
    (1043, 'Jurassic Park', 'film', 5043, 001),
    (1044, 'The Mask', 'film', 5044, 001),
    (1045, 'The Mask', 'film', 5045, 001),
    (1046, 'Zardoz', 'film', 5046, 001),
    (1047, 'Zardoz', 'film', 5047, 001),
    (1048, 'Doctor Sleep', 'film', 5048, 001),
    (1049, 'Doctor Sleep', 'film', 5049, 001),
    (1050, 'Frozen 2', 'film', 5050, 001),
    (1051, 'Frozen 2', 'film', 5051, 001),
    (1052, 'Jurassic Park 2', 'film', 5052, 001),
    (1053, 'Jurassic Park 2', 'film', 5053, 001),
    (1054, 'The Boat', 'film', 5054, 001),
    (1055, 'The Boat', 'film', 5055, 001),
    (1056, 'Frankenstein', 'film', 5056, 001),
    (1057, 'Frankenstein', 'film', 5057, 001),
    (1058, 'Doctor Awake', 'film', 5058, 001),
    (1059, 'Doctor Awake', 'film', 5059, 001),

    (1060, 'People - The Untold Story of Tiger King', 'magazine', 5060, 001),
    (1061, 'People - The Untold Story of Tiger King', 'magazine', 5061, 001),
    (1062, 'Time - Special Report: Heros of the Front Lines', 'magazine', 5062, 001),
    (1063, 'Time - Special Report: Heros of the Front Lines', 'magazine', 5063, 001),
    (1064, 'Popular Mechanics - What Are You Building?', 'magazine', 5064, 001),
    (1065, 'Popular Mechanics - What Are You Building?', 'magazine', 5065, 001),
    (1066, 'Car and Driver - Teslas First Real Test', 'magazine', 5066, 001),
    (1067, 'Car and Driver - Teslas First Real Test', 'magazine', 5067, 001),
    (1068, 'Motor Trend - Super Hybrids', 'magazine', 5068, 001),
    (1069, 'Motor Trend - Super Hybrids', 'magazine', 5069, 001),
    (1070, 'People - Who the Hell Reads People?', 'magazine', 5070, 001),
    (1071, 'People - Who the Hell Reads People?', 'magazine', 5071, 001),
    (1072, 'Time - Really Sick of Staying Indoors All Day', 'magazine', 5072, 001),
    (1073, 'Time - Really Sick of Staying Indoors All Day', 'magazine', 5073, 001),
    (1074, 'Popular Mechanics - Build Stuff Bob', 'magazine', 5074, 001),
    (1075, 'Popular Mechanics - Build Stuff Bob', 'magazine', 5075, 001),
    (1076, 'Car and Driver - Who is Driving These Days?', 'magazine', 5076, 001),
    (1077, 'Car and Driver - Who is Driving These Days?', 'magazine', 5077, 001),
    (1078, 'Motor Trend - Vroom Vroom', 'magazine', 5078, 001),
    (1079, 'Motor Trend - Vroom Vroom', 'magazine', 5079, 001),

    (1080, 'The Arcs - The Arcs vs. The Inventors Vol. I', 'music', 5080, 001),
    (1081, 'The Arcs - The Arcs vs. The Inventors Vol. I', 'music', 5081, 001),
    (1082, 'Axel Thesleff - The Hollow Men', 'music', 5082, 001),
    (1083, 'Axel Thesleff - The Hollow Men', 'music', 5083, 001),
    (1084, 'Billy Talent Hits', 'music', 5084, 001),
    (1085, 'Billy Talent Hits', 'music', 5085, 001),
    (1086, 'Chali 2na, Krafty Kuts - Adventures of a Reluctant Superhero', 'music', 5086, 001),
    (1087, 'Chali 2na, Krafty Kuts - Adventures of a Reluctant Superhero', 'music', 5087, 001),
    (1088, 'Flight Facilities - Down to Earth', 'music', 5088, 001),
    (1089, 'Flight Facilities - Down to Earth', 'music', 5089, 001),
    (1090, 'Writings on the Wall', 'music', 5090, 001),
    (1091, 'Survivor', 'music', 5091, 001),
    (1092, 'Because I love You', 'music', 5092, 001),
    (1093, 'Big Girl Small World', 'music', 5093, 001),
    (1094, 'Damn', 'music', 5094, 001),
    (1095, 'To Pimp A Butterfly', 'music', 5095, 001),
    (1096, 'KOD', 'music', 5096, 001),
    (1097, 'Forest Hills Drive', 'music', 5097, 001),
    (1098, 'For Your Eyes Only', 'music', 5098, 001),
    (1099, 'Born Sinner', 'music', 5099, 001),

    (1100, 'Cable 6ft HDMI', 'equipment', 5100, 001),
    (1101, 'Cable 6ft HDMI', 'equipment', 5101, 001),
    (1102, 'Projector 4k', 'equipment', 5102, 001),
    (1103, 'Projector 4k', 'equipment', 5103, 001),
    (1104, 'Record Player Hi-Def', 'equipment', 5104, 001),
    (1105, 'Record Player Hi-Def', 'equipment', 5105, 001),
    (1106, 'Folding Chair Plastic', 'equipment', 5106, 001),
    (1107, 'Folding Chair Plastic', 'equipment', 5107, 001),
    (1108, 'Cable 12ft HDMI', 'equipment', 5108, 001),
    (1109, 'Cable 12ft HDMI', 'equipment', 5109, 001),
    (1110, 'Cable 20ft HDMI', 'equipment', 5110, 001),
    (1111, 'Cable 20ft HDMI', 'equipment', 5111, 001),
    (1112, 'Projector 5k', 'equipment', 5112, 001),
    (1113, 'Projector 5k', 'equipment', 5113, 001),
    (1114, 'Record Player Low-Def', 'equipment', 5114, 001),
    (1115, 'Record Player Low-Def', 'equipment', 5115, 001),
    (1116, 'Folding Chair Wood', 'equipment', 5116, 001),
    (1117, 'Folding Chair Wood', 'equipment', 5117, 001),
    (1118, 'Cable 20ft HDMI', 'equipment', 5118, 001),
    (1119, 'Cable 20ft HDMI', 'equipment', 5119, 001);





CREATE TABLE copy (
    copy_id int(10) NOT NULL AUTO_INCREMENT,
    item_id int(10) NOT NULL,
    library_id int(10) NOT NULL,
    copy_condition varchar(10) NOT NULL,
    checkout_status varchar(12) NOT NULL,
    member_id int(10),
    checkout_date date,
    PRIMARY KEY (copy_id),
    KEY inventory_fk (item_id),
    KEY library_fk (library_id),
    KEY member_fk (member_id)
);

INSERT INTO copy (copy_id,item_id, library_id, copy_condition, checkout_status, member_id, checkout_date) VALUES
    (5000, 1000, 001, 'new', 'checked out', 10000, '2020-04-12'),
    (5001, 1001, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5002, 1002, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5003, 1003, 001, 'new', 'checked out', 10001, '2020-04-11'),
    (5004, 1004, 001, 'used', 'checked out', 10002, '2020-04-10'),
    (5005, 1005, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5006, 1006, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5007, 1007, 001, 'new', 'checked out', 10003, '2020-04-03'),
    (5008, 1008, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5009, 1009, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5010, 1010, 001, 'new', 'checked out', 10004, '2020-04-12'),
    (5011, 1011, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5012, 1012, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5013, 1013, 001, 'new', 'checked out', 10005, '2020-04-11'),
    (5014, 1014, 001, 'used', 'checked out', 10006, '2020-04-10'),
    (5015, 1015, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5016, 1016, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5017, 1017, 001, 'new', 'checked out', 10007, '2020-04-03'),
    (5018, 1018, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5019, 1019, 001, 'new', 'in stock', NULL, '2020-04-01'),

    (5020, 1020, 001, 'new', 'checked out', 10008, '2020-04-12'),
    (5021, 1021, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5022, 1022, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5023, 1023, 001, 'new', 'checked out', 10009, '2020-04-11'),
    (5024, 1024, 001, 'used', 'checked out', 10010, '2020-04-10'),
    (5025, 1025, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5026, 1026, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5027, 1027, 001, 'new', 'checked out', 10011, '2020-04-03'),
    (5028, 1028, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5029, 1029, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5030, 1030, 001, 'new', 'checked out', 10012, '2020-04-12'),
    (5031, 1031, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5032, 1032, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5033, 1033, 001, 'new', 'checked out', 10013, '2020-04-11'),
    (5034, 1034, 001, 'used', 'checked out', 10014, '2020-04-10'),
    (5035, 1035, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5036, 1036, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5037, 1037, 001, 'new', 'checked out', 10015, '2020-04-03'),
    (5038, 1038, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5039, 1039, 001, 'new', 'in stock', NULL, '2020-04-01'),

    (5040, 1040, 001, 'new', 'checked out', 10016, '2020-04-12'),
    (5041, 1041, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5042, 1042, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5043, 1043, 001, 'new', 'checked out', 10017, '2020-04-11'),
    (5044, 1044, 001, 'used', 'checked out', 10018, '2020-04-10'),
    (5045, 1045, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5046, 1046, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5047, 1047, 001, 'new', 'checked out', 10019, '2020-04-03'),
    (5048, 1048, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5049, 1049, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5050, 1050, 001, 'new', 'checked out', 10000, '2020-04-12'),
    (5051, 1051, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5052, 1052, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5053, 1053, 001, 'new', 'checked out', 10001, '2020-04-11'),
    (5054, 1054, 001, 'used', 'checked out', 10002, '2020-04-10'),
    (5055, 1055, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5056, 1056, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5057, 1057, 001, 'new', 'checked out', 10003, '2020-04-03'),
    (5058, 1058, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5059, 1059, 001, 'new', 'in stock', NULL, '2020-04-01'),

    (5060, 1060, 001, 'new', 'checked out', 10004, '2020-04-12'),
    (5061, 1061, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5062, 1062, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5063, 1063, 001, 'new', 'checked out', 10005, '2020-04-11'),
    (5064, 1064, 001, 'used', 'checked out', 10006, '2020-04-10'),
    (5065, 1065, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5066, 1066, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5067, 1067, 001, 'new', 'checked out', 10007, '2020-04-03'),
    (5068, 1068, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5069, 1069, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5070, 1070, 001, 'new', 'checked out', 10008, '2020-04-12'),
    (5071, 1071, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5072, 1072, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5073, 1073, 001, 'new', 'checked out', 10009, '2020-04-11'),
    (5074, 1074, 001, 'used', 'checked out', 10010, '2020-04-10'),
    (5075, 1075, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5076, 1076, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5077, 1077, 001, 'new', 'checked out', 10011, '2020-04-03'),
    (5078, 1078, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5079, 1079, 001, 'new', 'in stock', NULL, '2020-04-01'),

    (5080, 1080, 001, 'new', 'checked out', 10012, '2020-04-12'),
    (5081, 1081, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5082, 1082, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5083, 1083, 001, 'new', 'checked out', 10013, '2020-04-11'),
    (5084, 1084, 001, 'used', 'checked out', 10014, '2020-04-10'),
    (5085, 1085, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5086, 1086, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5087, 1087, 001, 'new', 'checked out', 10015, '2020-04-03'),
    (5088, 1088, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5089, 1089, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5090, 1090, 001, 'new', 'checked out', 10016, '2020-04-12'),
    (5091, 1091, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5092, 1092, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5093, 1093, 001, 'new', 'checked out', 10017, '2020-04-11'),
    (5094, 1094, 001, 'used', 'checked out', 10018, '2020-04-10'),
    (5095, 1095, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5096, 1096, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5097, 1097, 001, 'new', 'checked out', 10019, '2020-04-03'),
    (5098, 1098, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5099, 1099, 001, 'new', 'in stock', NULL, '2020-04-01'),

    (5100, 1100, 001, 'new', 'checked out', 10000, '2020-04-12'),
    (5101, 1101, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5102, 1102, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5103, 1103, 001, 'new', 'checked out', 10001, '2020-04-11'),
    (5104, 1104, 001, 'used', 'checked out', 10002, '2020-04-10'),
    (5105, 1105, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5106, 1106, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5107, 1107, 001, 'new', 'checked out', 10003, '2020-04-03'),
    (5108, 1108, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5109, 1109, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5110, 1110, 001, 'new', 'checked out', 10004, '2020-04-12'),
    (5111, 1111, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5112, 1112, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5113, 1113, 001, 'new', 'checked out', 10005, '2020-04-11'),
    (5114, 1114, 001, 'used', 'checked out', 10006, '2020-04-10'),
    (5115, 1115, 001, 'new', 'in stock', NULL, '2020-04-01'),
    (5116, 1116, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5117, 1117, 001, 'new', 'checked out', 10007, '2020-04-03'),
    (5118, 1118, 001, 'used', 'in stock', NULL, '2020-04-01'),
    (5119, 1119, 001, 'new', 'in stock', NULL, '2020-04-01');



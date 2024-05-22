CREATE TABLE roles(
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO roles(role_name)
VALUES
    ('Head of Department'),
    ('Teacher');

CREATE TABLE department(
    dep_id SERIAL PRIMARY KEY,
    dep_name VARCHAR(50) UNIQUE NOT NULL,
    dep_academic BOOLEAN
);

INSERT INTO department(dep_name, dep_academic)
VALUES
    ('Mathematics', '1'),
    ('Computing', '1'),
    ('Humanities', '1'),
    ('Arts', '1'),
    ('HR', '0'),
    ('Finance', '0');


CREATE TABLE staff_members (
    staff_id SERIAL PRIMARY KEY,
    dep_id INT,
    role_id INT,
    staff_fname VARCHAR(50) NOT NULL,
    staff_lname VARCHAR(50) NOT NULL,
    staff_email VARCHAR(50) UNIQUE NOT NULL,
    staff_phoneno VARCHAR(11) UNIQUE NOT NULL,
    staff_postcode VARCHAR(50) NOT NULL,
    staff_city VARCHAR(50) NOT NULL,
    FOREIGN KEY (dep_id) REFERENCES department (dep_id),
    FOREIGN KEY (role_id) REFERENCES roles (role_id),
    CONSTRAINT unique_staff_name UNIQUE (staff_fname, staff_lname)
);

INSERT INTO staff_members (dep_id,role_id, staff_fname, staff_lname, staff_email, staff_phoneno, staff_postcode, staff_city)
VALUES
  (4,1,'Brent','Montoya','montoyabrent4806@aol.edu','01648662285','H8 9YE','Southampton'),
  (3,1,'Nina','Mcintosh','nina.mcintosh7122@outlook.com','03241937733','BC3 6LL','Llanwrtwd Wells'),
  (5,1,'Drew','Quinn','quinndrew3987@google.net','06279278828','V5L 2NH','Beaumaris'),
  (4,2,'Flynn','Wall','wall.flynn@protonmail.net','04111325318','T5 0UW','Bromyard'),
  (3,1,'Shafira','Collier','c_shafira616@outlook.org','08262481540','ZN5 3MO','Wolverhampton'),
  (2,1,'Marshall','Vaughan','vaughan.marshall@google.org','04847683987','OU7 3BV','Lockerbie'),
  (3,1,'Mia','Rivas','m.rivas@aol.edu','04471711278','QS6 6SW','Gloucester'),
  (4,2,'Paki','Marquez','pmarquez@protonmail.com','07648346134','TQ2 8MV','Stevenage'),
  (5,2,'Risa','Cole','r-cole@outlook.couk','06211780747','ED7R 1GY','Durham'),
  (2,2,'Ethan','Henry','ethanhenry@hotmail.com','08926175260','WR6P 2UN','Kettering'),
  (6,2,'Bianca','Ayers','biancaayers9236@google.com','07175288478','QM86 8FQ','Harrogate'),
  (5,1,'Kyle','Mcbride','kyle.mcbride@protonmail.ca','06246721885','M46 8XT','Cheltenham'),
  (1,1,'Clark','Leach','leach-clark2551@yahoo.org','08227665715','K6Y 1XS','Wick'),
  (2,2,'Chava','Colon','c_colon2000@protonmail.com','05844159628','PC85 0OX','Portree'),
  (3,1,'Jonas','Dean','jonas-dean@outlook.edu','05556258131','J7 3KP','Amlwch'),
  (4,2,'Kennan','Barnett','b-kennan@hotmail.com','04845778158','KK59 8NV','Bournemouth'),
  (5,2,'Alice','Sandoval','sandoval_alice8251@protonmail.net','01251159487','WI6 1UT','Hemel Hempstead'),
  (1,2,'Renee','Tucker','r-tucker2544@icloud.org','05112347831','FJ7X 8JK','Louth'),
  (5,2,'Nichole','Dotson','d-nichole407@icloud.couk','02593883591','MC26 3NK','Menai Bridge'),
  (4,1,'Thomas','Lyons','t.lyons5067@aol.ca','08489622516','U6 5VU','Maidenhead'),
  (4,1,'Troy','Dixon','d.troy@google.edu','03449702596','LE5P 3IY','Guildford'),
  (4,2,'Dane','Vaughn','vaughn.dane@yahoo.com','08371613552','E2F 4RQ','Workington'),
  (1,2,'Indigo','Perry','perry.indigo5844@protonmail.com','01512046602','PV3 5MV','Arbroath'),
  (6,1,'Maggie','Tate','maggietate8406@aol.org','05976845153','O54 0XS','Wrexham'),
  (4,1,'Elliott','Watts','elliott_watts1486@hotmail.net','02716792434','IP1 3YG','Trowbridge');
  


CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    student_fname VARCHAR(50) NOT NULL,
    student_lname VARCHAR(50) NOT NULL,
    student_email VARCHAR(50) UNIQUE NOT NULL,
    student_phoneno VARCHAR(11) UNIQUE NOT NULL,
    student_postcode VARCHAR(50) NOT NULL,
    student_city VARCHAR(50) NOT NULL,
    CONSTRAINT unique_student_name UNIQUE (student_fname, student_lname)
);

INSERT INTO students (student_fname,student_lname,student_email,student_phoneno,student_postcode,student_city)
VALUES
  ('Catherine','Davidson','dcatherine@icloud.ca','03185392352','A6U 5NF','Irvine'),
  ('Tana','Simpson','t_simpson7227@aol.net','01353808213','X6O 7OI','Whithorn'),
  ('Hakeem','Winters','hakeem_winters@hotmail.com','03923731843','FW93 3RC','Lerwick'),
  ('Reece','Espinoza','reece_espinoza7061@google.edu','06433852217','B2 4FL','Haddington'),
  ('Chadwick','Mccall','mccallchadwick643@yahoo.org','02063896556','J2 0ON','Livingston'),
  ('Michelle','Wilder','michelle.wilder3250@aol.org','01188786677','Q9 4PV','Lichfield'),
  ('Maris','Wallace','wallacemaris312@hotmail.edu','06462310595','M1F 1GE','Saltcoats'),
  ('Rebecca','Coffey','rebeccacoffey@outlook.com','06761591442','J5 5PG','Flint'),
  ('Oliver','Knight','oliverknight8364@icloud.org','04042339527','Y15 2FY','Yeovil'),
  ('Hayley','Black','hayleyblack2127@google.couk','03410018789','LH1H 4SR','Arbroath'),
  ('Rajah','Hickman','hickman-rajah@google.edu','03949348378','FR2 1OF','Galashiels'),
  ('Melinda','Dejesus','melindadejesus@hotmail.ca','07474046166','CL24 3RJ','Horsham'),
  ('Darius','Zamora','d.zamora3640@hotmail.net','08625605286','X1 9FC','Tain'),
  ('Herrod','Todd','therrod@protonmail.com','01375462607','GS53 3AN','Penicuik'),
  ('Kennedy','Hansen','k_hansen@aol.org','03219530553','MT5 4BP','Stonehaven'),
  ('Alma','Russell','a_russell185@icloud.ca','02502362116','J4 8JP','Lairg'),
  ('Wade','Tucker','tuckerwade3102@protonmail.couk','00534287265','U37 4NV','Banchory'),
  ('Cassandra','Rivas','rcassandra@outlook.ca','05314571878','C3H 2MG','Monmouth'),
  ('Norman','Russo','n.russo@yahoo.org','04725017438','QQ29 5AG','Folkestone'),
  ('Jonas','Blankenship','blankenship.jonas9855@aol.org','08694877673','K1 6VU','Abergele'),
  ('Cruz','Frazier','frazier_cruz141@hotmail.edu','06367780578','L8D 6BR','Camborne'),
  ('Quon','Gillespie','gquon@yahoo.couk','04455920588','OG62 1LS','Bridge of Allan'),
  ('Hiram','Munoz','hmunoz@aol.org','05243633768','Q1 2TF','Leominster'),
  ('Cameron','Mann','manncameron5672@outlook.net','08148254725','E50 2AZ','Clackmannan'),
  ('Lance','Blanchard','l.blanchard7641@hotmail.com','03555049421','JU3N 3XL','Milford Haven'),
  ('Constance','Wilder','c-wilder4210@yahoo.com','05033631360','L2 9LF','Machynlleth'),
  ('Xena','Howell','xena-howell@aol.org','01311607036','W8 3GT','Kingussie'),
  ('Blossom','Sanders','b_sanders4491@yahoo.ca','03420512245','I2J 1US','York'),
  ('Chadwick','Fisher','f.chadwick@yahoo.net','03783842842','Q81 2KD','Banchory'),
  ('Donna','Solomon','dsolomon2146@google.edu','03958399359','TM1 8HF','Whitby'),
  ('Herman','Collins','collins.herman@icloud.org','05335555435','JP67 6OI','Lochranza'),
  ('Iris','Horn','h-iris@protonmail.net','09585526139','LX3G 2VU','Macclesfield'),
  ('Aline','Ramos','a-ramos@google.net','05437614969','U7M 2MY','Lossiemouth'),
  ('Tamara','Hood','tamara_hood@icloud.couk','03255798650','KD2I 6BH','Halesowen'),
  ('Hasad','Lloyd','lhasad@icloud.ca','05835181509','N93 7PQ','Gloucester'),
  ('Matthew','Norris','n.matthew3841@google.ca','07485606464','X0 5LM','Oakham'),
  ('Aileen','Kirby','kirbyaileen3390@yahoo.couk','06466735662','TE1K 8IV','Uppingham. Cottesmore'),
  ('Tatum','Thornton','ttatum9897@protonmail.net','03472616628','UM5P 3HX','Alva'),
  ('Raphael','Parks','r.parks905@yahoo.couk','08496452576','BL62 0FF','Broxburn'),
  ('Elvis','Gilbert','elvis_gilbert@hotmail.ca','09285266631','L6 5CV','Bodmin'),
  ('Barbara','Savage','barbarasavage8758@protonmail.net','06184758716','N61 3JI','Devizes'),
  ('Ainsley','Burns','a_burns3060@icloud.com','05537027624','QB1G 6YA','Machynlleth'),
  ('Dawn','Martin','martin-dawn6352@protonmail.couk','02383646964','C2 3GR','Newbury'),
  ('Uriel','Flynn','f-uriel@google.com','01653863003','Y2 6VT','Solihull'),
  ('Dane','Higgins','h.dane6165@aol.ca','02565056537','LQ8Q 6US','Dundee'),
  ('Basil','Adams','basil-adams@yahoo.org','09318772047','I79 7OR','Kettering'),
  ('Velma','Garcia','v.garcia@icloud.org','05447815451','S7 8JM','Coldstream'),
  ('Ezra','Prince','e_prince7294@hotmail.com','07758495574','VM84 9RU','Alloa'),
  ('Astra','Day','d_astra3429@aol.edu','09328898120','S6 5YI','Hunstanton'),
  ('Charity','Crane','crane.charity@outlook.ca','09868339866','D63 4EC','Newtonmore');
 


CREATE TABLE subjects(
    subject_id SERIAL PRIMARY KEY,
    dep_id INT,
    subject_name VARCHAR(50) NOT NULL,
    subject_sessions INT NOT NULL,
    FOREIGN KEY (dep_id) REFERENCES department (dep_id)
);

INSERT INTO subjects(dep_id, subject_name, subject_sessions)
VALUES
    (1, 'Graphs', 20),
    (1, 'Trigonometry', 18),
    (1, 'Pythagoras', 21),
    (2, 'Cybersecurity', 25),
    (2, 'Pyhton', 30),
    (2, 'Architecture', 21),
    (3, 'Geography', 15),
    (3, 'History', 18),
    (3, 'Religous Education', 27),
    (4, 'CAD', 20),
    (4, 'Graphics', 19),
    (4, 'Fine Art', 30);

CREATE TABLE student_subject(
    student_id INT,
    subject_id INT,
    subject_level INT,
    PRIMARY KEY(student_id, subject_id),
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);

INSERT INTO student_subject (student_id,subject_id,subject_level)
VALUES
  (18,11,1),
  (8,7,2),
  (32,10,3),
  (47,11,1),
  (20,6,2),
  (20,8,1),
  (41,10,3),
  (27,9,2),
  (20,7,2),
  (1,5,3),
  (43,9,1),
  (25,3,1),
  (30,2,2),
  (12,12,2),
  (24,4,1),
  (21,10,2),
  (13,10,1),
  (30,12,2),
  (42,6,2),
  (8,9,1),
  (39,3,1),
  (33,12,2),
  (6,7,3),
  (19,8,2),
  (9,6,1),
  (22,10,3),
  (49,6,2),
  (15,1,2),
  (29,9,1),
  (36,4,1),
  (38,10,1),
  (38,4,3),
  (8,11,2),
  (30,9,2),
  (8,8,2),
  (12,8,3),
  (18,8,2),
  (45,9,2),
  (8,4,1),
  (29,7,3),
  (5,12,2),
  (27,8,2),
  (21,4,2),
  (8,2,2),
  (5,7,3),
  (36,3,2),
  (48,8,1),
  (37,2,2),
  (22,9,2),
  (42,9,1),
  (18,2,2),
  (31,11,3),
  (46,2,2),
  (12,3,3),
  (3,8,3),
  (23,4,3),
  (7,8,3),
  (49,11,2),
  (27,11,3),
  (35,8,2),
  (15,9,1),
  (10,8,1),
  (24,9,3);


CREATE TABLE exams(
    exam_id SERIAL PRIMARY KEY,
    subject_id INT,
    exam_level INT NOT NULL,
    exam_date DATE NOT NULL,
    exam_time TIME NOT NULL,
    exam_length INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);

INSERT INTO exams (subject_id, exam_level, exam_date, exam_time, exam_length) 
VALUES 
    (3, 3, '2/6/2024', '9:00', 60),
    (7, 1, '6/26/2023', '9:00', 60),
    (1, 3, '8/10/2023', '11:00', 60),
    (12, 2, '12/28/2023', '10:00', 60),
    (12, 1, '12/7/2023', '10:00', 60),
    (8, 3, '9/11/2023', '15:00', 60),
    (6, 1, '11/23/2023', '10:00', 60),
    (10, 3, '7/14/2023', '13:00', 60),
    (8, 3, '1/2/2024', '12:00', 60),
    (8, 3, '5/2/2023', '14:00', 90),
    (6, 3, '2/15/2023', '12:00', 90),
    (2, 3, '11/22/2023', '9:00', 90),
    (4, 2, '12/21/2023', '13:00', 90),
    (5, 1, '2/26/2023', '14:00', 90),
    (4, 2, '10/31/2023', '12:00', 90),
    (10, 2, '4/19/2023', '11:00', 90),
    (10, 3, '10/13/2023', '13:00', 90),
    (12, 2, '11/7/2023', '12:00', 90),
    (8, 2, '10/10/2023', '14:00', 45),
    (6, 3, '6/15/2023', '13:00', 45),
    (11, 3, '1/28/2024', '13:00', 45),
    (5, 1, '5/27/2023', '11:00', 45),
    (9, 1, '11/20/2023', '13:00', 45),
    (9, 1, '11/22/2023', '12:00', 45),
    (2, 3, '7/4/2023', '13:00', 45),
    (12, 1, '8/24/2023', '12:00', 45),
    (3, 3, '2/4/2024', '11:00', 45),
    (9, 1, '3/4/2023', '12:00', 45),
    (12, 1, '1/19/2024', '12:00', 45),
    (6, 2, '4/22/2023', '12:00', 45),
    (6, 1, '1/3/2024', '9:00', 120),
    (12, 3, '11/20/2023', '10:00', 120),
    (7, 3, '3/30/2023', '10:00', 120),
    (12, 2, '9/2/2023', '9:00', 120),
    (6, 2, '11/10/2023', '10:00', 120),
    (3, 1, '8/1/2023', '12:00', 120),
    (8, 3, '2/19/2023', '12:00', 120),
    (4, 2, '12/19/2023', '9:00', 120),
    (10, 2, '9/2/2023', '12:00', 120),
    (1, 1, '4/7/2023', '11:00', 120),
    (10, 3, '1/22/2024', '11:00', 120),
    (4, 2, '1/6/2024', '12:00', 120),
    (9, 1, '3/31/2023', '11:00', 50),
    (1, 1, '10/9/2023', '15:00', 50),
    (10, 2, '10/12/2023', '13:00', 50),
    (4, 1, '9/23/2023', '11:00', 50),
    (8, 1, '12/21/2023', '14:00', 50),
    (11, 3, '2/5/2024', '14:00', 50),
    (10, 3, '7/9/2023', '10:00', 60),
    (12, 2, '1/28/2024', '9:00', 60);


CREATE TABLE student_exams(
    exam_id INT,
    student_id INT,
    exam_percent INT DEFAULT(0),
    PRIMARY KEY(exam_id, student_id),
    FOREIGN KEY (exam_id) REFERENCES exams (exam_id),
    FOREIGN KEY (student_id) REFERENCES students (student_id)
);

WITH eligible_exams AS (
    SELECT se.student_id, e.exam_id, e.subject_id
    FROM student_subject se
    JOIN exams e ON se.subject_id = e.subject_id
    WHERE se.student_id NOT IN (
        SELECT student_id FROM student_exams
    )
)
INSERT INTO student_exams (exam_id, student_id, exam_percent)
SELECT exam_id, student_id, (FLOOR(RANDOM() * 100) + 1) AS exam_percent
FROM eligible_exams;

CREATE TABLE sessions (
    session_id SERIAL PRIMARY KEY,
    student_id INT,
    subject_id INT,
    session_date DATE NOT NULL,
    session_length INT NOT NULL,
    session_time TIME NOT NULL,
    session_completed BOOLEAN DEFAULT (FALSE),
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
);

 INSERT INTO sessions (subject_id, session_date, session_length, session_time, session_completed) 
 VALUES
 (7, '9/4/2023', 60, '13:37', '0'),
 (8, '6/12/2023', 60, '10:33', '1'),
 (4, '9/20/2023', 60, '13:19', '1'),
 (3, '1/10/2024', 60, '11:55', '0'),
 (6, '9/14/2023', 60, '13:24', '0'),
 (10, '11/9/2023', 60, '11:34', '1'),
 (7, '9/16/2023', 60, '14:43', '0'),
 (1, '6/29/2023', 60, '12:43', '0'),
 (3, '5/20/2023', 60, '9:26', '0'),
 (8, '8/4/2023', 60, '13:40', '0'),
 (4, '12/27/2023', 60, '11:37', '0'),
 (8, '7/7/2023', 60, '11:04', '1'),
 (12, '5/29/2023', 60, '9:56', '1'),
 (12, '10/6/2023', 60, '14:21', '1'),
 (1, '3/5/2023', 60, '9:28', '0'),
 (10, '4/25/2023', 60, '13:17', '1'),
 (3, '12/1/2023', 60, '12:18', '0'),
 (5, '7/11/2023', 60, '11:35', '0'),
 (9, '9/4/2023', 60, '11:33', '1'),
 (1, '5/4/2023', 60, '13:24', '1'),
 (9, '8/10/2023', 60, '15:49', '1'),
 (10, '11/19/2023', 60, '13:39', '1'),
 (9, '8/13/2023', 60, '15:33', '0'),
 (11, '1/3/2024', 60, '9:04', '1'),
 (7, '4/2/2023', 60, '14:52', '1'),
 (3, '5/17/2023', 60, '13:07', '0'),
 (4, '7/26/2023', 60, '12:51', '1'),
 (6, '3/1/2023', 60, '12:56', '0'),
 (8, '2/6/2024', 60, '13:03', '1'),
 (3, '3/2/2023', 60, '10:23', '1'),
 (12, '4/11/2023', 60, '15:29', '1'),
 (8, '5/5/2023', 60, '9:24', '1'),
 (9, '4/18/2023', 60, '15:22', '1'),
 (11, '10/9/2023', 60, '13:35', '0'),
 (12, '3/26/2023', 60, '9:01', '1'),
 (4, '6/4/2023', 60, '11:38', '1'),
 (6, '11/9/2023', 60, '14:18', '1'),
 (9, '7/30/2023', 60, '15:39', '1'),
 (9, '1/27/2024', 60, '12:35', '1'),
 (12, '7/6/2023', 60, '12:36', '0'),
 (11, '2/28/2023', 60, '12:54', '0'),
 (4, '12/18/2023', 60, '14:37', '1'),
 (3, '8/15/2023', 60, '15:04', '1'),
 (9, '9/5/2023', 60, '15:54', '0'),
 (6, '2/22/2023', 60, '10:10', '1'),
 (10, '5/17/2023', 60, '15:46', '0'),
 (8, '6/12/2023', 60, '11:53', '1'),
 (12, '4/11/2023', 60, '10:25', '1'),
 (2, '2/23/2023', 60, '13:14', '0'),
 (7, '6/26/2023', 60, '12:50', '0'),
 (4, '12/18/2023', 60, '11:11', '0'),
 (10, '2/1/2024', 60, '11:31', '1'),
 (1, '9/26/2023', 60, '13:03', '0'),
 (12, '1/29/2024', 60, '9:57', '0'),
 (5, '11/7/2023', 60, '14:23', '0'),
 (12, '11/16/2023', 60, '12:43', '0'),
 (6, '7/28/2023', 60, '10:06', '1'),
 (9, '1/6/2024', 60, '9:42', '0'),
 (1, '5/3/2023', 60, '15:07', '1'),
 (6, '3/9/2023', 60, '14:35', '0');



CREATE TABLE staff_sessions(
    staff_id INT,
    session_id INT,
    PRIMARY KEY (staff_id, session_id),
    FOREIGN KEY (staff_id) REFERENCES staff_members (staff_id),
    FOREIGN KEY (session_id) REFERENCES sessions (session_id)
);

INSERT INTO staff_sessions (staff_id, session_id)
SELECT sm.staff_id, s.session_id
FROM staff_members sm
JOIN department d ON sm.dep_id = d.dep_id
JOIN sessions s ON sm.dep_id = s.subject_id
WHERE d.dep_id BETWEEN 1 AND 4;q
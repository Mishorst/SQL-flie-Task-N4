CREATE TABLE Faculties ( 

id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 

name varchar(100) NOT NULL 

); 

 

CREATE TABLE Students ( 

id int NOT NULL PRIMARY KEY AUTO_INCREMENT, 

name varchar(20) NOT NULL, 

surname(20) NOT NULL. 

personal_number int NOT NULL, 

email varchar(50) NOT NULL, 

address varchar(100) NOT NULL. 

second_address varchar(100) NULL, 

flat_number int NULL, 

gender varchar(10) NOT NULL 

 

faculty_id FOREIGN KEY PREFERENCES Faculties(id) 

); 

 

CREATE TABLE Lecturers ( 

id int NOT NULL PRIMARY KEY AUTO_INCREMENT, 

name varchar(20) NOT NULL, 

surname(20) NOT NULL. 

personal_number int NOT NULL, 

email varchar(50) NOT NULL, 

address varchar(100) NOT NULL. 

second_address varchar(100) NULL, 

flat_number int NULL, 

gender varchar(10) NOT NULL 

account_number varchar(255) NOT NULL, 

rank varchar(100) NOT NULL 

); 

 

 

 

 

CREATE TABLE Assistants ( 

id int NOT NULL PRIMARY KEY AUTO_INCREMENT, 

name varchar(20) NOT NULL, 

surname(20) NOT NULL. 

personal_number int NOT NULL, 

email varchar(50) NOT NULL, 

address varchar(100) NOT NULL. 

second_address varchar(100) NULL, 

flat_number int NULL, 

gender varchar(10) NOT NULL 

 

); 

 

CREATE TABLE Courses ( 

id int NOT NULL PRIMARY KEY AUTO_INCREMENT, 

name varchar(255) NOT NULL 

); 

 

CREATE TABLE Subjects ( 

id int NOT NULL PRIMARY KEY AUTO_INCREMENT, 

name varchar(255) NOT NULL 

 

 

course_id FOREIGN KEY PREFERENCES Courses(id) 

lecturer_id FOREIGN KEY PREFERENCES Lecturers(id) 

); 

 

 

 

 

 

CREATE TABLE Lectures ( 

id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 

start_time DATETIME NOT NULL, 

end_time DATETIME NOT NULL, 

 

subject_id FOREIGN KEY PREFERENCES Subjects(id) 

); 

 

CREATE TABLE lecture_students ( 

id int PRIMARY KEY NOT NULL AUTO_INCREMENT, 

 

lecture_id FOREIGN KEY PREFERENCES Lectures(id), 

student_id FOREIGN KEY PREFERENCES Students(id), 

); 

 

 

INSERT scripts:	 

 

INSERT INTO Faculties(name) VALUES (‘faculty one’); 

 

INSERT INTO Students(name, surname, personal_number, email, address, second_address, flat_number, gender, faculty_id) VALUES (‘name’, ‘surname’, 234234, ‘example@gmail.com’, ‘address 1 ’, null, null, ‘male’, 1); 

 

INSERT INTO Lecturers(name, surname, personal_number, email, address, second_address, flat_number, gender, account_number, rank) VALUES (‘name’, ‘surname’, 234234, ‘example@gmail.com’, ‘address 1 ’, null, null, ‘male’, 1123132, ‘rank’); 

 

INSERT INTO Assistents(name, surname, personal_number, email, address, second_address, flat_number, gender) VALUES (‘name’, ‘surname’, 234234, ‘example@gmail.com’, ‘address 1 ’, null, null, ‘male’); 

 

INSERT INTO  COURSES(name) VALUES (‘course one’); 
 

INSERT INTO Subjects(name, course_id, lecturer_id) VALUES (‘subject one’, 1, 1); 

 

INSERT INTO Lectures(start_time, end_time, subject_id) VALUES ('20230618 10:34:09 AM',  

'20230618 12:34:09 AM', 1) 

 

INSERT INTO lecture_students(lecture_id, student_id) VALUES (1 ,1); 
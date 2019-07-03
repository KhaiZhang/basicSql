create database student_examination_sys;
use student_examination_sys;

CREATE TABLE student(
	id VARCHAR(10) NOT NULL,
	`name` VARCHAR(10) NOT NULL,
	age INT NOT NULL,
	sex VARCHAR(2) NOT NULL,
	PRIMARY KEY(id)
)CHARSET utf8;
INSERT INTO student (id,`name`,age,sex)
VALUES('001','����',18,'��'),('002','����',20,'Ů');

CREATE TABLE `subject`(
	id VARCHAR(10) NOT NULL,
	`subject` VARCHAR(5) NOT NULL,
	teacher VARCHAR(10) NOT NULL,
	description VARCHAR(50) NOT NULL,
	PRIMARY KEY(id)
)CHARSET utf8;
INSERT INTO `subject` (id,`subject`,teacher,description)
VALUES('1001','����','����ʦ','���ο��ԱȽϼ�'),('1002','��ѧ','����ʦ','���ο��ԱȽ���');

CREATE TABLE score(
	id INT NOT NULL AUTO_INCREMENT,
	student_id VARCHAR(10) NOT NULL,
	subject_id VARCHAR(10) NOT NULL,
	score FLOAT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(student_id) REFERENCES student(id),
	FOREIGN KEY(subject_id) REFERENCES SUBJECT(id)
)CHARSET utf8;
INSERT INTO score(student_id,subject_id,score)
VALUES('001','1001',80),('002','1002',60),('001','1001',70),('002','1002',60.5);

SELECT * FROM student;
SELECT * FROM `subject`;
SELECT * FROM score;
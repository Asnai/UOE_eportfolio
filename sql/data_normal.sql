CREATE TABLE `Student` (
  `Student_Number` integer PRIMARY KEY,
  `Student_Name` varchar(255),
  `Date_of_birth` DATETIME
);

CREATE TABLE `Course` (
  `Course_Name` varchar(255) PRIMARY KEY,
  `exam_board` varchar(255),
  `Teacher_Name` varchar(255)
);

CREATE TABLE `Exam` (
  `Student_Number` integer PRIMARY KEY,
  `Course_Name` varchar(255),
  `Exam_Score` integer,
  `Support` boolean
);

CREATE TABLE `Student_Exam` (
  `Student_Student_Number` integer,
  `Exam_Student_Number` integer,
  PRIMARY KEY (`Student_Student_Number`, `Exam_Student_Number`)
);

ALTER TABLE `Student_Exam` ADD FOREIGN KEY (`Student_Student_Number`) REFERENCES `Student` (`Student_Number`);

ALTER TABLE `Student_Exam` ADD FOREIGN KEY (`Exam_Student_Number`) REFERENCES `Exam` (`Student_Number`);


CREATE TABLE `Course_Exam` (
  `Course_Course_Name` varchar,
  `Exam_Course_Name` varchar,
  PRIMARY KEY (`Course_Course_Name`, `Exam_Course_Name`)
);

ALTER TABLE `Course_Exam` ADD FOREIGN KEY (`Course_Course_Name`) REFERENCES `Course` (`Course_Name`);

ALTER TABLE `Course_Exam` ADD FOREIGN KEY (`Exam_Course_Name`) REFERENCES `Exam` (`Course_Name`);


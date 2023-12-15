CREATE TABLE college(
id INTEGER NOT NULL PRIMARY KEY,
name_college VARCHAR(100)  NOT NULL
);

CREATE TABLE students(
id INTEGER NOT NULL PRIMARY KEY,
name_student VARCHAR(100) NOT NULL,
year_of_birth VARCHAR(100) NOT NULL,
college_id INTEGER,
FOREIGN KEY(college_id) REFERENCES college(id)
);

CREATE TABLE courses(
id INTEGER NOT NULL PRIMARY KEY,
name_course VARCHAR(100) NOT NULL
);

CREATE TABLE professors(
id INTEGER NOT NULL PRIMARY KEY,
name_professor VARCHAR(100) NOT NULL,
course_id INTEGER,
FOREIGN KEY(course_id) REFERENCES courses(id)
);

CREATE TABLE classes(
id INTEGER NOT NULL PRIMARY KEY,
name_class VARCHAR(100) NOT NULL,
college_id INTEGER,
professor_id INTEGER,
FOREIGN KEY(college_id) REFERENCES college(id),
FOREIGN KEY(professor_id) REFERENCES professors(id)
);

CREATE TABLE grades(
id INTEGER NOT NULL PRIMARY KEY,
student_id INTEGER,
class_id INTEGER,
grade VARCHAR(100),
FOREIGN KEY(student_id) REFERENCES students(id),
FOREIGN KEY(class_id) REFERENCES classes(id)
);

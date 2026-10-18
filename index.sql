CREATE DATABE university_db;

CREATE TABLE depaartments(
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE courses (
     course_id  INT PRIMARY KEY AUTO_INCREMENT,
     course_name  VARCHAR(50) NOT NULL,
     credits  INT NOT NULL DEFAULT 3,
     dept_id  INT (foreign key)
     FOREIGN KEY (dept_id) REFERENCES departments(dept_id) ON DELETE CASCADE
);

CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50) NOT NULL
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id  INT (foreign key),
    course_id  INT (foreign key),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE
);

CREATE TABLE health_records (
    record_id INT PRIMARY KEY AUTO_INCREMENT,
    blood_group VARCHAR(10),
    student_id  INT (foreign key),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE
);

INSERT INTO depaartments VALUES
    (NULL, 'computer science'),
    (NULL, 'mathematics'),
    (NULL, 'physics');

INSERT INTO courses(course_id, course_name,dept_id) VALUES
    ('database systems', 4, 1),
    ('algorithms', 3, 1),
    ('calculus', 4, 2),
    ('quantum mechanics', 5, 3);

INSERT INTO students VALUES
    (NULL, 'alice'),
    (NULL, 'bob'),
    (NULL, 'charlie'),
    (NULL, 'samy'),
    (NULL, 'eva');

INSERT INTO enrollments(student_id, course_id) VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 2),
    (3, 3),
    (4, 3),
    (4, 4);

INSERT INTO health_records(blood_group, student_id) VALUES
    ('A+', 1),
    ('B+', 2),
    ('O-', 3),
    ('AB+', 4),
    ('A-', 5);
    
    
    
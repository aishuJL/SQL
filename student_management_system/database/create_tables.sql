CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    email      VARCHAR(100) UNIQUE NOT NULL,
    phone      VARCHAR(15),
    age        INT,
    gender     ENUM('Male', 'Female', 'Other'),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE courses (
    course_id   INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher     VARCHAR(100),
    credits     INT DEFAULT 3
);
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id    INT,
    course_id     INT,
    enrolled_on   DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
);
CREATE TABLE grades (
    grade_id      INT AUTO_INCREMENT PRIMARY KEY,
    student_id    INT,
    course_id     INT,
    marks         DECIMAL(5,2),
    grade_letter  VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
);
CREATE TABLE attendance (
    attendance_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id    INT,
    course_id     INT,
    date          DATE NOT NULL,
    status        ENUM('Present', 'Absent', 'Late') DEFAULT 'Present',
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id)  REFERENCES courses(course_id)
);
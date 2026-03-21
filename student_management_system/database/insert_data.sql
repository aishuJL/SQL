INSERT INTO students (first_name, last_name, email, phone, age, gender) VALUES
('Arjun',   'Sharma',  'arjun@email.com',  '9876543210', 20, 'Male'),
('Priya',   'Patel',   'priya@email.com',  '9876543211', 21, 'Female'),
('Rahul',   'Verma',   'rahul@email.com',  '9876543212', 19, 'Male'),
('Sneha',   'Nair',    'sneha@email.com',  '9876543213', 22, 'Female'),
('Vikram',  'Das',     'vikram@email.com', '9876543214', 20, 'Male');

INSERT INTO courses (course_name, teacher, credits) VALUES
('Mathematics',       'Dr. Mehta',   4),
('Computer Science',  'Prof. Singh',  3),
('Physics',           'Dr. Rao',      3),
('English',           'Ms. D\'souza', 2);

INSERT INTO enrollments (student_id, course_id) VALUES
(1, 1), (1, 2), (2, 1), (2, 3),
(3, 2), (3, 4), (4, 1), (4, 3),
(5, 2), (5, 4);

INSERT INTO grades (student_id, course_id, marks, grade_letter) VALUES
(1, 1, 88.5, 'A'), (1, 2, 91.0, 'A'),
(2, 1, 76.0, 'B'), (2, 3, 85.0, 'A'),
(3, 2, 60.5, 'C'), (3, 4, 72.0, 'B'),
(4, 1, 95.0, 'A'), (4, 3, 55.0, 'D'),
(5, 2, 80.0, 'B'), (5, 4, 67.0, 'C');

INSERT INTO attendance (student_id, course_id, date, status) VALUES
(1, 1, '2025-03-01', 'Present'), (1, 1, '2025-03-02', 'Absent'),
(2, 1, '2025-03-01', 'Present'), (2, 1, '2025-03-02', 'Present'),
(3, 2, '2025-03-01', 'Late'),    (3, 2, '2025-03-02', 'Present'),
(4, 3, '2025-03-01', 'Present'), (4, 3, '2025-03-02', 'Absent'),
(5, 4, '2025-03-01', 'Present'), (5, 4, '2025-03-02', 'Present');
USE library_management;

INSERT INTO members (first_name, last_name, email, phone, joined_date) VALUES
('Arjun',  'Sharma',  'arjun@email.com',  '9876543210', '2024-01-10'),
('Priya',  'Patel',   'priya@email.com',  '9876543211', '2024-02-15'),
('Rahul',  'Verma',   'rahul@email.com',  '9876543212', '2024-03-05'),
('Sneha',  'Nair',    'sneha@email.com',  '9876543213', '2024-04-20'),
('Vikram', 'Das',     'vikram@email.com', '9876543214', '2024-05-11');

INSERT INTO books (title, author, genre, total_copies, available_copies) VALUES
('The Alchemist',         'Paulo Coelho',     'Fiction',    3, 2),
('Clean Code',            'Robert Martin',    'Technology', 2, 1),
('Atomic Habits',         'James Clear',      'Self Help',  4, 3),
('Harry Potter',          'J.K. Rowling',     'Fantasy',    5, 3),
('Deep Work',             'Cal Newport',      'Self Help',  2, 2),
('Database Design',       'Dr. Sharma',       'Education',  3, 1);

INSERT INTO borrow_records (member_id, book_id, borrow_date, due_date, return_date, status) VALUES
(1, 1, '2025-01-01', '2025-01-15', '2025-01-14', 'Returned'),
(1, 2, '2025-02-01', '2025-02-15', NULL,          'Borrowed'),
(2, 3, '2025-01-10', '2025-01-24', '2025-01-30', 'Returned'),
(3, 4, '2025-02-05', '2025-02-19', NULL,          'Overdue'),
(4, 5, '2025-03-01', '2025-03-15', '2025-03-14', 'Returned'),
(5, 6, '2025-03-10', '2025-03-24', NULL,          'Borrowed');

INSERT INTO fines (member_id, borrow_id, amount, paid) VALUES
(2, 3, 50.00, 'No'),
(3, 4, 120.00, 'No');
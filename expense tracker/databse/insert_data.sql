USE expense_tracker;

INSERT INTO users (name, email, budget) VALUES
('Arjun',  'arjun@email.com',  30000.00),
('Priya',  'priya@email.com',  25000.00),
('Rahul',  'rahul@email.com',  20000.00);

INSERT INTO categories (category_name) VALUES
('Food'),
('Transport'),
('Entertainment'),
('Shopping'),
('Education'),
('Health');

INSERT INTO expenses (user_id, category_id, amount, description, expense_date) VALUES
(1, 1, 500.00,  'Lunch at restaurant',   '2025-03-01'),
(1, 2, 200.00,  'Uber ride',             '2025-03-02'),
(1, 3, 800.00,  'Movie tickets',         '2025-03-05'),
(1, 4, 2000.00, 'New shoes',             '2025-03-10'),
(1, 5, 1500.00, 'Online course',         '2025-03-15'),
(2, 1, 300.00,  'Groceries',             '2025-03-01'),
(2, 2, 150.00,  'Bus pass',              '2025-03-03'),
(2, 6, 500.00,  'Medicine',              '2025-03-08'),
(2, 3, 600.00,  'Concert ticket',        '2025-03-12'),
(3, 1, 400.00,  'Dinner',                '2025-03-02'),
(3, 4, 3000.00, 'Clothing',              '2025-03-07'),
(3, 2, 100.00,  'Auto rickshaw',         '2025-03-09'),
(1, 1, 450.00,  'Breakfast',             '2025-02-10'),
(1, 2, 300.00,  'Cab to airport',        '2025-02-15'),
(2, 5, 2000.00, 'Books',                 '2025-02-20');
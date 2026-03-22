USE expense_tracker;

SELECT u.name, c.category_name, e.amount, e.description, e.expense_date
FROM expenses e
JOIN users u      ON e.user_id     = u.user_id
JOIN categories c ON e.category_id = c.category_id
ORDER BY e.expense_date DESC;

SELECT u.name, SUM(e.amount) AS total_spent
FROM expenses e
JOIN users u ON e.user_id = u.user_id
GROUP BY u.user_id
ORDER BY total_spent DESC;

SELECT u.name,
       DATE_FORMAT(e.expense_date, '%Y-%m') AS month,
       SUM(e.amount) AS monthly_total
FROM expenses e
JOIN users u ON e.user_id = u.user_id
GROUP BY u.user_id, month
ORDER BY month DESC;

SELECT c.category_name, SUM(e.amount) AS total
FROM expenses e
JOIN categories c ON e.category_id = c.category_id
GROUP BY c.category_id
ORDER BY total DESC;

SELECT u.name, u.budget,
       SUM(e.amount) AS total_spent,
       u.budget - SUM(e.amount) AS remaining
FROM users u
JOIN expenses e ON u.user_id = e.user_id
GROUP BY u.user_id;

SELECT u.name, c.category_name, e.amount, e.description
FROM expenses e
JOIN users u      ON e.user_id     = u.user_id
JOIN categories c ON e.category_id = c.category_id
ORDER BY e.amount DESC
LIMIT 1;

SELECT u.name, u.budget, SUM(e.amount) AS total_spent
FROM users u
JOIN expenses e ON u.user_id = e.user_id
GROUP BY u.user_id
HAVING total_spent > u.budget;

SELECT u.name, c.category_name, SUM(e.amount) AS spent
FROM expenses e
JOIN users u      ON e.user_id     = u.user_id
JOIN categories c ON e.category_id = c.category_id
GROUP BY u.user_id, c.category_id
ORDER BY u.name, spent DESC;
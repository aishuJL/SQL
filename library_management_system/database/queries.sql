USE library_management;

SELECT * FROM members;

SELECT * FROM books;

SELECT m.first_name, b.title, br.borrow_date, br.due_date, br.return_date, br.status
FROM borrow_records br
JOIN members m ON br.member_id = m.member_id
JOIN books b   ON br.book_id   = b.book_id;

SELECT m.first_name, b.title, br.borrow_date, br.due_date
FROM borrow_records br
JOIN members m ON br.member_id = m.member_id
JOIN books b   ON br.book_id   = b.book_id
WHERE br.status IN ('Borrowed', 'Overdue');

SELECT m.first_name, b.title, br.due_date
FROM borrow_records br
JOIN members m ON br.member_id = m.member_id
JOIN books b   ON br.book_id   = b.book_id
WHERE br.status = 'Overdue';

SELECT m.first_name, f.amount, f.paid
FROM fines f
JOIN members m ON f.member_id = m.member_id;

SELECT m.first_name, SUM(f.amount) AS total_fine
FROM fines f
JOIN members m ON f.member_id = m.member_id
WHERE f.paid = 'No'
GROUP BY m.member_id;

SELECT b.title, COUNT(*) AS times_borrowed
FROM borrow_records br
JOIN books b ON br.book_id = b.book_id
GROUP BY b.book_id
ORDER BY times_borrowed DESC;

SELECT title, author, available_copies
FROM books
WHERE available_copies > 0;

SELECT m.first_name, COUNT(*) AS total_borrowed
FROM borrow_records br
JOIN members m ON br.member_id = m.member_id
GROUP BY m.member_id
ORDER BY total_borrowed DESC;
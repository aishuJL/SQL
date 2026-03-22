CREATE DATABASE IF NOT EXISTS library_management;
USE library_management;

CREATE TABLE members (
    member_id   INT AUTO_INCREMENT PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50) NOT NULL,
    email       VARCHAR(100) UNIQUE NOT NULL,
    phone       VARCHAR(15),
    joined_date DATE DEFAULT (CURRENT_DATE),
    status      ENUM('Active', 'Inactive') DEFAULT 'Active'
);

CREATE TABLE books (
    book_id     INT AUTO_INCREMENT PRIMARY KEY,
    title       VARCHAR(150) NOT NULL,
    author      VARCHAR(100) NOT NULL,
    genre       VARCHAR(50),
    total_copies INT DEFAULT 1,
    available_copies INT DEFAULT 1
);

CREATE TABLE borrow_records (
    borrow_id   INT AUTO_INCREMENT PRIMARY KEY,
    member_id   INT,
    book_id     INT,
    borrow_date DATE DEFAULT (CURRENT_DATE),
    due_date    DATE,
    return_date DATE,
    status      ENUM('Borrowed', 'Returned', 'Overdue') DEFAULT 'Borrowed',
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id)   REFERENCES books(book_id)
);

CREATE TABLE fines (
    fine_id     INT AUTO_INCREMENT PRIMARY KEY,
    member_id   INT,
    borrow_id   INT,
    amount      DECIMAL(6,2),
    paid        ENUM('Yes', 'No') DEFAULT 'No',
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (borrow_id) REFERENCES borrow_records(borrow_id)
);
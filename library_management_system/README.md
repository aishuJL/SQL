# 📚 Library Management System

A beginner-level SQL project that demonstrates database design, table relationships, and query writing using MySQL — built to manage books, members, borrow records, and fines.

---

## 📁 Project Structure

```
library_management/
├── database/
│   ├── create_tables.sql     # Database and table creation
│   ├── insert_data.sql       # Sample data insertion
│   └── queries.sql           # Practice queries
└── README.md
```

---

## 🗄️ Database Schema

The system consists of **4 tables:**

| Table | Description |
|---|---|
| `members` | Stores library member information |
| `books` | Stores book details and availability |
| `borrow_records` | Tracks which member borrowed which book |
| `fines` | Stores fine amounts for overdue returns |

---

## 🔗 Entity Relationship

```
members ──< borrow_records >── books
members ──< fines
borrow_records ──< fines
```

---

## ⚙️ Setup & Usage

### Prerequisites
- MySQL 8.0+
- MySQL Workbench

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/aishuJL/SQL.git
   cd SQL/library_management
   ```

2. **Run table creation script**
   ```sql
   source database/create_tables.sql
   ```

3. **Insert sample data**
   ```sql
   source database/insert_data.sql
   ```

4. **Run queries**
   ```sql
   source database/queries.sql
   ```

---

## 📊 Sample Queries Included

- View all members and books
- All borrow records with member and book names
- Currently borrowed books (not returned)
- Overdue books list
- Fines with member names
- Total unpaid fines per member
- Most borrowed books
- Available books in library
- Member borrow history

---

## 🧠 Concepts Covered

- `CREATE TABLE` with constraints
- `PRIMARY KEY` & `FOREIGN KEY`
- `INNER JOIN` across multiple tables
- `ENUM` data types
- Aggregate functions — `SUM`, `COUNT`
- `GROUP BY` & `ORDER BY`
- Filtering with `WHERE` & `HAVING`
- `AUTO_INCREMENT` & `DEFAULT` values
- Date handling with `DATE` data type

---

## 📌 Sample Data

- **5 Members** — Arjun, Priya, Rahul, Sneha, Vikram
- **6 Books** — The Alchemist, Clean Code, Atomic Habits, Harry Potter, Deep Work, Database Design
- **6 Borrow Records** — mix of Returned, Borrowed, and Overdue
- **2 Fine Records** — unpaid fines for overdue returns

---

## 🚀 Future Improvements

- [ ] Add stored procedures for automatic fine calculation
- [ ] Create views for member borrow history
- [ ] Add triggers to update available copies on borrow/return
- [ ] Build a Python + MySQL frontend UI

---

## 👤 Author

**Aishu** — [@aishuJL](https://github.com/aishuJL)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

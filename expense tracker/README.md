# Expense Tracker

A beginner-level SQL project that demonstrates database design, table relationships, and query writing using MySQL — built to track daily expenses, categories, budgets, and monthly summaries.

---

## Project Structure

```
expense_tracker/
├── database/
│   ├── create_tables.sql     # Database and table creation
│   ├── insert_data.sql       # Sample data insertion
│   └── queries.sql           # Practice queries
└── README.md
```

---

## Database Schema

The system consists of **3 tables:**

| Table | Description |
|---|---|
| `users` | Stores user information and monthly budget |
| `categories` | Stores expense categories |
| `expenses` | Stores all expense records with amount and date |

---

## Entity Relationship

```
users ──< expenses >── categories
```

---

## Setup & Usage

### Prerequisites
- MySQL 8.0+
- MySQL Workbench

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/aishuJL/SQL.git
   cd SQL/expense_tracker
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

## Sample Queries Included

- View all expenses with user and category
- Total spending per user
- Monthly summary per user
- Spending breakdown by category
- Budget vs actual spending
- Highest single expense
- Users who exceeded their budget
- Most expensive category per user

---

## Concepts Covered

- `CREATE TABLE` with constraints
- `PRIMARY KEY` & `FOREIGN KEY`
- `INNER JOIN` across multiple tables
- Aggregate functions — `SUM`, `COUNT`, `MAX`
- `GROUP BY` & `ORDER BY`
- `HAVING` clause for filtered aggregations
- `DATE_FORMAT` for monthly grouping
- `AUTO_INCREMENT` & `DEFAULT` values
- Budget comparison using arithmetic in queries

---

## Sample Data

- **3 Users** — Arjun, Priya, Rahul with different budgets
- **6 Categories** — Food, Transport, Entertainment, Shopping, Education, Health
- **15 Expense Records** — spread across March and February 2025

---

## Future Improvements

- [ ] Add stored procedures for monthly budget alerts
- [ ] Create views for per-user expense summaries
- [ ] Add triggers to flag when budget is exceeded
- [ ] Build a Python + MySQL frontend dashboard

---

## Author

**Aishu** — [@aishuJL](https://github.com/aishuJL)

---

## License

This project is open source and available under the [MIT License](LICENSE).

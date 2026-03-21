# 🎓 Student Management System

A beginner-level SQL project that demonstrates database design, table relationships, and query writing using MySQL.

---

## 📁 Project Structure

```
student_management_system/
├── database/
│   ├── create_tables.sql     # Database and table creation
│   ├── insert_data.sql       # Sample data insertion
│   └── queries.sql           # Practice queries
└── README.md
```

---

## 🗄️ Database Schema

The system consists of **5 tables:**

| Table | Description |
|---|---|
| `students` | Stores student personal information |
| `courses` | Stores available courses |
| `enrollments` | Maps students to their enrolled courses |
| `grades` | Stores marks and grade letters per student per course |
| `attendance` | Tracks daily attendance status |

---

## 🔗 Entity Relationship

```
students ──< enrollments >── courses
students ──< grades >── courses
students ──< attendance >── courses
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
   cd SQL/student_management_system
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

- View all students and courses
- Student enrollments with course names
- All grades with student and course details
- Average marks per student
- Attendance percentage per student
- Top scorer in each course

---

## 🧠 Concepts Covered

- `CREATE TABLE` with constraints
- `PRIMARY KEY` & `FOREIGN KEY`
- `JOIN` (INNER JOIN across multiple tables)
- Aggregate functions — `AVG`, `SUM`, `MAX`, `COUNT`
- `GROUP BY` & `ORDER BY`
- `ENUM` data types
- `AUTO_INCREMENT` & `DEFAULT` values

---

## 📌 Sample Data

- **5 Students** — Arjun, Priya, Rahul, Sneha, Vikram
- **4 Courses** — Mathematics, Computer Science, Physics, English
- **10 Enrollments**
- **10 Grade records**
- **10 Attendance records**

---

## 🚀 Future Improvements

- [ ] Add stored procedures for grade calculation
- [ ] Create views for report cards
- [ ] Add triggers to auto-update grade letters
- [ ] Build a Python + MySQL frontend

---

## 👤 Author

**Aishu** — [@aishuJL](https://github.com/aishuJL)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

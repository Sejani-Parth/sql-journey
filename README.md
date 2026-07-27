# SQL Server Learning Journey 🚀

I'm learning SQL Server, and this repo is where I'll record my daily practice —
one `.sql` file per day, plus notes on what I learned.

## 📁 File naming convention

Each file is named:

```
YYYY-MM-DD_dayNN_short-topic-description.sql
```

- **Date first** → keeps files in chronological order on GitHub automatically.
- **Day number** → easy to reference ("check day03").
- **Topic slug** → tells you what's inside without opening the file.

## 📅 Log

### Day 01 — 2026-07-25
**File:** [`2026-07-25_day01_create-table-insert-select.sql`](./2026-07-25_day01_create-table-insert-select.sql)

Practiced:
- `CREATE DATABASE` and `USE`
- `CREATE TABLE` with `PRIMARY KEY`, `NOT NULL` constraints
- `INSERT INTO` (full column list vs. specific columns)
- Basic `SELECT *` and `SELECT` with specific columns

### Day 02 — 2026-07-26
**File:** [`2026-07-26_day02_update-delete-orderby.sql`](./2026-07-26_day02_update-delete-orderby.sql)

Practiced:
- `UPDATE ... SET` (single column, multiple rows, with `WHERE`)
- `DELETE FROM` with and without `WHERE` (and how it clears a whole table without it)
- Multi-row `INSERT INTO ... VALUES (...), (...), (...)`
- `ORDER BY` with `ASC`/`DESC`
- Filtering with `WHERE`

### Day 03 — 2026-07-27
**File:** [`2026-07-27_day03_aggregate-math-string-functions-login-table.sql`](./2026-07-27_day03_aggregate-math-string-functions-login-table.sql)

Practiced:
- Aggregate functions: `SUM`, `AVG`, `MAX`, `MIN`, `COUNT`
- Math functions: `ABS`, `CEILING`, `FLOOR`, `SIGN`, `SQUARE`, `SQRT`, `PI`, `COS`, `SIN`, `TAN`, `EXP`
- String functions: `LEN`, `UPPER`, `LOWER`, `LTRIM`, `RTRIM`, `SUBSTRING`, `REPLACE`, `REPLICATE`
- `IDENTITY` (auto-increment) and `UNIQUE` constraints on a new `tbl_user_login` table
- Basic login-style query using `WHERE ... AND`, `OR`, and `!=`

## 🧠 Notes to self
- `DELETE FROM table` with no `WHERE` clause removes **all** rows — be careful.
- `dbo.` is the default schema prefix in SQL Server (`dbo.table_name`).
- `IDENTITY` auto-generates primary key values, so you don't list that column in `INSERT`.
- `UNIQUE` stops duplicate values (e.g. same email/username twice) even though it's not the primary key.

## 🔜 Next up
- `JOIN`s across `employe_info` and `department_info`
- `GROUP BY` and `HAVING`
- `LIKE` pattern matching

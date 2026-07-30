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

### Day 04 — 2026-07-29
**File:** [`2026-07-29_day04_datetime-groupby-having-top-clone-db.sql`](./2026-07-29_day04_datetime-groupby-having-top-clone-db.sql)

Practiced:
- Date/time functions: `GETDATE()`, `SYSDATETIME()`, `CURRENT_TIMESTAMP`, `DATENAME`, `DATEDIFF`
- `GROUP BY` with aggregate functions and column aliases
- `HAVING` to filter grouped results
- `TOP(n)` to limit result rows
- Creating a second database (`clone_db`) and copying data across databases with `SELECT ... INTO ... FROM other_db.dbo.table`

### Day 05 — 2026-07-30
**File:** [`2026-07-30_day05_alter-table-default-identity-constraint.sql`](./2026-07-30_day05_alter-table-default-identity-constraint.sql)

Practiced:
- `ALTER TABLE ... ADD` to add new columns to an existing table
- `DEFAULT` values for a column
- Adding an `IDENTITY` column after table creation
- Named constraints with `CONSTRAINT ... UNIQUE`
- `UPDATE` with `WHERE` to set values row by row

## 🧠 Notes to self
- `DELETE FROM table` with no `WHERE` clause removes **all** rows — be careful.
- `dbo.` is the default schema prefix in SQL Server (`dbo.table_name`).
- `IDENTITY` auto-generates primary key values, so you don't list that column in `INSERT`.
- `UNIQUE` stops duplicate values (e.g. same email/username twice) even though it's not the primary key.
- `WHERE` filters rows before grouping; `HAVING` filters after `GROUP BY` — that's why `HAVING` can reference the grouped column.
- `SELECT * INTO new_table FROM other_db.dbo.table` creates and fills a table in one line — handy for quick copies/backups.
- `ALTER TABLE ... ADD column DEFAULT value` sets that value for existing rows too, not just future inserts.
- Naming a constraint (`CONSTRAINT Pid_key UNIQUE`) makes it easier to find/drop later than an auto-generated name.

## 🔜 Next up
- `JOIN`s across `employe_info` and `department_info`
- `LIKE` pattern matching
- Subqueries

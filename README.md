# Database Engineer Capstone

Little Lemon booking-system capstone submission.

## Deliverables

- `deliverables/erd/`: ER diagram (`.png`) and MySQL Workbench model (`.mwb`)
- `deliverables/sql/`: schema, seed data, stored procedures, verification script
- `deliverables/jupyter/`: connection and query/procedure notebooks
- `deliverables/tableau/`: Tableau workbook (`.twbx`), dashboard screenshots, and `orders.xlsx`

Required procedures included in SQL:
- `GetMaxQuantity()`
- `ManageBooking()`
- `UpdateBooking()`
- `AddBooking()`
- `CancelBooking()`

## Run Guide

1. Copy `.env.example` to `.env` and set DB credentials.
2. Run SQL scripts in MySQL Workbench (in order):
   - `deliverables/sql/01_schema.sql`
   - `deliverables/sql/02_seed_data.sql`
   - `deliverables/sql/03_stored_procedures.sql`
   - `deliverables/sql/04_verification.sql`
3. Run Jupyter notebooks:
   - `deliverables/jupyter/01_database_connection_setup.ipynb`
   - `deliverables/jupyter/02_query_and_procedure_checks.ipynb`
4. Tableau artifacts are already included in `deliverables/tableau/` (`00_workbook_complete.twbx`, screenshots, and `orders.xlsx`).
5. Open the workbook in Tableau or view the published visualization:
   - https://public.tableau.com/app/profile/viacheslav.danilov/viz/MetaDatabaseProject/Dashboard

## Submission Checklist

- [x] ER diagram exists: `deliverables/erd/LittleLemonDM.png`
- [x] Workbench model exists: `deliverables/erd/LittleLemonDM.mwb`
- [x] SQL scripts exist in `deliverables/sql/`
- [x] `GetMaxQuantity()`, `ManageBooking()`, `UpdateBooking()`, `AddBooking()`, `CancelBooking()` run successfully
- [x] Jupyter notebooks run successfully
- [x] Tableau workbook exists: `deliverables/tableau/00_workbook_complete.twbx`
- [x] Tableau screenshots exist in `deliverables/tableau/`
- [x] Tableau source data exists: `deliverables/tableau/orders.xlsx`

# Database Engineer Capstone

This repository contains the Little Lemon booking-system capstone submission in a reviewer-friendly structure.

## At a Glance

- `deliverables/erd/` - ER diagram (`LittleLemonDM.png`) and Workbench model (`LittleLemonDM.mwb`)
- `deliverables/sql/` - schema, seed data, required procedures, and verification script
- `deliverables/jupyter/` - notebook checks for DB connection, queries, and procedures
- `deliverables/tableau/` - workbook, screenshots, and source data (`orders.xlsx`)

Required procedures:
- `GetMaxQuantity()`
- `ManageBooking()`
- `UpdateBooking()`
- `AddBooking()`
- `CancelBooking()`

## How To Run

1. Create `.env` from `.env.example` and set your MySQL credentials.
2. Run SQL scripts in MySQL Workbench (in order):
   - `deliverables/sql/01_schema.sql`
   - `deliverables/sql/02_seed_data.sql`
   - `deliverables/sql/03_stored_procedures.sql`
   - `deliverables/sql/04_verification.sql`
3. Run the Jupyter notebooks:
   - `deliverables/jupyter/01_database_connection_setup.ipynb`
   - `deliverables/jupyter/02_query_and_procedure_checks.ipynb`
4. Tableau artifacts are already included in `deliverables/tableau/`.
5. Open `deliverables/tableau/00_workbook_complete.twbx` in Tableau, or use the published view:
   - `https://public.tableau.com/app/profile/viacheslav.danilov/viz/MetaDatabaseProject/Dashboard`

## Submission Checklist

- [x] ER diagram exists: `deliverables/erd/LittleLemonDM.png`
- [x] Workbench model exists: `deliverables/erd/LittleLemonDM.mwb`
- [x] SQL scripts exist in `deliverables/sql/`
- [x] `GetMaxQuantity()`, `ManageBooking()`, `UpdateBooking()`, `AddBooking()`, `CancelBooking()` run successfully
- [x] Jupyter notebooks run successfully
- [x] Tableau workbook exists: `deliverables/tableau/00_workbook_complete.twbx`
- [x] Tableau screenshots exist in `deliverables/tableau/`
- [x] Tableau source data exists: `deliverables/tableau/orders.xlsx`

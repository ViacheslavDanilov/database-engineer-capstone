# Database Engineer Capstone

This repository contains a clean, minimal setup for the Little Lemon booking-system capstone.

## What this project includes

- A MySQL schema for `LittleLemonDB`
- Seed data for quick testing
- All required stored procedures:
  - `GetMaxQuantity()`
  - `ManageBooking()`
  - `UpdateBooking()`
  - `AddBooking()`
  - `CancelBooking()`
- Jupyter notebooks for DB client setup and query functions
- Assignment-oriented docs and a run checklist

## Project structure

- `deliverables/sql/01_schema.sql` - creates the database and tables
- `deliverables/sql/02_seed_data.sql` - inserts sample rows
- `deliverables/sql/03_stored_procedures.sql` - creates required procedures
- `deliverables/sql/04_verification.sql` - quick procedure call checks
- `deliverables/jupyter/01_database_connection_setup.ipynb` - client setup notebook
- `deliverables/jupyter/02_query_and_procedure_checks.ipynb` - query and procedure notebook
- `deliverables/erd/LittleLemonDM.png` - ER diagram image
- `deliverables/erd/LittleLemonDM.mwb` - MySQL Workbench model
- `deliverables/tableau/00_workbook_complete.twbx` - Tableau workbook
- `deliverables/tableau/*.png` - Tableau worksheet/dashboard screenshots
- `orders.xlsx` - Tableau data source from the assignment
- `docs/run-guide.md` - step-by-step execution guide
- `docs/submission-checklist.md` - peer-review and submission checklist

## Tableau Public link

- `https://public.tableau.com/shared/CHTWXDQSD?:display_count=n&:origin=viz_share_link`

## Quick start

1. Create `.env` from `.env.example` and set DB credentials.
2. Run SQL scripts in order:
   - `deliverables/sql/01_schema.sql`
   - `deliverables/sql/02_seed_data.sql`
   - `deliverables/sql/03_stored_procedures.sql`
3. Run SQL verification:
   - `deliverables/sql/04_verification.sql`
4. Open and run Jupyter notebooks:
   - `deliverables/jupyter/01_database_connection_setup.ipynb`
   - `deliverables/jupyter/02_query_and_procedure_checks.ipynb`
5. Complete Tableau work using `orders.xlsx`.

For full details, use `docs/run-guide.md`.

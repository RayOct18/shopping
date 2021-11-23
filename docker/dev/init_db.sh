PGPASSWORD='postgres_dev'
psql -U postgres -f create_db.sql
psql -U postgres -f setup_db.sql

PGPASSWORD='app_admin'
psql -U app_admin -d shopping_db -f create_table.sql
psql -U app_admin -d shopping_db -f create_fk.sql
psql -U app_admin -d shopping_db -f grant_table_privilege.sq
psql -U app_admin -d shopping_db -f testing_data.sql

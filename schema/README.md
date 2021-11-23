# Steps

Step 1: Creating the database and corresponding user account for the project

	psql -U postgres -f 1-create_db.sql


Step 2: Setup the privilege in the database.

	psql -U postgres -f 2-setup_db.sql


Step 3: Create the table and foreign key in the database.

	psql -U app_admin -d shopping_db -f 3-create_table.sql
	psql -U app_admin -d shopping_db -f 4-create_fk.sql


Step 4: Grant table privilege to the users.

	psql -U app_admin -d shopping_db -f 5-grant_table_privilege.sql


Optional: Add testing data.

	psql -U app_admin -d shopping_db -f 6-testing_data.sql


[Database diagram](https://dbdiagram.io/d/6195bc3f02cf5d186b5c08b4)


# Reference
- [TritonHo Demo](https://github.com/TritonHo/demo/blob/phase1/schema)

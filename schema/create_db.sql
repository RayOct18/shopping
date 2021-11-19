/*
		admin is thre database owner
		It owns all objects(table, trigger, etc) in the database.
		Usually, it should be used ONLY when DBA wants to change the database schema.

		user is the account used by the program executable.
		Thus, it is NOT allowed to create / change/ any object in database.
		For normal table, only CURD privilege is granted, truncate table should NOT be granted.

		readonly is used during debugging.
		Trusted software developer will use this account to view the data in production datavase directly.
		Thus it should have slect privilege.
*/


CREATE ROLE app_admin LOGIN PASSWORD 'admin_password' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE app_user LOGIN PASSWORD 'user_password' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;
CREATE ROLE app_readonly LOGIN PASSWORD 'readonly_password' NOSUPERUSER INHERIT NOCREATEDB NOCREATEROLE NOREPLICATION;


CREATE DATABASE shopping_db with ENCODING = 'UTF8' LC_COLLATE = 'Chinese (Traditional)_Taiwan.950' LC_CTYPE = 'Chinese (Traditional)_Taiwan.950' CONNECTION LIMIT = -1 template=template0;

ALTER DATABASE shopping_db OWNER TO app_admin;

--the script to remove all tables in the database
DROP TABLE IF EXISTS users CASCADE;
DROP TYPE IF EXISTS delivery_type CASCADE;
DROP TABLE IF EXISTS address CASCADE;
DROP TABLE IF EXISTS shopping_cart CASCADE;
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TYPE IF EXISTS order_status CASCADE;
DROP TABLE IF EXISTS order_detail CASCADE;
DROP TABLE IF EXISTS message CASCADE;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  account varchar(1000) not null,
  password varchar(1000) not null,
  name varchar(1000) not null,
  tel varchar(1000) not null,
  email varchar(1000) not null,
  birthday date not null,
  created_time timestamp with time zone not null default current_timestamp,
  update_time timestamp with time zone not null default current_timestamp
);

CREATE TYPE delivery_type AS ENUM(
  'convenience_store',
  'home'
);

CREATE TABLE address (
  id SERIAL PRIMARY KEY,
  is_default boolean not null,
  name varchar(1000) not null,
  delivery_type delivery_type not null,
  tel varchar(1000) not null,
  address varchar(1000) not null,
  admin_id integer not null,
  created_time timestamp with time zone not null default current_timestamp,
  update_time timestamp with time zone not null default current_timestamp
);

CREATE TABLE shopping_cart (
  id SERIAL PRIMARY KEY,
  user_id integer not null,
  product_id integer not null,
  number integer not null,
  created_time timestamp with time zone not null default current_timestamp,
  update_time timestamp with time zone not null default current_timestamp
);

CREATE TABLE product (
  id SERIAL PRIMARY KEY,
  open boolean not null,
  amount integer not null,
  name varchar(1000) not null,
  price integer not null,
  description varchar(1000),
  image varchar(1000),
  created_time timestamp with time zone not null default current_timestamp,
  update_time timestamp with time zone not null default current_timestamp
);

CREATE TYPE order_status AS ENUM (
  'to_be_delivered',
  'shipped'
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  user_id integer not null,
  paid boolean not null,
  status order_status not null,
  address_id integer not null,
  total_price integer not null,
  created_time timestamp with time zone not null default current_timestamp,
  update_time timestamp with time zone not null default current_timestamp
);

CREATE TABLE order_detail (
  id SERIAL PRIMARY KEY,
  order_id integer not null,
  product_id integer not null,
  number integer not null
);

CREATE TABLE message (
  id SERIAL PRIMARY KEY,
  sender integer not null,
  receiver integer not null,
  text varchar(1000) not null,
  seen boolean not null default false,
  created_time timestamp with time zone not null default current_timestamp
);

ALTER TABLE users ADD CONSTRAINT unique_account UNIQUE (account);
ALTER TABLE users ADD CONSTRAINT unique_tel UNIQUE (tel);
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE (email);

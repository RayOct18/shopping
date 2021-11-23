\connect shopping_db app_admin

SET client_encoding = 'UTF8';

INSERT INTO users (account, password, name, tel, email, birthday)
VALUES
('test1', 'test1_password', 'Mr test1', '0912345678', 'test1@test.com', '1999-1-4'),
('test2', 'test2_password', 'Mr test2', '0912345673', 'test2@test.com', '1992-3-7');

INSERT INTO address (is_default, name, delivery_type, tel, address, admin_id)
VALUES
('true', 'test1', 'home', '0912345034', '台北市', 1),
('false', 'test1', 'convenience_store', '0912345034', '新北市', 1);

INSERT INTO product (open, amount, name, price, description, image)
VALUES
('true', 50, '西瓜', 100, '好吃西瓜', 'https://image.jpg'),
('true', 100, '香蕉', 50, '好吃香蕉', 'https://image.jpg');

INSERT INTO shopping_cart (user_id, product_id, number)
VALUES
(1, 1, 10),
(1, 2, 5);

INSERT INTO orders (user_id, paid, status, address_id, total_price)
VALUES
(1, 'false', 'to_be_delivered', 1, 1000),
(1, 'true', 'shipped', 2, 500);

INSERT INTO order_detail (order_id, product_id, number)
VALUES
(1, 1, 10),
(1, 2, 20);

INSERT INTO message (sender, receiver, text, seen)
VALUES
(1, 2, 'hello', 'true'),
(1, 2, 'im fine', 'false');

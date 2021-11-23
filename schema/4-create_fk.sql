\connect shopping_db app_admin

ALTER TABLE address ADD FOREIGN KEY (admin_id) REFERENCES users (id) MATCH FULL;
ALTER TABLE shopping_cart ADD FOREIGN KEY (user_id) REFERENCES users (id) MATCH FULL;
ALTER TABLE shopping_cart ADD FOREIGN KEY (product_id) REFERENCES product (id) MATCH FULL;
ALTER TABLE orders ADD FOREIGN KEY (user_id) REFERENCES users (id) MATCH FULL;
ALTER TABLE orders ADD FOREIGN KEY (address_id) REFERENCES address (id) MATCH FULL;
ALTER TABLE order_detail ADD FOREIGN KEY (order_id) REFERENCES orders (id) MATCH FULL;
ALTER TABLE order_detail ADD FOREIGN KEY (product_id) REFERENCES product (id) MATCH FULL;
ALTER TABLE message ADD FOREIGN KEY (sender) REFERENCES users (id) MATCH FULL;
ALTER TABLE message ADD FOREIGN KEY (receiver) REFERENCES users (id) MATCH FULL;

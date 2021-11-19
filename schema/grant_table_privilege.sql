GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE users to app_user;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE address to app_user;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE shopping_cart to app_user;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE product to app_user;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE orders to app_user;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE order_detail to app_user;
GRANT SELECT, INSERT, UPDATE, DELETE, REFERENCES ON TABLE message to app_user;

GRANT SELECT ON TABLE users to app_readonly;
GRANT SELECT ON TABLE address to app_readonly;
GRANT SELECT ON TABLE shopping_cart to app_readonly;
GRANT SELECT ON TABLE product to app_readonly;
GRANT SELECT ON TABLE orders to app_readonly;
GRANT SELECT ON TABLE order_detail to app_readonly;
GRANT SELECT ON TABLE message to app_readonly;

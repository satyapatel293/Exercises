DELETE FROM devices 
WHERE name = 'Accelerometer';


SELECT * FROM devices 
WHERE name = 'Accelerometer'


DELETE FROM parts 
WHERE device_id = 1


CREATE TABLE orders (
    order_id integer PRIMARY KEY,
    shipping_address text DEFAULT '149 beacon ave'
);

CREATE TABLE order_items (
    id serial PRIMARY KEY,
    order_id integer REFERENCES orders(order_id) ON DELETE CASCADE,
    quantity integer DEFAULT 10
);

INSERT INTO order_items VALUES (1, 1, 12), (2, 1, 10) 
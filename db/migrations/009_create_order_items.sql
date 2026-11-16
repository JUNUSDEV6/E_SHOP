CREATE TABLE order_items (
	order_id	bigint REFERENCES orders(id) ON DELETE CASCADE,
	product_id	bigint REFERENCES products(id),
	quantity	integer NOT NULL CHECK (quantity > 0),
	unit_price	numeric(10,2) NOT NULL CHECK (unit_price >= 0),
	PRIMARY KEY (order_id, product_id)
);
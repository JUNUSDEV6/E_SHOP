CREATE TABLE category (
	id		 bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	slug	 text NOT NULL UNIQUE
);

CREATE TABLE product_category (
	product_id 	bigint REFERENCES products(id) ON DELETE CASCADE,
	category_id bigint REFERENCES category(id) ON DELETE CASCADE,
	PRIMARY KEY (product_id, category_id)
);
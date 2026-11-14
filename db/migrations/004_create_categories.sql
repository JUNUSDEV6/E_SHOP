CREATE TABLE categories (
	id		 bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	slug	 text NOT NULL UNIQUE
);

CREATE TABLE product_categories (
	product_id 	bigint REFERENCES products(id) ON DELETE CASCADE,
	category_id bigint REFERENCES categories(id) ON DELETE CASCADE,
	PRIMARY KEY (product_id, category_id)
);
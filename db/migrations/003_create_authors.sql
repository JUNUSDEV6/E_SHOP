CREATE TABLE authors (
	id		 bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name	 text NOT NULL UNIQUE
);

CREATE TABLE book_authors (
	product_id 	bigint REFERENCES book_details(product_id) ON DELETE CASCADE,
	author_id 	bigint REFERENCES authors(id),
	PRIMARY KEY (product_id, author_id)
);
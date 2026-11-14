CREATE TABLE publishers (
	id		 bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	name	 text NOT NULL
);

CREATE TABLE book_details (
	product_id 			bigint PRIMARY KEY REFERENCES products(id) ON DELETE CASCADE,
	publisher_id 		bigint REFERENCES publishers(id),
	publication_year 	integer CHECK (publication_year BETWEEN 1400 AND 2100),
	page_count			integer CHECK (page_count > 0),
	format				text,
	language			text
);
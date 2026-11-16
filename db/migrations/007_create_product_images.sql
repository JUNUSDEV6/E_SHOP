CREATE TABLE product_images (
	id		 	bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	product_id 	bigint NOT NULL REFERENCES products(id) ON DELETE CASCADE,
	url			text NOT NULL,
	position    integer NOT NULL DEFAULT 0 CHECK (position >= 0)
);
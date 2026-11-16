CREATE TABLE product_translations (
    product_id  bigint REFERENCES products(id) ON DELETE CASCADE,
    locale      text REFERENCES locales(code),
    description text NOT NULL,
    PRIMARY KEY (product_id, locale)
);
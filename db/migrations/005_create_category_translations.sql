CREATE TABLE locales (
	code text PRIMARY KEY,
	name text NOT NULL
);

INSERT INTO locales (code, name) VALUES
	('fr', 'Français'),
    ('nl', 'Nederlands'),
    ('en', 'English');

CREATE TABLE category_translations (
	category_id bigint REFERENCES categories(id) ON DELETE CASCADE,
	locale 		text REFERENCES locales(code),
	name		text NOT NULL,
	PRIMARY KEY (category_id, locale)
);
CREATE TABLE orders (
    id              bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    status          text NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'paid', 'fulfilled', 'cancelled')),
    first_name      text NOT NULL,
    last_name       text NOT NULL,
    email           text NOT NULL,
    phone           text,
    locale          text NOT NULL REFERENCES locales(code),
    delivery_method text NOT NULL CHECK (delivery_method IN ('shipping', 'pickup')),
    street          text,
    postal_code     integer CHECK (postal_code BETWEEN 1000 AND 9999),
    city            text,
    shipping_cost   numeric(10,2) NOT NULL DEFAULT 0 CHECK (shipping_cost >= 0),
    created_at      timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CHECK (delivery_method = 'pickup' OR (street IS NOT NULL AND postal_code IS NOT NULL AND city IS NOT NULL))
);
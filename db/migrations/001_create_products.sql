CREATE TABLE products (
    id         bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    title      text NOT NULL,
    price      numeric(10,2) NOT NULL CHECK (price >= 0),
    stock      integer NOT NULL DEFAULT 0 CHECK (stock BETWEEN 0 AND 3),
    status     text NOT NULL DEFAULT 'inactive' CHECK (status IN ('active', 'inactive')),
    created_at timestamptz NOT NULL DEFAULT CURRENT_TIMESTAMP
);
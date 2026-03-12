CREATE TYPE STATUS AS ENUM('in progress', 'complete');

CREATE TABLE seller (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
name VARCHAR(50) NOT NULL,
email VARCHAR(255) NOT NULL,
password VARCHAR(100) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
seller_id UUID REFERENCES seller(id),
name VARCHAR(100) NOT NULL,
count INT NOT NULL,
price INT NOT NULL,
description TEXT,
image TEXT
);

CREATE TABLE orders (
id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
product_name VARCHAR(100) NOT NULL,
product_count INT NOT NULL,
product_id uuid REFERENCES products(id),
order_name VARCHAR(50) NOT NULL,
order_phone_number VARCHAR(10) NOT NULL,
order_location POINT NOT NULL,
total_price INT NOT NULL,
status STATUS NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

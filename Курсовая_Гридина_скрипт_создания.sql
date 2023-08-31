DROP DATABASE IF EXISTS gridina_shop;
CREATE DATABASE gridina_shop;
USE gridina_shop;

DROP TABLE IF EXISTS order_products;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS discounts;
DROP TABLE IF EXISTS storehouses_products;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS suppliers;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS storehouses;
DROP TABLE IF EXISTS customers; 
DROP TABLE IF EXISTS rubrics;

CREATE TABLE categories(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100) NOT NULL);
   
CREATE TABLE rubrics(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100) NOT NULL); 

CREATE TABLE suppliers(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(50));

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)  NOT NULL,
    price NUMERIC(9,2) NOT NULL,
    supplier_id BIGINT UNSIGNED,    
    category_id BIGINT UNSIGNED,
    rubric_id BIGINT UNSIGNED,
    created_at DATETIME DEFAULT NOW(),
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories (id),
    FOREIGN KEY (rubric_id) REFERENCES rubrics (id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers (id));

CREATE INDEX index_of_product_name ON products (name); 
   
CREATE TABLE discounts(
    product_id BIGINT UNSIGNED NOT NULL,
    started_at DATE NOT NULL,
    finished_at DATE,
    created_at DATE NOT NULL,
    updated_at DATE,
    new_price NUMERIC(9,2) NOT NULL,      
    CONSTRAINT PK_discounts PRIMARY KEY (product_id, started_at),  
    FOREIGN KEY (product_id) REFERENCES products (id));
   

CREATE TABLE storehouses(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL);

CREATE TABLE storehouses_products(    
    product_id BIGINT UNSIGNED NOT NULL,
    storehouse_id BIGINT UNSIGNED,
    product_count  INTEGER UNSIGNED NOT NULL,    
    CONSTRAINT PK_storehouse_product PRIMARY KEY (storehouse_id, product_id),  
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (storehouse_id) REFERENCES storehouses (id));


CREATE TABLE customers(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(100),
    address VARCHAR(1000),
    created_at DATETIME DEFAULT NOW());
   
   
CREATE INDEX index_of_customer_name ON customers (name);

CREATE TABLE orders(
    id SERIAL PRIMARY KEY,
    orders_product_id BIGINT UNSIGNED NOT NULL, 
    customer_id BIGINT UNSIGNED NOT NULL,
    storehouse_id BIGINT UNSIGNED NOT NULL,    
    orders_date DATETIME NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (storehouse_id) REFERENCES storehouses (id));
   
   CREATE TABLE order_products(
    order_id BIGINT UNSIGNED NOT NULL,
    product_id BIGINT UNSIGNED NOT NULL,
    product_count BIGINT UNSIGNED NOT NULL,
    product_price NUMERIC(9,2) NOT NULL,
    CONSTRAINT PK_order_products PRIMARY KEY (order_id, product_id),  
    FOREIGN KEY (product_id) REFERENCES products (id),
    FOREIGN KEY (order_id) REFERENCES orders (id));	
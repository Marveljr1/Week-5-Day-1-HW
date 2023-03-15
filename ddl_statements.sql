CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	address VARCHAR(100),
	loyalty_member BOOLEAN DEFAULT FALSE
);

SELECT *
FROM customer;

ALTER TABLE customer 
ADD COLUMN username VARCHAR  (25); 


SELECT *
FROM customer;

ALTER TABLE customer
RENAME COLUMN email TO email_address;

SELECT *
FROM customer;


CREATE TABLE "order"( 
	order_id SERIAL PRIMARY KEY,
	order_date timestamp DEFAULT current_timestamp,
	date_shipped timestamp,
	customer_id integer NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM "order";


CREATE TABLE order_product(
	order_id integer NOT NULL,
	FOREIGN key(order_id) REFERENCES "order"(order_id),
	product_id integer NOT NULL,
	FOREIGN KEY (product_id) REFERENCES product(product_id)
);



CREATE TABLE product(
	product_id SERIAL PRIMARY KEY,
	prod_name VARCHAR(50),
	description VARCHAR(200),
	price NUMERIC(5,2),
	quantity integer
);


ALTER TABLE order_product
ADD FOREIGN key(product_id) REFERENCES product(product_id); 

SELECT *
FROM product;

ALTER TABLE product
RENAME TO item;


CREATE TABLE seller(
	seller_id SERIAL PRIMARY KEY,
	seller_name VARCHAR(50) NOT NULL,
	description VARCHAR(50),
	email VARCHAR(50),
	adderess VARCHAR(100)
);


ALTER TABLE item
ADD COLUMN seller_id integer NOT NULL;

ALTER TABLE item
ADD FOREIGN key(seller_id) REFERENCES seller(seller_id);

CREATE TABLE  test(
	test_id SERIAL PRIMARY KEY,
	col_1 integer,
	col_2 boolean,
);


ALTER TABLE test
DROP COLUMN col_1;

SELECT *
FROM test;
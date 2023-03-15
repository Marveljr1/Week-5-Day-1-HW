--CREATE TABLE customer
CREATE TABLE customer(
	costumer_id SERIAL PRIMARY KEY,
	customer_name VARCHAR(50)
);

ALTER TABLE customer
ADD movie VARCHAR(50)

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(50)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id VARCHAR(50),
	FOREIGN KEY customer_id REFERENCES customer_id
);

SELECT *
FROM customer;


CREATE TABLE theater(
	theater_id FOREIGN KEY,
	theater_name VARCHAR(50)
);

SELECT *
FROM ticket;


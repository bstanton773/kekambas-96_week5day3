SELECT *
FROM customer;

-- Add a row to the customer table
INSERT INTO customer (
	first_name,
	last_name,
	address,
	email_address,
	loyalty_member,
	username 
) VALUES (
	'Brian',
	'Stanton',
	'555 Circle Drive',
	'brians@codingtemple.com',
	TRUE,
	'brians'
);


SELECT *
FROM customer;


INSERT INTO customer (
	address,
	email_address,
	username,
	loyalty_member,
	last_name,
	first_name
) VALUES (
	'444 Square Road',
	'sclaus@northpole.gov',
	'santa',
	FALSE,
	'Kringle',
	'Kris'
);

SELECT *
FROM customer;


-- Insert without column names
INSERT INTO customer VALUES (
	3,
	'Peter',
	'Rabbit',
	'123 Real Street',
	'prabbit@hopper.com',
	TRUE,
	'rabbit'
);

SELECT * FROM customer;



INSERT INTO customer (
	first_name,
	last_name,
	address,
	email_address,
	loyalty_member,
	username 
) VALUES (
	'Fred',
	'Flinstone',
	'222 Circle Drive',
	'fredf@codingtemple.com',
	TRUE,
	'fredf'
);

SELECT * FROM customer;

-- Add multiple rows of data in one command
INSERT INTO item(
	prod_name,
	description,
	price
) VALUES (
	'Water Bottle',
	'Stay hydrated while looking cool as heck!',
	9.99
), (
	'Dry Erase Marker',
	'Take notes and then erase it away without water!',
	1.49
),(
	'Deck of Cards',
	'52 cards and unlimited fun!',
	5.55
);

SELECT *
FROM item;


-- Inserting data into a table with a foreign key
SELECT * FROM order_;

INSERT INTO order_(customer_id) VALUES (1);

SELECT * FROM order_;

--SELECT column_name, data_type 
--FROM information_schema.columns 
--WHERE table_name = 'order_';

-- CANNOT INSERT Foreign Key Values that reference non-existent data
--INSERT INTO order_(customer_id) VALUES (5);


-- Change the sequence
ALTER SEQUENCE order__order_id_seq
RESTART WITH 100;

INSERT INTO order_(customer_id) VALUES(3);

SELECT * FROM order_;


-- Insert data into our order_product join table
INSERT INTO order_product VALUES (1, 1, 3), (1, 3, 1), (100, 2, 5), (100, 1, 1);

SELECT *
FROM order_product;

SELECT *
FROM customer;

SELECT *
FROM order_;

SELECT *
FROM item;

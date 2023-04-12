--used for references to see columns
-- CREATE TABLE customer (
--   customer_id SERIAL PRIMARY KEY,
--   first_name VARCHAR(100),
--   last_name VARCHAR(100),
--   billing_info VARCHAR(150),
--     FOREIGN KEY (customer_id)
--       REFERENCES ticket(customer_id)
-- );

INSERT INTO customer(
	address,
	phone_number,
	email,
	username,
	first_name,
	last_name
)VALUES(
	'1105 E Katella Ave Apt 320 Los Angeles, CA 92336',
	'(630)852-8209',
	'Abela@codingtemple.com',
	'AbBoutMoney',
	'Aristo',
	'Billions'
)

SELECT * 
FROM customer;

ALTER TABLE customer
ADD COLUMN first_name VARCHAR(100);
ALTER TABLE customer
ADD COLUMN last_name VARCHAR(100);

UPDATE customer
SET first_name = 'Batman'
WHERE customer_id = 1;

UPDATE customer
SET last_name = 'Godfather'
WHERE customer_id = 1;
--used for references to see columns
-- CREATE TABLE ticket (
--   ticket_id SERIAL PRIMARY KEY,
--   order_date DATE,
--   sub_total NUMERIC(4,2),
--   total_cost NUMERIC(4,2),
--   customer_id SERIAL,
--   PRIMARY KEY (ticket_id)
-- );
INSERT INTO ticket(
	order_date,
	sub_total,
	total_cost,
	customer_id,
) VALUES (
	4/12,
	20,
	40.00,
	2
) 


SELECT * 
FROM ticket;
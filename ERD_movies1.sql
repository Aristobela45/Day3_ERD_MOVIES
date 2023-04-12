CREATE TABLE ticket (
  ticket_id SERIAL PRIMARY KEY,
  order_date DATE,
  sub_total NUMERIC(4,2),
  total_cost NUMERIC(4,2),
  customer_id INTEGER,
  PRIMARY KEY (ticket_id)
);

CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  billing_info VARCHAR(150),
    FOREIGN KEY (customer_id)
      REFERENCES ticket(customer_id)
);

CREATE TABLE concession (
  concession_id SERIAL PRIMARY KEY,
  amount NUMERIC(5,2),
  refreshment_name VARCHAR(100),
);

CREATE TABLE movie (
  movie_num SERIAL PRIMARY KEY,
  movie_title VARCHAR(100),
  genre VARCHAR(100),
  movie_rating VARCHAR(100),
    FOREIGN KEY (movie_rating)
      REFERENCES concession(refreshment_name)
);


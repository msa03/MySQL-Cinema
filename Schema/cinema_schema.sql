DROP DATABASE IF EXISTS cinema;
CREATE DATABASE cinema;
USE cinema;

CREATE TABLE films (
	film_id INT AUTO_INCREMENT,
	film_name VARCHAR(50) NOT NULL,
	film_length INT NOT NULL,
	film_genre VARCHAR(20) NOT NULL,
	3D BOOLEAN DEFAULT(FALSE),
	PRIMARY KEY (film_id)
);

CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT,
	customer_name VARCHAR(40) NOT NULL,
	customer_age TINYINT NOT NULL,
	customer_email VARCHAR(50) UNIQUE,
	PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
	order_id INT AUTO_INCREMENT,
	fk_film_id INT, 
	fk_customer_id INT,
	date_of_booking DATETIME NOT NULL,
	PRIMARY KEY (order_id),
	FOREIGN KEY (fk_film_id) REFERENCES films(film_id),
	FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id)
);
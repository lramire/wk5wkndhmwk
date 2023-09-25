CREATE TABLE Sales_Staff (
	sales_staff_id SERIAL PRIMARY KEY,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	email VARCHAR(30),
	address VARCHAR(20)
);

CREATE TABLE Customer (
	customer_id serial PRIMARY KEY,
	phone VARCHAR(15),
	email VARCHAR(30),
	address VARCHAR(30),
	state VARCHAR(30),
	zip_code VARCHAR(30),
	first_name VARCHAR(40),
	last_name VARCHAR(40)
);


CREATE TABLE Sold_Car_Invoice (
	sold_invoice_id SERIAL PRIMARY KEY,
	car_id INTEGER,
	sales_staff_id INTEGER,
	customer_id INTEGER,
	card_number INTEGER,
	expiration_date DATE,
	CVV INTEGER,
	total NUMERIC(11,2),
	paid BOOLEAN,
	sub_total NUMERIC(11,2),
	tax NUMERIC(9,2),
	FOREIGN KEY (car_id) REFERENCES Car(car_id),
	FOREIGN KEY (sales_staff_id) REFERENCES Sales_Staff(sales_staff_id),
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
  
);

CREATE TABLE Car (
	car_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	sales_staff_id INTEGER,
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
	FOREIGN KEY (sales_staff_id) REFERENCES Sales_Staff(sales_staff_id)
);

CREATE TABLE Service (
	service_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	car_id INTEGER,
	labor NUMERIC(9,2),
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
	FOREIGN KEY (car_id) REFERENCES Car(car_id)
);


CREATE TABLE Parts (
	parts_id SERIAL PRIMARY KEY,
	car_id INTEGER,
	service_id INTEGER,
	FOREIGN KEY (service_id) REFERENCES Service(service_id),
	FOREIGN KEY (car_id) REFERENCES Car(car_id)
);

CREATE TABLE Mechanic (
	mechanic_id SERIAL PRIMARY KEY,
	car_id INTEGER,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	email VARCHAR(30),
	address VARCHAR(20),
	FOREIGN KEY (car_id) REFERENCES Car(car_id)
);


CREATE TABLE Service_Invoice (
	service_invoice_id SERIAL PRIMARY KEY,
	car_id INTEGER,
	total  NUMERIC(11,2),
	sub_total NUMERIC(11,2),
	card_number INTEGER,
	expiration_date DATE,
	CVV INTEGER,
	paid BOOLEAN,
	tax NUMERIC(9,2),
	service_id INTEGER,
	parts_id INTEGER,
	mechanic_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES Car(car_id),
	FOREIGN KEY (service_id) REFERENCES Service(service_id),
	FOREIGN KEY (parts_id) REFERENCES Parts(parts_id),
	FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id),
	FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);
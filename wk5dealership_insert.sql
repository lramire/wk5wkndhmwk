INSERT INTO Sales_Staff (
	
	sales_staff_id,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	1,
	'Johnny',
	'Applebottom',
	'applebottom@me.com',
	'294 Beetlejuice Rd'
);

INSERT INTO Sales_Staff (
	
	sales_staff_id,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	2,
	'Hello',
	'Kitty',
	'hellokitty@gmail.com',
	'4973 Flower St'
);

INSERT INTO Sales_Staff (
	
	sales_staff_id,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	3,
	'George',
	'Ofthejungle',
	'junglefever@yahoo.com',
	'83 Tree Court'
);

INSERT INTO Sales_Staff (
	
	sales_staff_id,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	4,
	'Rick',
	'Jackson',
	'rjson@live.com',
	'7834 Fruit Lane'
);

SELECT *
FROM Sales_Staff;

INSERT INTO Customer (
	
	customer_id,
	phone,
	email,
	address,
	state,
	zip_code,
	first_name,
	last_name
)
VALUES(
	1,
	'716-731-8567',
	'ungefr@yahoo.com',
	'125 Blue St',
	'NE',
	'20974',
	'Al',
	'Bam'
);
INSERT INTO Customer (
	
	customer_id,
	phone,
	email,
	address,
	state,
	zip_code,
	first_name,
	last_name
)
VALUES(
	2,
	'196-198-4567',
	'heity@gmail.com',
	'1209 Yellow Blvd',
	'AZ',
	'84024',
	'Cam',
	'Jo'
);
INSERT INTO Customer (
	
	customer_id,
	phone,
	email,
	address,
	state,
	zip_code,
	first_name,
	last_name
)
VALUES(
	3,
	'234-786-4524',
	'suron@live.com',
	'18923 Red Ter',
	'CO',
	'35018',
	'Joe',
	'Hill'
);
INSERT INTO Customer (
	
	customer_id,
	phone,
	email,
	address,
	state,
	zip_code,
	first_name,
	last_name
)
VALUES(
	4,
	'494-819-8198',
	'applebom@me.com',
	'8374 Purple Dr',
	'PA',
	'18931',
	'Bobby',
	'Yam'
);

SELECT *
FROM Customer;

INSERT INTO Sold_Car_Invoice (
	
	sold_invoice_id,
	car_id,
	sales_staff_id,
	customer_id,
	card_number,
	expiration_date,
	CVV,
	total,
	paid ,
	sub_total,
	tax
)
VALUES(
	1,
	4,
	3,
	1,
	2154-6674-1897-3489,
	'1111-10-08',
	'873',
	'5557.00',
	true,
	'3654.90',
	'1915.10'
);
INSERT INTO Sold_Car_Invoice (
	
	sold_invoice_id,
	car_id,
	sales_staff_id,
	customer_id,
	card_number,
	expiration_date,
	CVV,
	total,
	paid ,
	sub_total,
	tax
)
VALUES(
	2,
	3,
	4,
	3,
	9031-1489-1897-3489,
	'1251-10-08',
	'097',
	'99.99',
	false,
	'50.90',
	'49.10'
);
INSERT INTO Sold_Car_Invoice (
	
	sold_invoice_id,
	car_id,
	sales_staff_id,
	customer_id,
	card_number,
	expiration_date,
	CVV,
	total,
	paid ,
	sub_total,
	tax
)
VALUES(
	3,
	2,
	1,
	4,
	1819-6674-1897-3489,
	'8013-10-08',
	'234',
	'8791.00',
	true,
	'4831.90',
	'3859.70'
);
INSERT INTO Sold_Car_Invoice (
	
	sold_invoice_id,
	car_id,
	sales_staff_id,
	customer_id,
	card_number,
	expiration_date,
	CVV,
	total,
	paid ,
	sub_total,
	tax
)
VALUES(
	4,
	1,
	2,
	2,
	2154-6674-1897-3489,
	'9873-10-08',
	'189',
	'5557.00',
	true,
	'3654.90',
	'1915.10'
);

SELECT *
FROM Sold_Car_Invoice;

INSERT INTO Car (
	
	car_id,
	customer_id,
	sales_staff_id
)
VALUES(
	1,
	2,
	1
);
INSERT INTO Car (
	
	car_id,
	customer_id,
	sales_staff_id
)
VALUES(
	2,
	1,
	4
);
INSERT INTO Car (
	
	car_id,
	customer_id,
	sales_staff_id
)
VALUES(
	3,
	4,
	2
);
INSERT INTO Car (
	
	car_id,
	customer_id,
	sales_staff_id
)
VALUES(
	4,
	3,
	3
);

SELECT *
FROM Car;

INSERT INTO Service (
	
	service_id,
	customer_id,
	car_id,
	labor
)
VALUES(
	1,
	2,
	3,
	'90.00'
);
INSERT INTO Service (
	
	service_id,
	customer_id,
	car_id,
	labor
)
VALUES(
	2,
	3,
	4,
	'160.00'
);
INSERT INTO Service (
	
	service_id,
	customer_id,
	car_id,
	labor
)
VALUES(
	3,
	4,
	1,
	'320.00'
);
INSERT INTO Service (
	
	service_id,
	customer_id,
	car_id,
	labor
)
VALUES(
	4,
	1,
	2,
	'500.00'
);

SELECT *
FROM Service;

INSERT INTO Parts (
	
	parts_id,
	car_id,
	service_id
)
VALUES(
	1,
	4,
	3
);
INSERT INTO Parts (
	
	parts_id,
	car_id,
	service_id
)
VALUES(
	2,
	1,
	4
);
INSERT INTO Parts (
	
	parts_id,
	car_id,
	service_id
)
VALUES(
	3,
	2,
	1
);
INSERT INTO Parts (
	
	parts_id,
	car_id,
	service_id
)
VALUES(
	4,
	3,
	2
);

SELECT *
FROM Parts;

INSERT INTO Mechanic (
	
	mechanic_id,
	car_id ,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	1,
	3,
	'Blake',
	'Rome',
	'blome@gmail.com',
	'42 Secret Rd'
);
INSERT INTO Mechanic (
	
	mechanic_id,
	car_id ,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	2,
	4,
	'Jake',
	'Larp',
	'larp@gmail.com',
	'973 Hill Rd'
);
INSERT INTO Mechanic (
	
	mechanic_id,
	car_id ,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	3,
	1,
	'Jan',
	'Fritz',
	'jfritz@gmail.com',
	'23246 Albert Dr'
);
INSERT INTO Mechanic (
	
	mechanic_id,
	car_id ,
	first_name,
	last_name,
	email,
	address
)
VALUES(
	4,
	2,
	'Holly',
	'Schultz',
	'olly@gmail.com',
	'1984 Random St'
);

SELECT *
FROM Mechanic;

INSERT INTO Service_Invoice (
	
	service_invoice_id,
	car_id,
	total,
	sub_total,
	card_number,
	expiration_date,
	CVV,
	paid,
	tax,
	service_id,
	parts_id,
	mechanic_id,
	customer_id
)
VALUES(
	1,
	4,
	'78.00',
	'38.00',
	2154-6674-1897-3489,
	'9873-10-08',
	'189',
	true,
	'40.00',
	2,
	3,
	1,
	2
);
INSERT INTO Service_Invoice (
	
	service_invoice_id,
	car_id,
	total,
	sub_total,
	card_number,
	expiration_date,
	CVV,
	paid,
	tax,
	service_id,
	parts_id,
	mechanic_id,
	customer_id
)
VALUES(
	2,
	1,
	'78.00',
	'38.00',
	2154-6674-1897-3489,
	'9873-10-08',
	'189',
	true,
	'40.00',
	3,
	4,
	2,
	3
);
INSERT INTO Service_Invoice (
	
	service_invoice_id,
	car_id,
	total,
	sub_total,
	card_number,
	expiration_date,
	CVV,
	paid,
	tax,
	service_id,
	parts_id,
	mechanic_id,
	customer_id
)
VALUES(
	3,
	2,
	'983.00',
	'500.00',
	9837-1297-1289-3489,
	'9873-10-08',
	'894',
	false,
	'483',
	4,
	1,
	3,
	4
);
INSERT INTO Service_Invoice (
	
	service_invoice_id,
	car_id,
	total,
	sub_total,
	card_number,
	expiration_date,
	CVV,
	paid,
	tax,
	service_id,
	parts_id,
	mechanic_id,
	customer_id
)
VALUES(
	4,
	3,
	'150.00',
	'130.00',
	1876-1893-1897-3489,
	'9873-10-08',
	'416',
	true,
	'20.00',
	1,
	2,
	4,
	1
);
SELECT *
FROM Service_Invoice;
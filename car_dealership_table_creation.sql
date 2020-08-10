CREATE TABlE salesperson(
	staff_id Serial,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	contact_num VARCHAR(15),
	email VARCHAR(200),
	PRIMARY KEY (staff_id)
);

CREATE TABLE car_inventory(
	serial_id integer,
	make VARCHAR(15),
	model VARCHAR(30),
	staff_id integer,
	customer_id integer,
	PRIMARY KEY(serial_id),
	CONSTRAINT FK_salesperson FOREIGN KEY(staff_id) REFERENCES salesperson(staff_id),
	CONSTRAINT FK_customer FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE customer(
	customer_id Serial,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(200),
	address VARCHAR(200),
	phone VARCHAR(15),
	PRIMARY KEY (customer_id)
);

CREATE TABLE sales_invoice (
	sales_id Serial,
	amount Numeric(9, 2),
	purchase_date DATE,
	serial_id integer,
	staff_id integer,
	customer_id integer,
	PRIMARY KEY (sales_id),
	CONSTRAINT FK_car_inventory FOREIGN KEY(serial_id) REFERENCES car_inventory(serial_id),
	CONSTRAINT FK_salesperson FOREIGN KEY(staff_id) REFERENCES salesperson(staff_id),
	CONSTRAINT FK_customer FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE mechanic (
	mechanic_id Serial,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email VARCHAR(100),
	address VARCHAR(200),
	phone VARCHAR(15),
	PRIMARY KEY (mechanic_id)
);

CREATE TABLE mechanic_record (
	record_id Serial,
	service_id integer,
	mechanic_id integer,
	PRIMARY KEY (record_id),
	CONSTRAINT FK_service_invoice FOREIGN KEY(service_id) REFERENCES service_invoice(service_id),
	CONSTRAINT FK_mechanic FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id)
);

CREATE TABLE parts (
	parts_id Serial,
	part_type VARCHAR(100),
	part_price Numeric(6,2),
	service_id Integer,
	PRIMARY KEY (parts_id),
	CONSTRAINT FK_service_invoice FOREIGN KEY(service_id) REFERENCES service_invoice(service_id)
);

CREATE TABLE service_invoice (
	service_id Serial,
	order_date DATE,
	amount Numeric(8,2),
	total_cost Numeric(10,2),
	description VARCHAR(500),
	PRIMARY KEY(service_id)
);

ALTER TABLE service_invoice
ADD COLUMN customer_id integer;

ALTER TABLE service_invoice
ADD CONSTRAINT customer
FOREIGN KEY (customer_id)
REFERENCES customer(customer_id);

ALTER TABLE service_invoice
ADD COLUMN item_id integer; 

ALTER TABLE service_invoice
ADD CONSTRAINT FK_parts
FOREIGN KEY (item_id)
REFERENCES parts(parts_id);
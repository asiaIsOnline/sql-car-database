INSERT INTO salesperson (first_name, last_name, contact_num, email)
VALUES  ('Asia', 'B', 5555555555, 'asiab@gmail.com'),
		('Aaron', 'B', 8882225555, 'aaronb@aol.com'),
		('Sierra', 'D', 7775553431, 'sierrad@gmail.com'),
		('Kitty', 'M', 5558883696, 'kittym@gmail.com'),
		('Joe', 'Star', 7177775555, 'joestar@gmail.com');

INSERT INTO customer (first_name, last_name, email, address, phone)
VALUES ('Rin', 'Matsuoka', 'rwinners@gmail.com', '555 West Win Way', 9997773777),
		('Haruka', 'Nanase', 'nanaharu@aol.com', '999 W. Water Way', 5556559555),
		('Makoto', 'Tachibana', 'takimomo@gmail.com', '333 Fair Street', 1234567899),
		('Nagisa', 'Hazuki', 'Nagisa-chan@gmail.com', '598 Nana Fairway', 7771234566),
		('Rei', 'Ryuugazaki', 'Reiisbae@yahoo.com', '999 Determination Line', 8511112457);
		
INSERT INTO customer (first_name, last_name, email, address, phone)
VALUES 	('Tamaki', 'Suoh', 'thepresident@ouran.com', '2-A Host Club Way', 1111111111),
		('Haruhi', 'Fujioka', 'theprincess@ouran.com', '1-A Host Club Way', 1221222221),
		('Kyoya', 'Ootori', 'vicepresident@ouran.com', '2-A Host Club Way', 9999999999),
		('Mitsukuni', 'Haninozuka', 'honeysempai@ouran.com', '3-A Host Club Way', 3333333333),
		('Takashi', 'Morinozuka', 'morisempai@ouran.com', '3-A Host Club Way', 7777777777);

INSERT INTO car_inventory
VALUES 	(0, 'Honda', '2017 CR-V EXL', 2, 5), 
		(1, 'Toyota', '2018 Highlander LE Plus', 2, 3),
		(2, 'Kia', '2017 Kia Sorento LX', 1, 4),
		(3, 'Dodge', '2016 Journey SXT', 3, 1),
		(4, 'Mazda', '2016 CX-5 Grand Touring', 5, 2);

INSERT INTO sales_invoice (amount, purchase_date, serial_id, staff_id, customer_id)
VALUES (22788, '2020-08-08', 0, 2, 5),
		(27990, '2020-08-08', 1, 2, 3),
		(17990, '2020-08-08', 2, 1, 4),
		(14754, '2020-08-08', 3, 3, 1),
		(18385, '2020-08-08', 4, 5, 2);
		
INSERT INTO mechanic (first_name, last_name, email, address, phone)
VALUES ('Kazuichi', 'Souda', 'dangonronpa2@gmail.com', '555 Despair Lane', 6676686669),
		('Pinako', 'Rockbell', 'fullmetal@gmail.com', '77 Philosophers Way', 5557779991),
		('Cid', 'Highwind', 'finalfantasy@gmail.com', '132 Sprit Way', 3331119118),
		('Heihachi', 'Hayashida', 'sevensamurai@gmail.com', '777 Samuri Lane', 7777777777),
		('Winnery', 'Rockbell', 'fmabrotherhood@gmail.com', '654 Arm n Leg Door', 8885553333);

ALTER TABLE parts DISABLE TRIGGER ALL;
INSERT INTO parts (part_type, part_price, service_id)
VALUES ('Bumper Cover', 20, 0),
		('Climate Control Unit', 160, 1),
		('Brake Disc and Pad Kit', 125, 2),
		('Exterior Door Handle', 15, 3),
		('Turn Signal with Bulbs', 40, 4);
ALTER TABLE parts ENABLE TRIGGER ALL;

INSERT INTO service_invoice (service_id, order_date, amount, total_cost, description, customer_id, item_id)
VALUES (0, '2020-08-08', 20, 23, 'New Bumper Cover.',6, 1),
		(1, '2020-08-08', 160, 172, 'Replacement Climate Control Unit',7, 2),
		(2, '2020-08-08', 125, 130,'Brake Disc and Pad Kit for 2-Wheeler', 8, 3),
		(3, '2020-08-08', 15, 17,'Replace Exterior Door Handle', 9, 4),
		(4, '2020-08-08',  40, 44,'New Turn Signal Plus Bulbs', 10, 5);

INSERT INTO mechanic_record (service_id, mechanic_id)
VALUES (0, 1),
		(1, 3),
		(2, 5),
		(3, 5),
		(4, 2);
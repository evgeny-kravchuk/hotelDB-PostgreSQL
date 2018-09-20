INSERT INTO "Hotel" ("bad_count","type") VALUES
	( 8, '5 stars'),
	( 5, '4 stars'),
	( 4, '3 stars'),
	( 2, '2 stars'),
	( 1, '1 star');

INSERT INTO "Tour" ("city","country","hotel","price","vise","flight","recall") VALUES
	('Berlin', 'Germany',  true, 34554.99, true, 'Одесса - Киев','В этом туре вы сможете посетить монастырский Берлин'),
	('Gdansk', 'Polant',  true, 14569.99, true, 'Херсон - Стамбул','Здесь вы ощутите настоящую польскую душу'),
	('Kyiv', 'Ukraine',  true, 125699.99, false, 'Одесса - Киев','Столица Украины зачарует своей старинной историей'),
	('Kairo', 'Egipt',  false, 125, false, 'Херсон - Стамбул','Глянем на монастырь'),
	('New York', 'USA',  true, 1499.99, true, 'Одесса - Киев','Монастырская поездка');

INSERT INTO "Tour_hotel" ("hotel_id","tour_id") VALUES
	(1, 3),
	(2, 1),
	(3, 2),
	(4, 5),
	(5, 4);

INSERT INTO "Client" ("name","passport") VALUES
	('("Radionov","Petr","Fedorovych")', '("МР","124785")'),
	('("Fedorov","Maksym","Ivanovych")', '("СМ","778568")'),
	('("Kumenko","Karina","Vasilievna")', '("ПО","121247")'),
	('("Maksymenko","Karina","Oleksiivna")', '("УР","889632")'),
	('("Avreliy","Mark","Pylypovych")', '("МР","141258")');

INSERT INTO "Staff" ("name") VALUES
	('("Radionov","Ivan","Fedorovych")'),
	('("Fedorov","Maksym","Ivanovych")'),
	('("Melnikova","Karina","Maksymivna")'),
	('("Maksymenko","Karina","Oleksiivna")'),
	('("Viktor","Mark","Pylypovych")');

INSERT INTO "Service" ("excursion","transfer") VALUES
	(true, true),
	(true, false),
	(true, true),
	(false, true),
	(false, false);

INSERT INTO "Transport" ("place","type") VALUES
	(3, 'Bus'),
	(2, 'Plane'),
	(5, 'Car'),
	(4, 'Train'),
	(1, 'Ship');

INSERT INTO "transport_tour" ("id_tour","id_transport") VALUES
	(1, 2),
	(2, 3),
	(3, 4),
	(5, 1),
	(4, 3);

INSERT INTO "tour_client_service" ("id_client","id_service","id_tour_hotel","id_tour","date_in","date_out","place","room_type") VALUES
	(3, 4, 2, 1, '15.02.2017', '02.03.2017', '5', 'Budget'),
	(2, 2, 5, 5, '25.03.2017', '02.04.2017', '7', 'Comfortable'),
	(1, 3, 4, 2, '25.04.2017', '02.05.2017', '3', 'Business'),
	(4, 3, 1, 3, '25.05.2017', '02.06.2017', '9', 'Luxe'),
	(3, 2, 3, 2, '15.02.2016', '02.03.2016', '2', 'Luxe'),
	(3, 1, 1, 3, '15.02.2015', '02.03.2015', '1', 'Comfortable'),
	(3, 3, 2, 4, '15.02.2014', '02.03.2014', '4', 'Budget'),
	(3, 4, 1, 5, '15.02.2013', '02.03.2013', '5', 'Econom'),
	(1, 4, 2, 1, '15.02.2016', '02.03.2017', '2', 'Budget'),
	(4, 2, 5, 5, '25.03.2016', '02.04.2017', '7', 'Comfortable'),
	(4, 3, 4, 2, '25.04.2016', '22.12.2016', '3', 'Business'),
	(2, 3, 1, 3, '25.11.2016', '02.06.2017', '9', 'Luxe'),
	(1, 2, 1, 3, '25.11.2016', '02.06.2017', '4', 'Comfortable');

INSERT INTO "staff_tour" ("id_staff","id_tour") VALUES
	(1, 3),
	(2, 4),
	(3, 5),
	(4, 1);
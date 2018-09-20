CREATE TYPE "passport" AS (
	"seria"		CHAR(2),
	"number"	CHAR(6)
	);

CREATE TYPE "name" AS (
	"lastName"	TEXT,
	"firstName"	TEXT,
	"patronymic"	TEXT
	);

CREATE DOMAIN "hotel_type" AS TEXT
	CHECK (VALUE IN ('5 stars','4 stars','3 stars','2 stars','1 star'));
CREATE DOMAIN "room_type" AS TEXT
	CHECK (VALUE IN ('Luxe','Comfortable','Business','Budget','Econom'));
CREATE DOMAIN "transport_type" AS TEXT
	CHECK (VALUE IN ('Plane','Train','Bus','Car','Ship'));
	
CREATE TABLE "Hotel" (
	"id_hotel"	SERIAL		NOT NULL	PRIMARY KEY,
	"bad_count"	INT		NOT NULL,
	"type"		hotel_type	NOT NULL	
	);

CREATE TABLE "Tour" (
	"id_tour"	SERIAL		NOT NULL	PRIMARY KEY,
	"city"		TEXT		NOT NULL,
	"country"	TEXT		NOT NULL,
	"hotel"		BOOLEAN		NOT NULL,
	"price"		FLOAT		NOT NULL,
	"vise"		BOOLEAN		NOT NULL,
	"flight"	TEXT		NOT NULL,
	"recall"	TEXT
	);

CREATE TABLE "Tour_hotel" (
	"id_th"		SERIAL		NOT NULL	PRIMARY KEY,
	"hotel_id"	SMALLINT	NOT NULL	REFERENCES "Hotel",
	"tour_id"	SMALLINT	NOT NULL	REFERENCES "Tour",
	UNIQUE ("hotel_id","tour_id")
	);
	
CREATE TABLE "Client" (
	"id_client"	SERIAL		NOT NULL	PRIMARY KEY,
	"name"		name		NOT NULL,
	"passport"	passport	NOT NULL
	);

CREATE TABLE "Staff" (
	"id_staff"	SERIAL		NOT NULL	PRIMARY KEY,
	"name"		name		NOT NULL
	);

CREATE TABLE "Service" (
	"id_service"		SERIAL		NOT NULL	PRIMARY KEY,
	"excursion"		BOOLEAN		NOT NULL,
	"transfer"		BOOLEAN		NOT NULL
	);	

CREATE TABLE "Transport" (
	"id_transport"	SERIAL		NOT NULL	PRIMARY KEY,
	"place"		INT		NOT NULL,
	"type"		transport_type	NOT NULL
	);
	
CREATE TABLE "transport_tour" (
	"id_tour"		SMALLINT	NOT NULL	REFERENCES "Tour",
	"id_transport"		SMALLINT	NOT NULL	REFERENCES "Transport",
	PRIMARY KEY ("id_tour","id_transport")
	);

CREATE TABLE "tour_client_service" (
	"number_t"	SERIAL		NOT NULL 	PRIMARY KEY,
	"place"		INT		NOT NULL,
	"room_type"	room_type	NOT NULL,
	"date_in"	DATE 		NOT NULL,
	"date_out"	DATE		NOT NULL,
	"id_client"		SMALLINT	NOT NULL	REFERENCES "Client",
	"id_service"		SMALLINT	NOT NULL	REFERENCES "Service",
	"id_tour_hotel"		SMALLINT	NOT NULL	REFERENCES "Tour_hotel",
	"id_tour"		SMALLINT	NOT NULL	REFERENCES "Tour",
	UNIQUE ("id_client","id_service","id_tour_hotel","id_tour"),
	CHECK ("date_in" <= "date_out")
	);	

CREATE TABLE "staff_tour" (
	"id_staff"	SMALLINT	REFERENCES "Staff",
	"id_tour"	SMALLINT	REFERENCES "Tour",
	PRIMARY KEY ("id_staff","id_tour")
	);
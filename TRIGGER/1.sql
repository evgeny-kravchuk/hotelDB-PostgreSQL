/*SELECT * FROM FactBuyTour(2,
				CAST('Comfortable' AS room_type),
				CAST('01.10.2016' AS DATE),
				CAST('01.12.2016' AS DATE),
				CAST(5 AS SMALLINT),
				CAST(2 AS SMALLINT),
				CAST(1 AS SMALLINT),
				CAST(3 AS SMALLINT))*/
CREATE OR REPLACE FUNCTION FactBuyTour ("place"	INT,
					"room_type"	room_type,
					"date_in"	DATE,
					"date_out"	DATE,
					"id_client"	SMALLINT,
					"id_service"	SMALLINT,
					"id_tour_hotel"	SMALLINT,
					"id_tour"	SMALLINT) 
	RETURNS  
	TABLE ("_number_t" INT,
		"_place" INT,
		"_room_type" room_type,
		"_date_in" DATE,
		"_date_out" DATE,
		"_id_client" SMALLINT,
		"_id_service" SMALLINT,
		"_id_tour_hotel" SMALLINT,
		"_id_tour" SMALLINT)
	AS $$
	BEGIN
		INSERT INTO "tour_client_service" ("id_client","id_service","id_tour_hotel","id_tour","date_in","date_out","place","room_type") VALUES
					("id_client","id_service","id_tour_hotel","id_tour","date_in","date_out","place","room_type");
			
		RETURN QUERY 
			SELECT *
			FROM "tour_client_service";
	END; 
$$ LANGUAGE plpgsql;

/*Составить хранимую процедуру для реализации процесса формирования заказа тура (необходимые данные передавать как параметры).*/
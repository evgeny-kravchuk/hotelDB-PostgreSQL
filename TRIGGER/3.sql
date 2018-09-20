/*SELECT * FROM infoTable (4)*/
CREATE OR REPLACE FUNCTION infoTable ("id_Tour" INT) 
	RETURNS  
	TABLE ("_city" TEXT,
		"_hotel_id" SMALLINT,
		"_days" INT,
		"_price" FLOAT,
		"_transport" transport_type)
	AS $$
	DECLARE
	days INT;
	BEGIN
		SELECT "date_out" - "date_in" INTO days
		FROM "tour_client_service"
		WHERE "id_tour" = "id_Tour";
		
		RETURN QUERY 
			SELECT t."city", th."hotel_id", days, t."price", tr."type"
			FROM "Tour" t, "Tour_hotel" th, "transport_tour" tt, "Transport" tr
			WHERE t."id_tour" = "id_Tour"
				AND t."id_tour" = th."id_th"
				AND t."id_tour" = tt."id_tour"
				AND tt."id_transport" = tr."id_transport";
	END; 
$$ LANGUAGE plpgsql;

/*Составить хранимую процедуру для отображения информации о туре: город, отель, продолжительность, стоимость, виды транспорта – в виде соответствующей таблицы.*/
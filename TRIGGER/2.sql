/*DELETE FROM "Tour" WHERE "country" = 'Australia'*/

CREATE OR REPLACE FUNCTION deleteInfo_F()
	RETURNS  TRIGGER
	AS $$
	BEGIN
		DELETE FROM "Tour_cities" WHERE "id_tour" = OLD."id_tour";
		DELETE FROM "transport_tour" WHERE "id_tour" = OLD."id_tour";
		DELETE FROM "tour_client_service" WHERE "id_tour" = OLD."id_tour";
		DELETE FROM "Tour_hotel" WHERE "tour_id" = OLD."id_tour";
		DELETE FROM "staff_tour" WHERE "id_tour" = OLD."id_tour";
		
		RETURN OLD;
	END; 
$$ LANGUAGE plpgsql;

CREATE TRIGGER deleteInfo_TG
BEFORE DELETE ON "Tour"
FOR EACH ROW EXECUTE PROCEDURE deleteInfo_F();

/*Прекращены туры в конкретную страну. Составить триггер для удаления соответствующей информации. */
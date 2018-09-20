CREATE VIEW task_2 AS
SELECT "id_client"
FROM "tour_client_service" tcs, "Tour" t
WHERE tcs."id_tour" = t."id_tour"
	AND t."price" = (SELECT MAX("Tour"."price") FROM "Tour")
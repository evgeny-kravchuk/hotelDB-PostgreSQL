SELECT SUM("price")
FROM "Tour" t, "tour_client_service" tcs, "Client" c
WHERE c."id_client" = tcs."id_client" AND tcs."id_tour" = t."id_tour" AND t."id_tour" = 2

/*Посчитать доход от конкретного тура (на усмотрение студента) по всем заказавшим его клиентам.*/
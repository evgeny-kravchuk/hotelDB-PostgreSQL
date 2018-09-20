SELECT "name"
FROM "Client" c, "tour_client_service" tcs, "Tour" t1, "Tour" t2
WHERE c."id_client" = tcs."id_client" AND tcs."id_tour" = t1."id_tour"
GROUP BY "name"
HAVING COUNT(DISTINCT tcs."id_tour") = COUNT(DISTINCT t2."id_tour")

/*Получить список клиентов, побываашах абсолютно во всех турах.*/
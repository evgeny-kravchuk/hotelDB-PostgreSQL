SELECT DISTINCT tcs."id_client"
FROM "tour_client_service" tcs, "Tour" t
WHERE tcs."id_tour" = t."id_tour"
	AND t."flight" = 'Херсон - Стамбул'
	AND tcs."date_in" > '01.12.2015'
	AND tcs."date_out" < '01.05.2017'

/*Получить список клиентов вылетающих или выезжающих конкретным рейсом независимо от тура (на усмотрение студента). При необходимости внести изменения в структуру БД. */
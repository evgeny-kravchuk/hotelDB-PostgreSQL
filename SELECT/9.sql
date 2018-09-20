DELETE FROM "transport_tour"
WHERE "id_tour" = (SELECT tt."id_tour"
			FROM "Tour" t, "transport_tour" tt, "Transport" tr
			WHERE t."id_tour" = tt."id_tour" 
				AND tt."id_transport" = tr."id_transport" 
				AND t."country" = 'Ukraine'
				AND tr."type" = 'Train')
AND "id_transport" = (SELECT tt."id_transport" 
			FROM "Tour" t, "transport_tour" tt, "Transport" tr
			WHERE t."id_tour" = tt."id_tour" 
				AND tt."id_transport" = tr."id_transport" 
				AND t."country" = 'Ukraine'
				AND tr."type" = 'Train')

DELETE FROM "transport_tour"
WHERE "id_tour" = (SELECT tt."id_tour"
			FROM "Tour" t, "transport_tour" tt
			WHERE t."id_tour" = tt."id_tour"
				AND t."country" = 'Ukraine')
AND "id_transport" = (SELECT tt."id_transport" 
			FROM "transport_tour" tt, "Transport" tr
			WHERE tt."id_transport" = tr."id_transport"
				AND tr."type" = 'Train')

/*ќтменить перевозку (даже на заказанные туры) конкретным видом транспорта в конкретную страну (вид и страна на усмотрение студента). ѕри необходимости выполнить несколько запросов. */
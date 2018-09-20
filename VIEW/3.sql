SELECT t."id_tour", tbl0.tm
FROM "Tour" t, "Tour_cities" tc, (SELECT tcs."id_tour" idtr, (tcs."date_out" - tcs."date_in") tm FROM "Tour" t, "tour_client_service" tcs WHERE t."id_tour" = tcs."id_tour") tbl0
WHERE t."id_tour" = tc."id_tour"
	AND t."id_tour" = tbl0.idtr
GROUP BY t."id_tour", tbl0.tm
HAVING COUNT(tc."id_city") = (SELECT MAX(cnt)
				FROM (SELECT COUNT("id_city") cnt 
					FROM "Tour_cities" 
					GROUP BY "id_tour") tbl1)
ORDER BY t."id_tour"

/*Получить список туров с посещением максимального количества городов (их м.б. несколько с одинаковым количеством) с указанием их продолжительности.*/
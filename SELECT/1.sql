SELECT tcs."room_type"
FROM "tour_client_service" tcs, "Tour_hotel" th
WHERE tcs."date_in" < 'today' 
	AND tcs."date_out" > 'today' 
	AND tcs."id_tour_hotel" = th."id_th" 
	AND th."hotel_id" = 1
GROUP BY tcs."room_type"

/*Получить список занятых номеров каждого типа в конкретном отеле (на усмотрение студента) на текущую дату.*/
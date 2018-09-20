SELECT tcs."id_client"
FROM "tour_client_service" tcs, "Tour_hotel" th
WHERE tcs."id_tour_hotel" = th."id_th" AND th."hotel_id" = 1 AND tcs."date_in" > '01.01.2014' AND tcs."date_out" < '01.01.2020'

/*Составить список клиентов, проживающих в конкретном отеле в заданный период. */
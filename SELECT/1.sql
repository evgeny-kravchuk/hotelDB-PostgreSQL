SELECT tcs."room_type"
FROM "tour_client_service" tcs, "Tour_hotel" th
WHERE tcs."date_in" < 'today' 
	AND tcs."date_out" > 'today' 
	AND tcs."id_tour_hotel" = th."id_th" 
	AND th."hotel_id" = 1
GROUP BY tcs."room_type"

/*�������� ������ ������� ������� ������� ���� � ���������� ����� (�� ���������� ��������) �� ������� ����.*/
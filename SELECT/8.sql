SELECT DISTINCT tcs."id_client"
FROM "tour_client_service" tcs, "Tour" t
WHERE tcs."id_tour" = t."id_tour"
	AND t."flight" = '������ - �������'
	AND tcs."date_in" > '01.12.2015'
	AND tcs."date_out" < '01.05.2017'

/*�������� ������ �������� ���������� ��� ���������� ���������� ������ ���������� �� ���� (�� ���������� ��������). ��� ������������� ������ ��������� � ��������� ��. */
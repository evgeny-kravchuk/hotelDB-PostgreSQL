SELECT t."id_tour", t."country",
	dense_rank() OVER (ORDER BY (max(tcs0."date_out" - tcs0."date_in")) DESC NULLS LAST) AS clock,
	dense_rank() OVER (ORDER BY (count(DISTINCT tcs1."id_client")) DESC NULLS LAST) AS popular,
	dense_rank() OVER (ORDER BY (t."price" * count(DISTINCT tcs1."id_client")) DESC NULLS LAST) AS money
FROM "Tour" t
LEFT JOIN "tour_client_service" tcs0 ON t."id_tour" = tcs0."id_tour"
LEFT JOIN "tour_client_service" tcs1 ON t."id_tour" = tcs1."id_tour"
GROUP BY t."id_tour", t."country"
ORDER BY t."id_tour";
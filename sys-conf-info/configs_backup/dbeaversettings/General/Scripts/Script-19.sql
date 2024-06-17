SELECT count(*) FROM build b GROUP BY b."userId" HAVING count(*) > 10

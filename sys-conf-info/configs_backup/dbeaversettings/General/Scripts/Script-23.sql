SELECT
b.id ,
	count(*) AS sessiionCount
FROM
	build b
INNER JOIN "session" s ON
	s."buildId" = b.id
	GROUP BY b.id  ;
	
SELECT
s.status,
b.id
FROM
	build b
INNER JOIN "session" s ON
	s."buildId" = b.id
	AND b.id = 'cf9573ab-cd9a-45ae-9373-f4beedb3e95d'
--	GROUP BY s.status 
	
	
	'7b2686f1-9d20-46a5-9916-db9c60a17dcd'
	
SELECT
b.id,
(SELECT count(*) FROM "session" s WHERE s."buildId" = b.id AND s.status='completed') AS C,
(SELECT count(*) FROM "session" s WHERE s."buildId" = b.id AND s.status='fail') AS f,
(SELECT count(*) FROM "session" s WHERE s."buildId" = b.id AND s.status='pass') AS p
FROM
	build b
WHERE
	b.id IN('cf9573ab-cd9a-45ae-9373-f4beedb3e95d', '973c062d-191f-4e4d-ab71-8a01af2302cb', '7b2686f1-9d20-46a5-9916-db9c60a17dcd')
	
	
SELECT
	s."buildId",
	s.status ,
	count(*)
FROM
	"session" s
WHERE
	s."buildId" IN('cf9573ab-cd9a-45ae-9373-f4beedb3e95d', '973c062d-191f-4e4d-ab71-8a01af2302cb', '7b2686f1-9d20-46a5-9916-db9c60a17dcd')
GROUP BY
	s.status,
	s."buildId"
ORDER BY
	s."buildId" 
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
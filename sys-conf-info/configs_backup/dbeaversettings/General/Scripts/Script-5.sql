
select count(*) as ev, "sessionId"  from "event" e WHERE e."sessionId" ='cc57531b-3a22-4db5-b89d-5f7691071e2d' GROUP BY "sessionId" ORDER BY ev desc   ;


SELECT * FROM "session" s WHERE s.id = 'cc57531b-3a22-4db5-b89d-5f7691071e2d';
SELECT * FROM build b WHERE b.id = '1732b53b-e035-4c63-8e87-9c1b6633d3d8';
SELECT * FROM project p WHERE p.id = 'd494cc68-012e-4105-b6f0-0858ae9c6bd4';
--163631



UPDATE project p SET "userId" = 23839 WHERE p.id = 'd494cc68-012e-4105-b6f0-0858ae9c6bd4';
UPDATE build b SET "userId" = 23839 WHERE b.id = '1732b53b-e035-4c63-8e87-9c1b6633d3d8';
UPDATE "session"  s SET "userId" = 23839  WHERE s.id = 'cc57531b-3a22-4db5-b89d-5f7691071e2d';

SELECT * FROM "session" s WHERE s."buildId"  = '1732b53b-e035-4c63-8e87-9c1b6633d3d8';





SELECT
	p.id,
	b.id,
	s.id,
	s.status,
	count(*)
FROM
	project p
INNER JOIN build b ON
	p.id = b."projectId"
INNER JOIN "session" s ON
	s."buildId" = b.id
GROUP BY
	(p.id,
	b.id,
	s.id,
	s.status)
HAVING count(*) = 1;



SELECT * FROM project p WHERE p.id='d1c63e80-a2a3-4c00-945b-9994d18ecd38';

SELECT * FROM build b WHERE b.id ='aa37e88f-eb79-4082-9922-c2e0c6afa877';

SELECT * FROM "session" s WHERE s.id='3c31e357-b949-431d-8a6f-b511c3be86bc';




WITH duplicates AS (
    SELECT 
        id,
        -- Add other columns as necessary to identify duplicates
        ROW_NUMBER() OVER (PARTITION BY id) AS row_num
    FROM 
        build
)
SELECT * FROM 
    build
WHERE 
    id IN (SELECT id FROM duplicates WHERE row_num > 1);



SELECT b.id,ROW_NUMBER() OVER (PARTITION BY b.id) FROM build b ;



SELECT * FROM "event" e WHERE e."sessionId" = 'cc57531b-3a22-4db5-b89d-5f7691071e2d' LIMIT 10;


SELECT
	*
FROM
	"event" e
WHERE
	e."sessionId" = 'f716f1de-9f92-4bb3-9157-bcc9b6a90db0'
AND e."createdAt" > '2024-01-18T07:57:00.229Z'
ORDER BY e."createdAt" ASC
LIMIT 1


SELECT * FROM "event" e LIMIT 1;
	
SELECT * FROM migrations m ;


SELECT * FROM build b WHERE b."userId" = 161155 AND b."createdAt" > '2022-05-12 11:35:02.100278+05:30' ORDER BY b."createdAt" ASC;


SELECT count(*),b."userId"  FROM build b  GROUP BY b."userId" ;

--d8028241-f860-4291-b224-8ebda22b0b63
--800c0642-ec79-4e18-abcc-72523ff868da
--EXPLAIN analyse 
SELECT
	payload AS startp ,
	( SELECT payload FROM "event" e WHERE "sessionId" = '800c0642-ec79-4e18-abcc-72523ff868da' ORDER BY "createdAt" DESC LIMIT 1) AS endp
FROM
	"event" e
WHERE
	"sessionId" = '800c0642-ec79-4e18-abcc-72523ff868da'
ORDER BY
	"createdAt" ASC LIMIT 1 ;


SELECT * FROM "session" s WHERE s.id = '92ee1d25-a479-4da0-a188-2c8d3af23998';p
SELECT
	payload
FROM
	"event" e
WHERE
--	"sessionId" = '800c0642-ec79-4e18-abcc-72523ff868da'
	"sessionId" = '80baf52e-7237-462d-ac9a-459d19af507b'
ORDER BY
	"createdAt" asc;


SELECT evt.id,evt."sessionId",evt."eventType",s.status from
(SELECT
	e.id ,
	ROW_NUMBER() OVER ( PARTITION BY e."sessionId" ORDER BY e."createdAt" desc) AS rank,
	e."startTime",
	e."endTime",
	e."sessionId",
	e."eventType",
	e."payload" 
FROM
	"event" e) evt
	INNER JOIN "session" s ON s.id = evt."sessionId" and
	evt.RANK = 1
	
	












SELECT * FROM "event" e;





SELECT count(*) FROM "event" e ;


SELECT * FROM "event" e WHERE e."eventType" = 'screenshot';



SELECT * FROM "session" s LIMIT 1;


--EXPLAIN analyze
SELECT count(*) from "event" e where "sessionId" = 'cc57531b-3a22-4db5-b89d-5f7691071e2d'  ;
SELECT * from "event" e where "sessionId" = 'cc57531b-3a22-4db5-b89d-5f7691071e2d' ORDER BY "createdAt" desc LIMIT 1;

CREATE INDEX idx_session_event ON event("sessionId","createdAt");


create index idx_session on event("createdAt","sessionId");



SELECT * FROM "event" e WHERE "sessionId" = '739e6fe5-a76e-44e8-a6f5-e9d7625b9f5f' AND "createdAt" > '1999-05-06 09:46:21.615 +0530' ORDER BY "createdAt"  LIMIT 10;

--f79ea9cf-5663-4a5f-9027-9ca1e14562d7


--explain analyze
SELECT
	e.id ,e."createdAt" ,e."sessionId" ,e.payload 
FROM
	"event" e
WHERE
	"sessionId" = '739e6fe5-a76e-44e8-a6f5-e9d7625b9f5f'
	AND "createdAt" > '2023-05-06 09:46:42.793523+05:30'
ORDER BY
	"createdAt"
LIMIT 10
;
--0cac4cd6-7abc-497e-8e9c-f18d09c33df8


SELECT * FROM "session" s WHERE id='673eea46-f863-46a4-8c73-53d0798e3c64';


SELECT * FROM "session" s WHERE id='b60c9d65-78a8-4b43-bfab-f7fbc86f642d';




SELECT * FROM "session" s INNER JOIN "event" e ON e."sessionId" = s.id;

SELECT count(*) AS ev FROM "event" e GROUP BY e."sessionId" ORDER BY  ev DESC; 


SELECT s."buildId",s."userId"  FROM "session" s WHERE s.id='cc57531b-3a22-4db5-b89d-5f7691071e2d';

SELECT * FROM project p WHERE p.id = 'd494cc68-012e-4105-b6f0-0858ae9c6bd4';

SELECT * FROM build b WHERE b.id='1732b53b-e035-4c63-8e87-9c1b6633d3d8';

SELECT count(*) FROM build b INNER JOIN "session" s ON s."buildId" = b.id INNER JOIN "event" e ON e."sessionId" =s.id WHERE b.b;


SELECT * FROM project p WHERE p.id = (SELECT b."projectId" FROM build b WHERE b.id = "1732b53b-e035-4c63-8e87-9c1b6633d3d8")


SELECT count(b.id) AS buildcount,b."userId"  FROM build b GROUP BY b."userId" ORDER BY  buildcount DESC;


SELECT * FROM build b WHERE b."userId" =65402;

SELECT * FROM project p WHERE p.id ='8830b38f-eaae-4c03-aef3-c4d41fe52526';







SELECT payload FROM "event" e WHERE e."sessionId" = 'cc57531b-3a22-4db5-b89d-5f7691071e2d' LIMIT 300 ;




--SELECT count(*) FROM build b INNER JOIN "session" s ON s."buildId" = b.id GROUP BY bu; 
SELECT
	count(*) AS sc
FROM
	"session" s
GROUP BY
	"buildId"
ORDER BY
	sc DESC
LIMIT 5;

SELECT
	count(*)
FROM
	build b
INNER JOIN "session" s
INNER JOIN s."buildId" = b.id
ORDER BY
	b."createdAt"
LIMIT 10;




SELECT
	"startTime" ,
	"endTime"
FROM
	"session" s
WHERE
	s."buildId" = '2bbd5180-92ca-4896-beb1-c50c5df14a5c'
	AND s."isDeleted" = FALSE
	AND s.status != 'in-progress'
	ORDER BY "startTime" asc
;











--WITH duplicates AS (
--    SELECT 
--        id,
--        -- Add other columns as necessary to identify duplicates
--        ROW_NUMBER() OVER (PARTITION BY column1, column2, ... ORDER BY id) AS row_num
--    FROM 
--        your_table_name
--)
--DELETE FROM 
--    your_table_name
--WHERE 
--    id IN (SELECT id FROM duplicates WHERE row_num > 1);
--
--

 SELECT 
        s.id ,s."buildId",s."createdAt",
        -- Add other columns as necessary to identify duplicates
        ROW_NUMBER() OVER (PARTITION BY s."buildId" ORDER BY b."createdAt" DESC ) AS row_num
    FROM 
        "session" s  INNER JOIN build b ON b.id = s."buildId"



WITH last_build AS
(
SELECT
	b.id,
	b."userId",
	b."createdAt",
	ROW_NUMBER() OVER (PARTITION BY b."userId"
ORDER BY
	b."createdAt" DESC ) AS RANK
FROM
	build b )
SELECT
	count(*)
FROM
	last_build lb WHERE lb.RANK < 11
--INNER JOIN SESSION s ON s."buildId" = lb.id
--	AND lb.rank < 20
--INNER JOIN "event" e ON e."sessionId" = s.id  ;


SELECT count(*) FROM "session" s WHERE s."buildId" = 'fc693e10-a2be-4159-92e3-9c9c0887b4c8';


SELECT count(b3.id) AS bcnt, b3."userId" AS uidd FROM build b3 GROUP BY b3."userId" ;



WITH sessagg as (
SELECT
	b."userId" ,
	count(s.id) AS sessCount
FROM
	build b
INNER JOIN "session" s ON
	s."buildId" = b.id
GROUP BY
	b."userId" 
ORDER BY count(s.id) desc

)  
SELECT
	*
FROM
	project p INNER JOIN sessagg sg ON sg."userId" = p."userId" ;





SELECT count(*) AS eventCount,s.id  AS sessid 
FROM "session" s INNER JOIN "event" e ON e."sessionId" = s.id GROUP BY s.id; 


SELECT
	count(*) AS ev,
	b."userId" AS user
FROM
	build b
INNER JOIN "session" s ON
	s."buildId" = b.id
INNER JOIN "event" e ON
	e."sessionId" = s.id
	
()	
GROUP BY b."userId" 





SELECT * FROM build b LIMIT 1;












 SELECT
	b."userId" ,
	count(s.id) AS sessCount
FROM
	build b
INNER JOIN "session" s ON
	s."buildId" = b.id

GROUP BY
	b."userId"
ORDER BY
	count(s.id) DESC








SELECT uid,bcnt,sesscount,ev AS eventcount
FROM 
  (
  SELECT b."userId" , count(s.id) AS sessCount FROM build b INNER JOIN "session" s ON s."buildId" = b.id
  and b.id   IN 
( WITH last_build AS (
		SELECT
			b.id,
			b."userId",
			b."createdAt",
			ROW_NUMBER() OVER (PARTITION BY b."userId"
		ORDER BY
			b."createdAt" DESC ) AS RANK
		FROM
			build b )
		SELECT id FROM last_build lb  WHERE lb.RANK < 50 )
  GROUP BY b."userId" ORDER BY count(s.id) DESC ) t
  JOIN 
(SELECT
	count(*) AS ev,
	b."userId" AS uid
FROM
	build b
INNER JOIN "session" s ON
	s."buildId" = b.id
INNER JOIN "event" e ON
	e."sessionId" = s.id
GROUP BY
	b."userId") ddd ON
ddd.uid = t."userId"
JOIN 
(SELECT count(b3.id) AS bcnt, b3."userId" AS uidd FROM build b3 GROUP BY b3."userId" 
) k ON k.uidd = ddd.uid
ORDER BY ddd.ev desc







SELECT
	id,
	'2024-01-18T07:57:00.229Z'::TIMESTAMP(3),
  "createdAt" AT time zone 'UTC',
  "createdAt"::TIMESTAMP,
  '2024-01-18T07:57:00.229' AS d,
  to_char("createdAt" AT time ZONE 'UTC', 'YYYY-MM-DD"T"HH24:MI:SS.MS') AS ch,
  "createdAt"::timestamp(3),
  '2024-01-18T07:56:24.647Z' at time zone 'UTC'
FROM
	"event" e
WHERE
	e."sessionId" = 'f716f1de-9f92-4bb3-9157-bcc9b6a90db0'
--AND e."createdAt"  > '2024-01-18T07:57:00.229Z'
AND to_char("createdAt" AT time ZONE 'UTC', 'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"') = '2024-01-18T07:57:00.229Z'
ORDER BY e."createdAt" ASC
;





















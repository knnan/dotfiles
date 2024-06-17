SELECT
	p.id,
	p."name",
	p."userId",
	 ROW_NUMBER () OVER (
	 PARTITION BY p."userId"
    ORDER BY 
      p."userId"
  ) 
FROM
	project p;
	

WITH duplicates AS (
    SELECT 
    ROW_NUMBER() OVER (PARTITION BY "userId" ORDER BY "createdAt" desc) AS row_num,
    "userId",
    "projectId",
    "createdAt",
    id
    FROM 
        build
)
	SELECT id AS buildid FROM build b WHERE id NOT IN (SELECT id FROM duplicates WHERE row_num > 3)

	
	SELECT id FROM build LIMIT 2
	
--with buildstodelete as (
--   WITH duplicates AS (
--    SELECT 
--    ROW_NUMBER() OVER (PARTITION BY "userId" ORDER BY "createdAt" desc) AS row_num,
--    "userId",
--    "projectId",
--    "createdAt",
--    id
--    FROM build )
--	SELECT id AS buildid FROM build b WHERE id NOT IN (SELECT id FROM duplicates WHERE row_num > 3)
-- ),
--buildsdeleted as (
--    delete from build 
--    where id in (select buildid from buildstodelete)    
--    returning id
--),
--sessiondeleted as (
--    delete from session 
--    where "buildId" in (select id from buildsdeleted)    
--    returning id
--)
--Delete from events where "sessionId" in (select id from sessiondeleted)
--
	
	
	
	
SELECT * FROM "session" s WHERE s.id='7155fb5f-5cbf-4b3d-b830-93bfb81a19c6'	
	
	
	
WITH duplicates AS (
SELECT
	ROW_NUMBER() OVER (PARTITION BY "userId"
ORDER BY
	"createdAt" DESC) AS row_num,
	"userId",
	"projectId",
	"createdAt",
	id
FROM
	build )
	SELECT
	b.id AS buildid,
	s.id AS sessionid,
	b."userId",
	(
	SELECT
		row_num
	FROM
		duplicates
	WHERE
		id = b.id)
FROM
	build b
INNER JOIN SESSION s ON
	s."buildId" = b.id
	AND b.id NOT IN (
	SELECT
		id
	FROM
		duplicates
	WHERE
		row_num <= 10)
ORDER BY
	b."userId",
	b."createdAt" DESC;
	 "646d8c2b-7c30-4eb7-aa0d-5017988919c7",
        "4543b956-950e-46ec-bb1a-d2ceb76fe8f7",
        '22b51c20-0683-477e-9808-4d272e30f3fb','46d677d5-004c-4adc-8ba6-51771e4e6f25'
      ]
	
	
	
CREATE INDEX "idx_session" ON "event" ("createdAt", "sessionId")

	
SELECT * FROM migrations m ;

	



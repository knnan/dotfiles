WITH duplicates AS (
						SELECT
							ROW_NUMBER() OVER (PARTITION BY "userId" ORDER BY "createdAt" desc) AS row_num,
							"userId",
							"projectId",
							"createdAt",
							id
						FROM build
						)
					SELECT
						b.id AS buildid,
						s.id as sessionid,
						b."userId",
						(select row_num from duplicates where id=b.id)
					FROM build b
						inner join session s on s."buildId" = b.id
						and b.id NOT IN (SELECT id FROM duplicates WHERE row_num <= 7)
						order by b."userId",b."createdAt" desc
					;

				
SELECT * FROM project p;

SELECT * FROM build b WHERE b.id IN ( 'fc8dac3b-3176-4937-8e2e-7b390727bce5',
    '3d76d15a-8bf4-4466-9d1e-d3d0c064fe5a');
    
SELECT * FROM "session" s WHERE s.id IN ('4543b956-950e-46ec-bb1a-d2ceb76fe8f7',
    '22b51c20-0683-477e-9808-4d272e30f3fb',
    '46d677d5-004c-4adc-8ba6-51771e4e6f25');
   
SELECT * FROM "event" e WHERE e."sessionId" IN ('4543b956-950e-46ec-bb1a-d2ceb76fe8f7',
    '22b51c20-0683-477e-9808-4d272e30f3fb',
    '46d677d5-004c-4adc-8ba6-51771e4e6f25');







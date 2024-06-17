SELECT * FROM build b WHERE b."userId" = 65805;

UPDATE build SET "isDeleted" = TRUE WHERE id='f149bc25-bd43-4d27-a0b3-e0bda474c1c1';

WITH duplicates AS (
						SELECT
							ROW_NUMBER() OVER (PARTITION BY "userId" ORDER BY "createdAt" desc) AS row_num,
							"userId",
							"projectId",
							"createdAt",
							id
						FROM build 
						where build."isDeleted" = false
						)
					SELECT
						b.id AS buildid,
						s.id as sessionid,
						b."userId",
						(select row_num from duplicates where id=b.id)
					FROM build b
						inner join session s on s."buildId" = b.id
						and b.id NOT IN (SELECT id FROM duplicates WHERE row_num <= 5)
						order by b."userId",b."createdAt" DESC;
						
					
					
					SELECT
							ROW_NUMBER() OVER (PARTITION BY "userId" ORDER BY "createdAt" desc) AS row_num,
							"isDeleted",
							"userId",
							"projectId",
							"createdAt",
							id
						FROM build WHERE build."isDeleted" = FALSE;
						
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
	
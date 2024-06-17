SELECT
	*
FROM
	"event" e
WHERE
	e."sessionId" = 'f716f1de-9f92-4bb3-9157-bcc9b6a90db0'
AND date_trunc('milliseconds', "createdAt") <= '2024-01-18T07:57:00.229Z' 
ORDER BY e."createdAt" ASC
;



SELECT * FROM "session" s   WHERE s."isDeleted" = true;

SELECT * FROM project p ;


SELECT count(*) AS statusCount,s.status ,t.* FROM "session" s join
(SELECT
	b.id,b."projectId",b."createdAt",b."updatedAt",b."userId",b.name,p.name AS projectname,
	count(*) AS tss
FROM
	build b
INNER JOIN "session" s ON s."buildId" = b.id AND b."userId" = 23839 AND b."isDeleted" = FALSE AND s."isDeleted" = FALSE INNER JOIN project p ON b."projectId" = p.id GROUP BY b.id,b."projectId",b."createdAt",b."updatedAt",b."userId",b.name,p.name  ) t ON t.id = s."buildId"
	GROUP BY t.id,s.status,t.tss,t."projectId",t."createdAt",t."updatedAt",t."userId",t."name",t.projectname
	ORDER BY t."updatedAt" DESC
	
	
	CREATE INDEX "idx_session" ON "event" ("createdAt", "sessionId")
	
	DROP index "idx_seeeession";
	

SELECT * FROM "session" s WHERE s.id = '9c403366-b75b-449f-9406-4a52237b1795';




SELECT count(*) FROM build b GROUP BY "userId" ;


SELECT count(*) FROM project p GROUP BY ;



SELECT * FROM "session" s WHERE s.id = '7155fb5f-5cbf-4b3d-b830-93bfb81a19c6';











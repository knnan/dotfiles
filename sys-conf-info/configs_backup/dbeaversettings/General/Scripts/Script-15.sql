SELECT * FROM pcloud_plan_subscription pps ;
SELECT * FROM pcloud_plan_featureset_2 ppf ;



 SELECT
	MIN(Subscribed_On) AS minSubscribedOn,
	SUM(Mobile_DeviceDuration) AS mobileDeviceDuration,
	SUM(Mobile_ParallelSession_Automation_Count) AS mobileParallelSessionAutomationCount,
	MAX(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS mobileAutomationDaysRemaining
FROM
	(
	SELECT
		Subscribed_On,
		(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
		(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
		(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
	FROM
		pcloud_plan_subscription AS PSubs
	INNER JOIN pcloud_plan_featureset_2 AS PFea ON
		PSubs.Plan_ID = PFea.Plan_ID
	WHERE
		uid = ${uid}
		AND PSubs.Expiry_ON > NOW()
UNION ALL
	SELECT
		Subscribed_On,
		(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
		(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
		(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
	FROM
		pcloud_plan_subscription AS PSubs
	INNER JOIN pcloud_plan_featureset_2 AS PFea ON
		PSubs.Plan_ID = PFea.Plan_ID
	INNER JOIN pcloud_user AS user_team ON
		PSubs.pt_id = user_team.pt_id
	WHERE
		user_team.uid = ${uid}
		AND PSubs.Expiry_ON > NOW() - INTERVAL 1 DAY ) AS UnionTable ; 

SELECT  *
			FROM 
				pcloud_plan_subscription AS PSubs
			INNER JOIN 
				pcloud_plan_featureset_2 AS PFea ON PSubs.Plan_ID = PFea.Plan_ID
			WHERE 
				uid = ${uid} AND PSubs.Expiry_ON > NOW()
			UNION ALL
			SELECT  
				Subscribed_On, 
				(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
				(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
				(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
			FROM 
				pcloud_plan_subscription AS PSubs
			INNER JOIN 
				pcloud_plan_featureset_2 AS PFea ON PSubs.Plan_ID = PFea.Plan_ID
			INNER JOIN 
				pcloud_user AS user_team ON PSubs.pt_id = user_team.pt_id
			WHERE 
				user_team.uid = 6 AND 5805PSubs.Expiry_ON > NOW() - INTERVAL 1 DAY
				
				
				
			
SELECT
	pps.id,
	pps.Plan_ID AS plid,
	pu.uid,
	pu.pt_id ,
	pps.uid AS puid,
	pps.pt_id AS ptuid,
	Subscribed_On,
	(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
	(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
	(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
FROM
	pcloud_user pu
INNER JOIN pcloud_plan_subscription AS pps ON
	pu.uid = pps.uid
	AND pu.uid = 127504
	AND pps.Expiry_ON > NOW()
INNER JOIN pcloud_plan_featureset_2 AS ppf ON
	pps.Plan_ID = ppf.Plan_ID			
UNION 	ALL		
SELECT
	pps.id,
	pps.Plan_ID AS plid,
		pu.uid,
	pu.pt_id ,
	pps.uid AS puid,
	pps.pt_id AS ptuid,
	Subscribed_On,
	(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
	(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
	(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
FROM
	pcloud_user pu
INNER JOIN pcloud_plan_subscription pps ON
	pu.pt_id = pps.pt_id
	AND pu.uid = 127504
	AND pps.Expiry_ON > NOW() - INTERVAL 1 DAY
INNER JOIN pcloud_plan_featureset_2 ppf ON
	ppf.Plan_ID = pps.Plan_ID 


	

	
EXPLAIN ANALYZE
SELECT
	PSubs.id,
	Subscribed_On,
	(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
	(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
	(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
FROM
	pcloud_plan_subscription AS PSubs
INNER JOIN pcloud_plan_featureset_2 AS PFea ON
	PSubs.Plan_ID = PFea.Plan_ID
WHERE
	uid = 127504
	AND PSubs.Expiry_ON > NOW()
UNION ALL
SELECT
	PSubs.id,
	Subscribed_On,
	(Mobile_DeviceDuration * multiplier) AS Mobile_DeviceDuration,
	(Mobile_ParallelSession_Automation_Count * multiplier) AS Mobile_ParallelSession_Automation_Count,
	(DATEDIFF(Subscribed_On, NOW()) + Mobile_Automation_Days) AS Mobile_Automation_Days
FROM
	pcloud_plan_subscription AS PSubs
INNER JOIN pcloud_plan_featureset_2 AS PFea ON
	PSubs.Plan_ID = PFea.Plan_ID
INNER JOIN pcloud_user AS user_team ON
	PSubs.pt_id = user_team.pt_id
WHERE
	user_team.uid = 127504
	AND PSubs.Expiry_ON > NOW() - INTERVAL 1 DAY;
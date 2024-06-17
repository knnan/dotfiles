
    SELECT pd.did,pm.model,pma.name,ps.network,pr.did,
	(CASE
	 WHEN (pr.did IN
	       ( SELECT did FROM pcloud_reservation WHERE did AND stime <= (UNIX_TIMESTAMP(now())+300) AND etime >= (UNIX_TIMESTAMP(now())-60) AND 				(cancel = "N" ) ORDER BY stime ASC) )
	       THEN ('BUSY')
	       ELSE 'Available' END) as Device_Staus FROM pcloud_device pd
	JOIN pcloud_model pm ON pd.mid=pm.mid AND pd.rbid!=0 AND pd.searchable=1 AND pd.did NOT IN (SELECT did FROM pcloud_extended_private_team WHERE start_date < UNIX_TIMESTAMP(now()) AND end_date > UNIX_TIMESTAMP(now()) )
	JOIN pcloud_manu pma ON pma.manid=pm.manid
	LEFT JOIN pcloud_sim ps ON pd.did = ps.did
	LEFT JOIN pcloud_reservation pr ON pd.did = pr.did
-- 	GROUP BY pd.did
	
	
	SELECT * from pcloud_sim ps ;
	

SELECT pd.did,pm.model,pma.name,ps.network,
	(CASE
	 WHEN (pr.did IN
	       ( SELECT did FROM pcloud_reservation WHERE did AND stime <= (UNIX_TIMESTAMP(now())+300) AND etime >= (UNIX_TIMESTAMP(now())-60) AND 				(cancel = "N" ) ORDER BY stime ASC) )
	       THEN ('BUSY')
	       ELSE 'Available' END) as Device_Staus FROM pcloud_device pd
	JOIN pcloud_model pm ON pd.mid=pm.mid
	JOIN pcloud_manu pma ON pma.manid=pm.manid
	LEFT JOIN pcloud_sim ps ON pd.did = ps.did
	LEFT JOIN pcloud_reservation pr ON pd.did = pr.did
	WHERE pd.rbid!=0 AND pd.searchable=1 AND pd.did NOT IN (SELECT did FROM pcloud_extended_private_team WHERE start_date < UNIX_TIMESTAMP(now()) AND end_date > UNIX_TIMESTAMP(now()) )
	GROUP BY pd.did
	ORDER BY `pd`.`did`  DESC
	
	
	
	
	
	
	
	
	
	
	
	;
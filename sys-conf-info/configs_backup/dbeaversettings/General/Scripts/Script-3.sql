SELECT
	bs.booking_id ,
	bs.browser ,
	b.start_time as s1,
	b.end_time as e1,
	bs.start_time s2,
	bs.end_time e2
FROM
	booking b
INNER JOIN browser_session bs ON
	b.booking_id = bs.booking_id 
	
--	AND b.booking_id = '9d1effb1-f5f8-4200-a95f-f40bb317ba82'
;


SELECT * from browser_session bs  ;
select * from booking;

SELECT  * from knex_migrations_lock kml  



delete from booking where 1=1;

delete from browser_session where 1=1;

update browser_session set end_time = null where end_time =10;
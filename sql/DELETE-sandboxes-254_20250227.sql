BEGIN ;

/* 
CS169	Preview		Americas		2/27/2025	Removed
CS198	Preview		Americas		2/27/2025	Removed
*/

DELETE FROM public.rel_org_type
WHERE org_id in ('CS169','CS198');

COMMIT ;
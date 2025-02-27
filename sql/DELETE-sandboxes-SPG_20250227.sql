BEGIN ;

/* 
CS194	Preview		    Americas		2/27/2025	Removed
CS225	Preview		    Americas		2/27/2025	Removed
CS165	Non-Preview		Americas		2/27/2025	Removed
CS162	Non-Preview		Europe		    2/27/2025	Removed
*/

DELETE FROM public.rel_org_type
WHERE org_id in ('CS162','CS165','CS194','CS225');

COMMIT ;
BEGIN ;

/* 
CS218	Non-Preview	R2a	Americas	8/4/2021	1/27/2025	"Removed, Added - new sandbox"
CS219	Non-Preview	R2a	Americas	8/4/2021	1/27/2025	"Removed, Added - new sandbox"
CS170	Non-Preview	R2b	Americas	6/1/2021	1/27/2025	"Removed,Added - replaced CS50"
CS200	Non-Preview	R2b	Americas	1/16/2021	1/27/2025	"Removed, Added - replaced CS52"
CS202	Non-Preview	R2b	Americas	1/16/2021	1/27/2025	"Removed, Added - replaced CS70"
CS60	Non-Preview			        4/22/2020	1/27/2025	Removed
CS62	Non-Preview			        4/22/2020	1/27/2025	Removed
*/

DELETE FROM public.rel_org_type
WHERE org_id in ('CS60','CS62','CS170','CS200','CS202','CS218','CS219');

COMMIT ;
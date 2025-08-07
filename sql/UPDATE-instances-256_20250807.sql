BEGIN ;

/*  Removed instances
CS385	Non-Preview	R2b	Americas	5/12/2023	7/31/2025	Removed from TRUST
CS384	Preview	    SB1	Americas	5/12/2023	7/31/2025	Removed from TRUST
CS308	Preview	    SB1	Americas	4/3/2022	7/31/2025	Removed from TRUST
CS226	Non-Preview	R2a	Americas	1/19/2022	7/31/2025	Removed from TRUST
CS234	Preview	    SB1	Americas	6/1/2021	7/31/2025	Removed from TRUST
CS132	Non-Preview			        4/22/2020	7/31/2025	Removed from TRUST
CS133	Preview			            4/22/2020	7/31/2025	Removed from TRUST
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN ('CS132','CS133','CS226','CS234','CS308','CS384','CS385');

COMMIT ;
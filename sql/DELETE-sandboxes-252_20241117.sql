BEGIN ;

/* Instances were removed from TRUST on 11/17/2024

Instance	Type	    Stagger	Region	    Updated On	EOL Date
CS223	    Preview	    SB1	    Americas	1/19/2022	11/17/2024
CS220	    Non-Preview	R2a	    Americas	8/4/2021	11/17/2024
CS171	    Non-Preview	R2a	    Americas	3/9/2021	11/17/2024
CS203	    Preview	    SB1	    Americas	12/8/2020	11/17/2024
CS59	    Preview			                4/22/2020	11/17/2024

*/

DELETE FROM public.rel_org_type
WHERE org_id in ('CS59','CS171','CS203','CS220','CS223');

COMMIT ;
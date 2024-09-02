BEGIN ;

/* Remove below instances
CS22	Non-Preview			        4/22/2020	9/1/2024	Removed (was missing during comparison)
CS32	Preview			            4/22/2020	9/1/2024	Removed (was missing during comparison)
CS33	Non-Preview			        4/22/2020	9/1/2024	Removed (was missing during comparison)
CS119	Non-Preview	R2a-EU	Europe	4/22/2020	9/1/2024	Removed (was missing during comparison)
CS121	Non-Preview	R2a-EU	Europe	4/22/2020	9/1/2024	Removed (was missing during comparison)
CS122	Preview	    SB1	    Europe	4/22/2020	9/1/2024	Removed (was missing during comparison)
CS126	Preview	    SB1	    Europe	4/22/2020	9/1/2024	Removed (was missing during comparison)
CS160	Preview		        Europe	            9/1/2024	Removed (was missing during comparison)
*/

DELETE FROM public.rel_org_type
WHERE org_id in ('CS22','CS32','CS33','CS119','CS121','CS122','CS126','CS160');

/* Add missing instances
CS333	Preview	    SB1	Europe	    9/1/2024		Added - New sandbox (was missing)
USA80S	Preview	    SB1	Americas	9/1/2024		Added - New sandbox (was missing)
USA202S	Non-Preview	R2a	Americas	9/1/2024		Added - New sandbox (was missing)
USA222S	Preview	    SB0	Americas	9/1/2024		Added - New sandbox (was missing)
SWE28S	Non-Preview	R2a	Europe	    9/1/2024		Added - New sandbox (was missing)
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (250,'Summer ''24','CS333','Preview','Europe'),
    (250,'Summer ''24','USA80S','Preview','Americas'),
    (250,'Summer ''24','USA202S','Non-Preview','Americas'),
    (250,'Summer ''24','USA222S','Preview','Americas'),
    (250,'Summer ''24','SWE28S','Non-Preview','Europe');

COMMIT ;
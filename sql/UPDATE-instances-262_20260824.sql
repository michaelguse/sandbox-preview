BEGIN ;

/* Added instances
USA1364S	Non-Preview	R2a	Americas	8/24/2026		Added - New sandbox
USA1362S	Preview	    SB1	Americas	8/24/2026		Added - New sandbox
USA1360S	Non-Preview	R2a	Americas	8/24/2026		Added - New sandbox
USA1358S	Preview	    SB1	Americas	8/24/2026		Added - New sandbox
USA1354S	Preview	    SB1	Americas	8/24/2026		Added - New sandbox
USA1350S	Non-Preview	R2a	Americas	8/24/2026		Added - New sandbox
USA1342S	Preview	    SB1	Americas	8/16/2026		Added - New sandbox
USA1340S	Non-Preview	R2a	Americas	8/16/2026		Added - New sandbox
*/
INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (262,'Summer ''26','USA1364S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1362S','Preview','Americas'),
    (262,'Summer ''26','USA1360S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1358S','Preview','Americas'),
    (262,'Summer ''26','USA1354S','Preview','Americas'),
    (262,'Summer ''26','USA1350S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1342S','Preview','Americas'),
    (262,'Summer ''26','USA1340S','Non-Preview','Americas');

/* Removed instances
CS344	Non-Preview	R2b	    Americas	3/19/2024	8/16/2026
CS249	Non-Preview	R2b	    Americas	10/1/2022	8/16/2026
DEU48S	Preview	    SB1	    Europe	    9/17/2022	8/24/2026
DEU50S	Non-Preview	R2a-EU	Europe	    9/17/2022	8/24/2026
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN (
    'CS344', 'CS249', 'DEU48S', 'DEU50S');

COMMIT ;
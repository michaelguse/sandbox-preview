BEGIN ;

/*
USA1310S	Preview	    SB1	Americas	8/6/2026		Added - New sandbox
USA1312S	Non-Preview	R2a	Americas	8/6/2026		Added - New sandbox
USA1316S	Preview	    SB1	Americas	8/6/2026		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (262,'Summer ''26','USA1310S','Preview','Americas'),
    (262,'Summer ''26','USA1312S','Non-Preview','Americas'), 	
    (262,'Summer ''26','USA1316S','Preview','Americas');
COMMIT ;
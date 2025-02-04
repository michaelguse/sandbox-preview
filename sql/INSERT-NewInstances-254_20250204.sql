BEGIN ;

/*
USA1070S	Preview	SB1	Americas	2/4/2025		Added - New sandbox
USA1036S	Preview	SB1	Americas	2/4/2025		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (254,'Spring ''25','USA1070S','Preview','Americas'),
    (254,'Spring ''25','USA1036S','Preview','Americas');

COMMIT ;
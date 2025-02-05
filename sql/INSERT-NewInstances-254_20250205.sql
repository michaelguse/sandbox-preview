BEGIN ;

/*
JPN172S	Non-Preview	R2b	Asia	2/5/2025		Added - New sandbox
JPN174S	Preview	    SB2	Asia	2/5/2025		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (254,'Spring ''25','JPN172S','Non-Preview','Asia'),
    (254,'Spring ''25','JPN174S','Preview','Asia');

COMMIT ;
BEGIN ;

/*
USA996S	Preview	    SB1	Americas	1/16/2025		Added - New sandbox
USA998S	Preview	    SB0	Americas	1/16/2025		Added - New sandbox
JPN152S	Preview	    SB2	Asia	    1/16/2025		Added - New sandbox
JPN154S	Non-Preview	R2b	Asia	    1/16/2025		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (254,'Spring ''25','USA996S','Preview','Americas'),
    (254,'Spring ''25','USA998S','Preview','Americas'),
    (254,'Spring ''25','JPN152S','Preview','Asia'),
    (252,'Winter ''25','JPN154S','Non-Preview','Asia');

COMMIT ;
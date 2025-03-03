BEGIN ;

/*
JPN178S	    Preview	    SB2	Asia	    3/3/2025		New sandbox
JPN180S	    Preview	    SB2	Asia	    3/3/2025		New sandbox
JPN182S	    Non-Preview	R2b	Asia	    3/3/2025		New sandbox
JPN184S	    Non-Preview	R2b	Asia	    3/3/2025		New sandbox
IND140S	    Non-Preview	R2b	Asia	    3/3/2025		New sandbox
IND142S	    Preview	    SB2	Asia	    3/3/2025		New sandbox
DEU146S	    Non-Preview	R2a	Europe	    3/3/2025		New sandbox
USA1088S	Preview	    SB1	Americas	3/3/2025		New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (254,'Spring ''25','JPN178S','Preview','Asia'),  	
    (254,'Spring ''25','JPN180S','Preview','Asia'),  	
    (254,'Spring ''25','JPN182S','Non-Preview','Asia'),	
    (254,'Spring ''25','JPN184S','Non-Preview','Asia'),	
    (254,'Spring ''25','IND140S','Non-Preview','Asia'),	
    (254,'Spring ''25','IND142S','Preview','Asia'),  	
    (254,'Spring ''25','DEU146S','Non-Preview','Europe'),	
    (254,'Spring ''25','USA1088S','Preview','Americas');
COMMIT ;
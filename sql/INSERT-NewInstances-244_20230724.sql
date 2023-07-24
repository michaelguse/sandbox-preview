BEGIN ;

/*
USA432S	Non-Preview	R2a	Americas	7/23/2023
USA434S	Non-Preview	R2a	Americas	7/23/2023
USA490S	Non-Preview	R2a	Americas	7/23/2023
USA488S	Non-Preview	R2a	Americas	7/23/2023
USA366S	Non-Preview	R2a	Americas	7/23/2023
SWE44S	Non-Preview	R2a	Europe	    7/23/2023
GBR60S	Non-Preview	R2a	Europe	    7/23/2023
GBR62S	Non-Preview	R2a	Europe	    7/23/2023
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (244,'Summer ''23','USA432S','Non-Preview','Americas'),
    (244,'Summer ''23','USA434S','Non-Preview','Americas'),
    (244,'Summer ''23','USA490S','Non-Preview','Americas'),
    (244,'Summer ''23','USA488S','Non-Preview','Americas'),   
    (244,'Summer ''23','USA366S','Non-Preview','Americas'),
    (244,'Summer ''23','SWE44S','Non-Preview','Europe'),
    (244,'Summer ''23','GBR60S','Non-Preview','Europe'),
    (244,'Summer ''23','GBR62S','Non-Preview','Europe');

COMMIT ;
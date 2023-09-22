BEGIN ;

/*
USA534S	Preview	    SB1	Americas	9/22/2023		Added - new sandbox
USA540S	Non-Preview	R2a	Americas	9/22/2023		Added - new sandbox
USA542S	Preview	    SB1	Americas	9/22/2023		Added - new sandbox
CAN70S	Preview	    SB1	Americas	9/22/2023		Added - new sandbox
GBR90S	Preview	    SB1	Europe	    9/22/2023		Added - new sandbox
GBR92S	Preview	    SB1	Europe	    9/22/2023		Added - new sandbox
SWE60S	Preview	    SB1	Europe	    9/22/2023		Added - new sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (244,'Summer ''23','USA540S','Non-Preview','Americas'),
    (246,'Winter ''24','USA542S','Preview','Americas'),
    (246,'Winter ''24','USA534S','Preview','Americas'),
    (246,'Winter ''24','CAN70S','Preview','Americas'),
    (246,'Winter ''24','GBR90S','Preview','Europe'),
    (246,'Winter ''24','GBR92S','Preview','Europe'),
    (246,'Winter ''24','SWE60S','Preview','Europe');

COMMIT ;
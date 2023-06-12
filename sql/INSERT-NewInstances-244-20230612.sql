BEGIN ;

/*
GBR40S	Non-Preview	R2a	Europe	6/12/2023		Added - new sandbox
GBR42S	Preview	    SB1	Europe	6/12/2023		Added - new sandbox
GBR44S	Preview	    SB1	Europe	6/12/2023		Added - new sandbox
SWE30S	Preview	    SB1	Europe	6/12/2023		Added - new sandbox
SWE6S	Preview	    SB1	Europe	6/12/2023		Added - new sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (244,'Summer ''23','GBR40S','Non-Preview','Europe'),
    (244,'Summer ''23','GBR42S','Preview','Europe'),
    (244,'Summer ''23','GBR44S','Preview','Europe'),
    (244,'Summer ''23','SWE30S','Preview','Europe'),   
    (244,'Summer ''23','SWE6S','Preview','Europe');	   

COMMIT ;
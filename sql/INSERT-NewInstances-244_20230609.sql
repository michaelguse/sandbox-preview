BEGIN ;

/*
USA250S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA262S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA246S	Preview	    SB0	Americas	6/9/2023		Added - new sandbox
USA254S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA256S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA268S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA252S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA242S	Non-Preview	R2a	Americas	6/9/2023		Added - new sandbox
USA248S	Non-Preview	R2a	Americas	6/9/2023		Added - new sandbox
USA240S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA244S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA258S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA260S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
USA270S	Preview	    SB1	Americas	6/9/2023		Added - new sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (244,'Summer ''23','USA250S','Preview','Americas'),	   
    (244,'Summer ''23','USA262S','Preview','Americas'),	   
    (244,'Summer ''23','USA246S','Preview','Americas'),	   
    (244,'Summer ''23','USA254S','Preview','Americas'),	   
    (244,'Summer ''23','USA256S','Preview','Americas'),	   
    (244,'Summer ''23','USA268S','Preview','Americas'),	   
    (244,'Summer ''23','USA252S','Preview','Americas'),	   
    (244,'Summer ''23','USA242S','Non-Preview','Americas'),
    (244,'Summer ''23','USA248S','Non-Preview','Americas'),
    (244,'Summer ''23','USA240S','Preview','Americas'),
    (244,'Summer ''23','USA244S','Preview','Americas'),
    (244,'Summer ''23','USA258S','Preview','Americas'),
    (244,'Summer ''23','USA260S','Preview','Americas'),   
    (244,'Summer ''23','USA270S','Preview','Americas');	   

COMMIT ;
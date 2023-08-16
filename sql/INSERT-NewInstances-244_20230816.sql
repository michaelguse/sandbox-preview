BEGIN ;

/*
USA446S	Non-Preview	R2a	Americas	8/16/2023		Added - new sandbox
USA448S	Preview	    SB1	Americas	8/16/2023		Added - new sandbox
ITA2S	Preview	    SB1	Europe	    8/16/2023		Added - new sandbox
ITA4S	Non-Preview	R2a	Europe	    8/16/2023		Added - new sandbox
IDN2S	Preview	    SB1	Asia	    8/16/2023		Added - new sandbox
IDN4S	Non-Preview	R2a	Asia	    8/16/2023		Added - new sandbox

Items were added delayed, as they had incorrect settings on TRUST website.
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (244,'Summer ''23','USA446S','Non-Preview','Americas'),
    (244,'Summer ''23','USA448S','Preview','Americas'),
    (244,'Summer ''23','ITA2S','Preview','Europe'),
    (244,'Summer ''23','ITA4S','Non-Preview','Europe'),   
    (244,'Summer ''23','IDN2S','Preview','Asia'),
    (244,'Summer ''23','IDN4S','Non-Preview','Asia');

COMMIT ;
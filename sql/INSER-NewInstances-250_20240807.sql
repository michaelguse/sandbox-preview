BEGIN ;

/*
USA9904S	Preview	    SB1	Americas	8/6/2024		Added GovCloud instance
USA9022S	Non-Preview	R2b	Americas	8/6/2024		Added GovCloud instance
USA9024S	Preview	    SB1	Americas	8/6/2024		Added GovCloud instance
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (250,'Summer ''24','USA9904S','Preview','Americas'),
    (250,'Summer ''24','USA9022S','Non-Preview','Americas'),
    (250,'Summer ''24','USA9024S','Preview','Americas');

COMMIT ;

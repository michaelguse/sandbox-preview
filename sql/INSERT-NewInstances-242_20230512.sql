BEGIN ;

/*
CS385	Non-Preview	R2b	    Americas			Added - new sandbox
CS384	Preview	    SB1	    Americas			Added - new sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (242,'Spring ''23','CS384','Preview','Americas'),
    (242,'Spring ''23','CS385','Non-Preview','Americas');

COMMIT ;
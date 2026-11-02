BEGIN ;

/*
USA1418S	Non-Preview	R2a	Americas	10/27/2026		Added - New sandbox
USA1420S	Non-Preview	R2a	Americas	10/27/2026		Added - New sandbox
USA1424S	Preview	    SB1	Americas	10/27/2026		Added - New sandbox
USA1426S	Preview	    SB1	Americas	10/27/2026		Added - New sandbox
USA1428S	Preview	    SB1	Americas	10/27/2026		Added - New sandbox
USA1430S	Non-Preview	R2a	Americas	10/27/2026		Added - New sandbox
USA1432S	Non-Preview	R2a	Americas	10/27/2026		Added - New sandbox
USA1440S	Non-Preview	R2a	Americas	10/27/2026		Added - New sandbox
IND208S	    Preview	    SB2	Asia	    10/27/2026		Added - New sandbox
IND210S	    Non-Preview	R2b	Asia	    10/27/2026		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (264,'Winter ''27','USA1418S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1420S','Non-Preview','Americas'), 
    (264,'Winter ''27','USA1424S','Preview','Americas'),
    (264,'Winter ''27','USA1426S','Preview','Americas'),
    (264,'Winter ''27','USA1428S','Preview','Americas'),
    (264,'Winter ''27','USA1430S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1432S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1440S','Non-Preview','Americas'),
    (264,'Winter ''27','IND208S','Preview','Asia'),
    (264,'Winter ''27','IND210S','Non-Preview','Asia');
COMMIT ;
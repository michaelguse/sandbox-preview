BEGIN ;

/*
gbr136s	Non-Preview	R2a	Europe	    5/2/2024
gbr138s	Non-Preview	R2a	Europe	    5/2/2024
swe128s	Non-Preview	R2a	Europe	    5/2/2024
swe130s	Non-Preview	R2a	Europe	    5/2/2024
swe132s	Non-Preview	R2a	Europe	    5/2/2024
usa948s	Non-Preview	R2a	Americas	5/2/2024
usa950s	Non-Preview	R2a	Americas	5/2/2024
usa952s	Non-Preview	R2a	Americas	5/2/2024
usa954s	Preview	    SB1	Americas	5/2/2024
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (248,'Spring ''24','USA948S','Non-Preview','Americas'),
    (248,'Spring ''24','USA950S','Non-Preview','Americas'),
    (248,'Spring ''24','USA952S','Non-Preview','Americas'),
    (248,'Spring ''24','USA954S','Preview','Americas'),
    (248,'Spring ''24','GBR136S','Non-Preview','Europe'),
    (248,'Spring ''24','GBR138S','Non-Preview','Europe'),
    (248,'Spring ''24','SWE128S','Non-Preview','Europe'),
    (248,'Spring ''24','SWE130S','Non-Preview','Europe'),
    (248,'Spring ''24','SWE132S','Non-Preview','Europe');

COMMIT ;

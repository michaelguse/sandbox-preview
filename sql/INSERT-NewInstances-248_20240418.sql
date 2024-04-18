BEGIN ;

/*
USA9010S	Non-Preview	R2b	Americas	4/17/2024		GIA instance
USA9012S	Preview	    SB1	Americas	4/17/2024		GIA instance
USA9016S	Non-Preview	R2b	Americas	4/17/2024		GIA instance
USA9018S	Preview	    SB1	Americas	4/17/2024		GIA instance
USA916S	    Non-Preview	R2a	Americas	4/15/2024		aws-prod21-useast2.core1
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (248,'Spring ''24','USA9010S','Non-Preview','Americas'),
    (248,'Spring ''24','USA9012S','Preview','Americas'),
    (248,'Spring ''24','USA9016S','Non-Preview','Americas'),
    (248,'Spring ''24','USA9018S','Preview','Americas'),
    (248,'Spring ''24','USA916S','Non-Preview','Americas');

COMMIT ;

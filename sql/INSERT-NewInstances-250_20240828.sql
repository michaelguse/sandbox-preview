BEGIN ;

/*
JPN154S	Non-Preview	R2b	Asia	8/28/2024		Added - New sandbox
JPN152S	Preview	    SB2	Asia	8/28/2024		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (250,'Summer ''24','JPN154S','Non-Preview','Asia'),
    (250,'Summer ''24','JPN152S','Preview','Asia');

COMMIT ;
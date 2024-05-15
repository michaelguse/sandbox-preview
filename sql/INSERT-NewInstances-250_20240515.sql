BEGIN ;

/*
usa932s	Preview	SB1	Americas
usa934s	Preview	SB1	Americas
usa936s	Preview	SB1	Americas
usa938s	Preview	SB1	Americas
usa940s	Preview	SB1	Americas
usa942s	Preview	SB1	Americas
usa944s	Preview	SB1	Americas
usa946s	Preview	SB1	Americas
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (250,'Summer ''24','USA932S','Preview','Americas'),
    (250,'Summer ''24','USA934S','Preview','Americas'),
    (250,'Summer ''24','USA936S','Preview','Americas'),
    (250,'Summer ''24','USA938S','Preview','Americas'),
    (250,'Summer ''24','USA940S','Preview','Americas'),
    (250,'Summer ''24','USA942S','Preview','Americas'),
    (250,'Summer ''24','USA944S','Preview','Americas'),
    (250,'Summer ''24','USA946S','Preview','Americas');

COMMIT ;

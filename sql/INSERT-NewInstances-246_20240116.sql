BEGIN ;

/* 
DEU104S	Non-Preview	R2a	Europe	    1/16/2024		Added - New sandbox
USA836S	Non-Preview	R2a	Americas	1/16/2024		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (246,'Winter ''24','DEU104S','Non-Preview','Europe'),
    (246,'Winter ''24','USA836S','Non-Preview','Americas');

COMMIT ;

BEGIN ;

/*
CHE2S	Preview	    SB1	Europe	9/1/2023
CHE4S	Non-Preview	R2a	Europe	9/1/2023
ARE2S	Preview	    SB2	Asia	9/1/2023
ARE4S	Non-Preview	R2b	Asia	9/1/2023
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (246,'Winter ''24','CHE2S','Preview','Europe'),
    (244,'Summer ''23','CHE4S','Non-Preview','Europe'),
    (246,'Winter ''24','ARE2S','Preview','Asia'),
    (244,'Summer ''23','ARE4S','Non-Preview','Asia');

COMMIT ;
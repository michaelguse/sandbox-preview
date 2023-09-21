BEGIN ;

/*
CS290	Non-Preview	R2b	Asio	9/16/2023		        IR - replaced CS58
CS310	Non-Preview	R2b	Asia	9/16/2023		        IR - replaced CS6, CS73
CS58	Non-Preview	R2b	Asia	4/22/2020	9/16/2023	IR - replaced with CS290
CS6	    Non-Preview	R2b	Asia	4/22/2020	9/16/2023	IR - replaced with CS310
CS73	Non-Preview	R2b	Asia	4/22/2020	9/16/2023	IR - replaced with CS310
*/

UPDATE public.rel_org_type SET org_id='CS290' WHERE org_id='CS58' ;
UPDATE public.rel_org_type SET org_id='CS310' WHERE org_id='CS73' ;
DELETE FROM public.rel_org_type WHERE org_id='CS6';

/*
USA710S	Preview	    SB1	Americas	9/16/2023		        Added - new sandbox
USA712S	Non-Preview	R2a	Americas	9/16/2023		        Added - new sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (246,'Winter ''24','USA710S','Preview','Americas'),
    (244,'Summer ''23','USA712S','Non-Preview','Americas');

COMMIT ;
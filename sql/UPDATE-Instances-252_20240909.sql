BEGIN ;

/*
CS173	Non-Preview	R2a-EU	Europe	12/8/2020	9/9/2024	Removed - 9/9/2024
CS101	Non-Preview			        4/22/2020	9/9/2024	Removed
CS102	Non-Preview			        4/22/2020	9/9/2024	Removed
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS101','CS102','CS173');

/*
USA998S	Preview	SB0	Americas	9/9/2024		Added - New sandbox
USA996S	Preview	SB1	Americas	9/9/2024		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (252,'Spring ''25','USA996S','Preview','Americas'),
    (252,'Spring ''25','USA998S','Preview','Americas');

COMMIT ;
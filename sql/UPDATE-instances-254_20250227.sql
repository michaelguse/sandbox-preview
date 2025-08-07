BEGIN ;

/*
CS221	Preview	SB1	Americas	1/19/2022	2/27/2025	Removed
CS224	Preview	SB1	Americas	1/19/2022	2/27/2025	Removed
CS214	Preview	SB1	Americas	8/4/2021	2/27/2025	Removed
CS167	Preview	SB1	Americas	3/9/2021	2/27/2025	Removed
CS172	Preview	SB1	Americas	3/9/2021	2/27/2025	Removed
CS191	Preview	SB1	Americas	12/8/2020	2/27/2025	Removed
CS190	Preview	SB1	Americas	12/8/2020	2/27/2025	Removed
CS197	Preview	SB1	Americas	12/8/2020	2/27/2025	Removed
CS125	Preview			        4/22/2020	2/27/2025	Removed
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS221','CS224','CS214','CS167','CS172', 'CS191','CS190','CS197','CS125');

/*
USA1068S	Non-Preview	R2a	Americas	2/27/2025		Added - New sandbox
ITA52S	    Preview	    SB1	Europe	    2/27/2025		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (254,'Spring ''25','USA1068S','Non-Preview','Americas'),
    (254,'Spring ''25','IT52S','Preview','Europe');

COMMIT ;
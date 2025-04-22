BEGIN ;

/*  Removed instances
CS195	Preview		    Americas		        4/22/2025	Removed
CS222	Preview	SB1	    Americas	1/19/2022	4/22/2025	Removed
CS210	Preview	SB1	    Americas	8/4/2021	4/22/2025	Removed
CS211	Preview	SB1	    Americas	8/4/2021	4/22/2025	Removed
CS213	Preview	SB1	    Americas	8/4/2021	4/22/2025	Removed
CS215	Preview	SB1	    Americas	8/4/2021	4/22/2025	Removed
CS216	Preview	SB1	    Americas	8/4/2021	4/22/2025	Removed
CS217	Preview	SB1	    Americas	8/4/2021	4/22/2025	Removed
CS166	Preview	SB1	    Americas	3/9/2021	4/22/2025	Removed
CS193	Preview	SB1	    Americas	12/8/2020	4/22/2025	Removed
CS199	Preview	SB1	    Americas	12/8/2020	4/22/2025	Removed
CS201	Preview	SB1	    Americas	12/8/2020	4/22/2025	Removed
CS159	Preview	SB1	    Americas	8/11/2020	4/22/2025	Removed
CS61	Preview			            4/22/2020	4/22/2025	Removed
CS63	Preview			            4/22/2020	4/22/2025	Removed
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN (
    'CS195', 'CS222', 'CS210', 'CS211', 'CS213', 'CS215', 
    'CS216', 'CS217', 'CS166', 'CS193', 'CS199', 'CS201', 
    'CS159', 'CS61', 'CS63');

/*  Added instances
IND146S	    Preview	    SB2	Asia	    4/22/2025		Added - New sandbox
IND148S	    Non-Preview	R2b	Asia	    4/22/2025		Added - New sandbox
USA1074S	Non-Preview	R2a	Americas	4/22/2025		Added - New sandbox
USA1076S	Preview	    SB1	Americas	4/22/2025		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (254,'Spring ''25','IND146S','Preview','Asia'),
    (254,'Spring ''25','IND148S','Non-Preview','Asia'),
    (254,'Spring ''25','USA1074S','Non-Preview','Americas'),
    (254,'Spring ''25','USA1076S','Preview','Americas');

COMMIT ;
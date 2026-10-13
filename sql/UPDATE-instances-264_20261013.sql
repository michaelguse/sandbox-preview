BEGIN ;

/* Added instances
USA1228S	Non-Preview	R2a	Americas	10/8/2026		Added - New sandbox
USA1410S	Non-Preview	R2a	Americas	10/13/2026		Added - New sandbox
USA1412S	Preview	    SB1	Americas	10/13/2026		Added - New sandbox
USA1414S	Non-Preview	R2a	Americas	10/13/2026		Added - New sandbox
USA1416S	Preview	    SB1	Americas	10/13/2026		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (264,'Winter ''27','USA1228S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1410S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1412S','Preview','Americas'),
    (264,'Winter ''27','USA1414S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1416S','Preview','Americas');

/* Removed instances
CS333	Preview	SB1	Europe	    9/1/2024	10/8/2026	Removed Instance
CS336	Preview	SB1	Europe	    8/26/2024	10/8/2026	Removed Instance
CS316	Preview	SB2	Asia	    6/17/2024	10/8/2026	Removed Instance
CS317	Preview	SB2	Asia	    6/17/2024	10/8/2026	Removed Instance
CS338	Preview	SB1	Europe	    6/17/2024	10/8/2026	Removed Instance
CS343	Preview	SB1	Americas	2/18/2024	10/8/2026	Removed Instance
CS282	Preview	SB1	Americas	4/4/2023	10/8/2026	Removed Instance
CS281	Preview	SB1	Americas	4/4/2023	10/8/2026	Removed Instance
CS280	Preview	SB1	Americas	4/4/2023	10/8/2026	Removed Instance
CS279	Preview	SB1	Americas	4/4/2023	10/8/2026	Removed Instance
CS278	Preview	SB1	Americas	4/4/2023	10/8/2026	Removed Instance
CS274	Preview	SB1	Americas	4/4/2023	10/8/2026	Removed Instance
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN (
    'CS333', 'CS336', 'CS316', 'CS317', 'CS338', 'CS343', 'CS282', 'CS281', 'CS280', 'CS279', 'CS278', 'CS274');

COMMIT ;
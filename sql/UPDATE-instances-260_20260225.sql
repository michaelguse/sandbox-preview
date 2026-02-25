BEGIN ;

/* Added instances
usa1150s	No-Preview	R2a	Americas	2/16/2026		Added - New sandbox
usa1152s	Non-Preview	R2a	Americas	2/16/2026		Added - New sandbox
usa1154s	Preview	    SB1	Americas	2/16/2026		Added - New sandbox
usa1156s	Preview	    SB1	Americas	2/16/2026		Added - New sandbox
deu150s	    Preview	    SB1	Europe	    1/28/2026		Added - New sandbox
usa1134s	Non-Preview	R2a	Americas	1/28/2026		Added - aws-prod27-useast1.core1
usa1136s	Preview	    SB1	Americas	1/28/2026		Added - aws-prod27-useast1.core1
usa1148s	Preview	    SB1	Americas	1/28/2026		Added - aws-prod1-useast1.core1
usa9028s	Preview	    SB1	Americas	10/3/2025		Added - new sandbox
*/
INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (260,'Spring ''26','USA1150S','No-Preview','Americas'),
    (260,'Spring ''26','USA1152S','Non-Preview','Americas'),
    (260,'Spring ''26','USA1154S','Preview','Americas'),
    (260,'Spring ''26','USA1156S','Preview','Americas'),
    (260,'Spring ''26','DEU150S','Preview','Europe'),
    (260,'Spring ''26','USA1134S','Non-Preview','Americas'),
    (260,'Spring ''26','USA1136S','Preview','Americas'),
    (260,'Spring ''26','USA1148S','Preview','Americas'),
    (260,'Spring ''26','USA9028S','Preview','Americas');

/* Removed instances
USA1088S	Preview	    SB1	Americas	2/25/2026		        Removed sandbox from Trust
CS290	    Non-Preview	R2b	Asia	    9/16/2023	2/16/2026	Removed sandbox
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN (
    'USA1088S', 'CS290');

COMMIT ;
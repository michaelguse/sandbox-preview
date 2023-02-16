BEGIN ;

/*
CS266	Preview	SB1	Americas - One-way Instance Refresh - CS19
CS267	Preview	SB1	Americas - One-way Instance Refresh - CS20
CS268	Preview	SB1	Americas - One-way Instance Refresh - CS21
CS270	Preview	SB1	Americas - One-way Instance Refresh - CS25
CS271	Preview	SB1	Americas - One-way Instance Refresh - CS26
CS265	Preview	SB1	Americas - One-way Instance Refresh - CS69
CS259	Preview	SB1	Americas - One-way Instance Refresh - CS96
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS19','CS20','CS21','CS25','CS26','CS69','CS96');

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (242,'Spring ''23','CS266','Preview','Americas'),
    (242,'Spring ''23','CS267','Preview','Americas'),
    (242,'Spring ''23','CS268','Preview','Americas'),
    (242,'Spring ''23','CS270','Preview','Americas'),
    (242,'Spring ''23','CS271','Preview','Americas'),
    (242,'Spring ''23','CS265','Preview','Americas'),
    (242,'Spring ''23','CS259','Preview','Americas');

COMMIT ;
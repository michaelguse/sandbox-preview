BEGIN ;

/* CS251	Non-Preview, Americas	9/17/2022	One-way Instance Refresh - CS68-PHX */
/* CS252	Non-Preview, Americas	9/17/2022	One-way Instance Refresh - CS90-PHX */

DELETE FROM public.rel_org_type WHERE org_id in ('CS68','CS90');

/* DEU48S	Preview,  Europe	9/17/2022	Added - new sandbox */
/* DEU50S	Non-Preview, Europe	9/17/2022	Added - new sandbox */

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (238,'Summer ''22','CS251','Non-Preview','Americas'),
    (238,'Summer ''22','CS252','Non-Preview','Americas'),
    (240,'Winter ''23','DEU48S','Preview','Europe'),
    (240,'Winter ''23','DEU50S','Non-Preview','Europe');

COMMIT ;
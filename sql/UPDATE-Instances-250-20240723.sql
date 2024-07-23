BEGIN ;

/*
Instances to be removed:
CS84
CS88
CS105
CS107
CS128
CS129
CS174
CS189
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS84','CS88','CS105','CS107','CS128','CS129','CS174','CS189');

/*
Instances to be added:
CS331   Preview SB1 Europe
CS334   Preview SB1 Europe
CS335   Preview SB1 Europe
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (250,'Summer ''24','CS331','Preview','Europe'),
    (250,'Summer ''24','CS334','Preview','Europe'),
    (250,'Summer ''24','CS335','Preview','Europe');

COMMIT ;
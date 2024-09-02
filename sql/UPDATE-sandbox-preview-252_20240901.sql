UPDATE public.rel_org_type
SET internal_rel_name = 252,
    external_rel_name = 'Winter ''25'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 250;
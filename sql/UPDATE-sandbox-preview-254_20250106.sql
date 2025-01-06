UPDATE public.rel_org_type
SET internal_rel_name = 254,
    external_rel_name = 'Spring ''25'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 252;
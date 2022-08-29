UPDATE public.rel_org_type
SET internal_rel_name = 240,
    external_rel_name = 'Winter ''23'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 238;
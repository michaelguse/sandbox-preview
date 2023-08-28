UPDATE public.rel_org_type
SET internal_rel_name = 246,
    external_rel_name = 'Winter ''24'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 244;
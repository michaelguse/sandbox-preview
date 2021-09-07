UPDATE public.rel_org_type
SET internal_rel_name = 234,
    external_rel_name = 'Winter ''22'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 232;
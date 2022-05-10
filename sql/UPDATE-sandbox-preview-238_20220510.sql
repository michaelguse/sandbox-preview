UPDATE public.rel_org_type
SET internal_rel_name = 238,
    external_rel_name = 'Summer ''22'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 236;
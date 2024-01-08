UPDATE public.rel_org_type
SET internal_rel_name = 248,
    external_rel_name = 'Spring ''24'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 246;
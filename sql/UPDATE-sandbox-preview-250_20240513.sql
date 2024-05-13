UPDATE public.rel_org_type
SET internal_rel_name = 250,
    external_rel_name = 'Summer ''24'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 248;
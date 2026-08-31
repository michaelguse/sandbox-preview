UPDATE public.rel_org_type
SET internal_rel_name = 264,
    external_rel_name = 'Winter ''27'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 262;
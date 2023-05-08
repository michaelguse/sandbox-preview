UPDATE public.rel_org_type
SET internal_rel_name = 244,
    external_rel_name = 'Summer ''23'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 242;
UPDATE public.rel_org_type
SET internal_rel_name = 226,
    external_rel_name = 'Summer ''20'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 224;
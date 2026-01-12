UPDATE public.rel_org_type
SET internal_rel_name = 260,
    external_rel_name = 'Spring ''26'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 258;
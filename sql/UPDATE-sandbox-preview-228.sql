UPDATE public.rel_org_type
SET internal_rel_name = 228,
    external_rel_name = 'Winter ''21'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 226;
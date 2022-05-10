UPDATE public.rel_org_type
SET internal_rel_name = 236,
    external_rel_name = 'Spring ''22'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 238 AND
 org_id in ('CS32', 'CS133', 'CS234', 'CS308');
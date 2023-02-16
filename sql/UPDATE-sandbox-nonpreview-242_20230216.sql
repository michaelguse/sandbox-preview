UPDATE public.rel_org_type
SET internal_rel_name = 242,
    external_rel_name = 'Spring ''23'
WHERE
 org_type = 'Non-Preview' AND
 internal_rel_name = 240;
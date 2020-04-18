UPDATE public.rel_org_type
SET internal_rel_name = 224,
    external_rel_name = 'Spring ''20'
WHERE
 org_type = 'Non-Preview' AND
 internal_rel_name = 222;
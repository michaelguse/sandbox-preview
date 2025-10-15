UPDATE public.rel_org_type
SET internal_rel_name = 258,
    external_rel_name = 'Winter ''26'
WHERE
 org_type = 'Non-Preview' AND
 internal_rel_name = 256;
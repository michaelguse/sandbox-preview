UPDATE public.rel_org_type
SET internal_rel_name = 232,
    external_rel_name = 'Summer ''21'
WHERE
 org_type = 'Non-Preview' AND
 internal_rel_name = 230;
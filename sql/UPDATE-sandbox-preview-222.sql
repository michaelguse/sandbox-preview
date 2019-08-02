UPDATE public.rel_org_type
SET internal_rel_name = 222,
    external_rel_name = 'Winter ''20'
WHERE
 org_type = 'Preview' AND
 internal_rel_name = 220;
UPDATE public.rel_org_type
SET internal_rel_name = 226,
    external_rel_name = 'Summer ''20'
WHERE
 org_type = 'Non-Preview' AND
 internal_rel_name = 224 AND
 org_id in ('CS33','CS165','CS132');
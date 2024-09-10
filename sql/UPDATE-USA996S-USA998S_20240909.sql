UPDATE public.rel_org_type
SET external_rel_name = 'Winter ''25'
WHERE
 org_id in ('USA996S','USA998S') AND
 external_rel_name = 'Spring ''25';
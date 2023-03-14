SELECT 
    SUM(COUNT(*)) OVER() AS all_count,
    SUM(COUNT(org_type)) OVER(PARTITION BY org_type) AS type_count,
    COUNT(org_id) AS org_count,
    org_type,
    org_region,
    external_rel_name,
    internal_rel_name
FROM public.rel_org_type
GROUP BY 
    org_type, 
    org_region, 
    external_rel_name,
    internal_rel_name
ORDER BY org_type DESC, org_region, external_rel_name;

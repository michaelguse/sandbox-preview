SELECT 
    SUM(COUNT(*)) OVER() AS "Total Count",
    SUM(COUNT(org_type)) OVER(PARTITION BY org_type) AS "Count by Type",
    COUNT(org_id) AS "Count by Type/Region",
    org_type as "Type",
    org_region as "Region",
    external_rel_name as "Release Name",
    internal_rel_name as "Release Version"
FROM public.rel_org_type
GROUP BY 
    org_type, 
    org_region, 
    external_rel_name,
    internal_rel_name
ORDER BY org_type DESC, org_region, external_rel_name;

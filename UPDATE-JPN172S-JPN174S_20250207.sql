/*

February 7, 2025

Moving two instances back to Winter '25 from Spring '25, as there was an error between PodTap and Trust information.

See Slack Trust support issue for details: https://salesforce-internal.slack.com/archives/C020LLTTJHZ/p1738792305325989

*/

UPDATE public.rel_org_type 
SET internal_rel_name = 252, 
    external_rel_name = 'Winter ''25'
WHERE internal_rel_name = 254 AND
    org_id in ('JPN172S','JPN174S')
BEGIN ;

/*
CS339	Non-Preview	R2a	Americas	5/21/2024		IR: CS86, CS89==> CS339(AM3-SP1)
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  

    (248,'Spring ''24','CS339','Non-Preview','Americas');

/*
Removed Instances
CS86	Non-Preview	4/22/2020	5/20/2024	IR: CS86, CS89 ==> CS339(AM3-SP1)
CS89	Non-Preview	4/22/2020	5/20/2024	IR: CS86, CS89 ==> CS339(AM3-SP1)
*/

DELETE FROM public.rel_org_type WHERE org_id='CS86';
DELETE FROM public.rel_org_type WHERE org_id='CS89';

COMMIT ;
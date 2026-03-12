BEGIN;

/*
UPDATE instances to be removed from TRUST
CS291	Preview	SB2	Americas	10/14/2023	3/12/2026
CS293	Preview	SB2	Americas	10/14/2023	3/12/2026
CS295	Preview	SB2	Americas	10/14/2023	3/12/2026
CS311	Preview	SB2	Americas	10/14/2023	3/12/2026
CS312	Preview	SB2	Americas	10/14/2023	3/12/2026
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN (
    'CS291', 'CS293', 'CS295', 'CS311', 'CS312');

COMMIT ;
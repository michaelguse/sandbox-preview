BEGIN ;

/*
CS123	Preview			        4/22/2020	11/1/2024	Removed from TRUST
CS124	Preview			        4/22/2020	11/1/2024	Removed from TRUST
CS192	Preview	SB1	Americas	12/8/2020	11/1/2024	Removed from TRUST
CS209	Preview	SB1	Americas	8/4/2021	11/1/2024	Removed from TRUST
CS212	Preview	SB1	Americas	8/4/2021	11/1/2024	Removed from TRUST
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS123','CS124','CS192','CS209','CS212');

/*
CS345	Preview	SB1	Americas	11/1/2024		Added - New sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (252,'Spring ''25','CS345','Preview','Americas');

COMMIT ;
BEGIN ;

/*
CS338	Preview	SB1	Europe	1/23/2024		        Added - New sandbox
CS24	Non-Preview			4/22/2020	1/23/2024	Removed - replaced with CS255
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS24');

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (248,'Spring ''24','CS338','Preview','Europe');

COMMIT ;
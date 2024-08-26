BEGIN ;

/* DELETE
CS100
CS106
CS109
*/

DELETE FROM public.rel_org_type
WHERE org_id in ('CS100','CS106','CS109');

/* INSERT
CS336	Preview	    SB1	Europe	8/6/2024  8/17/2024		Added GovCloud instance
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (250,'Summer ''24','CS336S','Preview','Europe');

COMMIT ;

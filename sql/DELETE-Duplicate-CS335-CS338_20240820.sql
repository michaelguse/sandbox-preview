BEGIN ;

/*
CS335 Id: 425
CS338 Id: 422
*/

DELETE FROM public.rel_org_type
WHERE org_id = 'CS335' AND id = 425;

DELETE FROM public.rel_org_type
WHERE org_id = 'CS338' AND id = 422;

COMMIT ;

BEGIN ;

/*
Update incorrect regions for instances
CS328 Americas --> Europe
CS332 Americas --> Europe
*/

UPDATE public.rel_org_type SET org_region='Europe' WHERE org_id='CS328' ;
UPDATE public.rel_org_type SET org_region='Europe' WHERE org_id='CS332' ;

COMMIT ;
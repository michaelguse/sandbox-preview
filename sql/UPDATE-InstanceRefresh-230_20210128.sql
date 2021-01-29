BEGIN ;
UPDATE public.rel_org_type SET org_type='Non-Preview' WHERE org_id='CS200' ;
UPDATE public.rel_org_type SET org_type='Non-Preview' WHERE org_id='CS202' ;
COMMIT ;
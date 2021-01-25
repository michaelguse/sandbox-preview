BEGIN ;
UPDATE public.rel_org_type SET org_id='CS200' WHERE org_id='CS52' ;
UPDATE public.rel_org_type SET org_id='CS202' WHERE org_id='CS70' ;
COMMIT ;

BEGIN ;
UPDATE public.rel_org_type SET org_type='Preview' WHERE org_id='CS200' ;
UPDATE public.rel_org_type SET org_type='Preview' WHERE org_id='CS202' ;
COMMIT ;
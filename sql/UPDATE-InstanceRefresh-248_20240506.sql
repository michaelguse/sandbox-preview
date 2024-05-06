BEGIN ;

/*
CS319	Non-Preview	R2b	Asia			IR: CS114 (UKB/HND) ==> CS319 (IT4-SP1)
CS320	Non-Preview	R2b	Asia			IR: CS117 (UKB/HND) ==> CS320 (HN4-SP1)
*/

UPDATE public.rel_org_type SET org_id='CS319' WHERE org_id='CS114' ;
UPDATE public.rel_org_type SET org_id='CS320' WHERE org_id='CS117' ;

COMMIT ;
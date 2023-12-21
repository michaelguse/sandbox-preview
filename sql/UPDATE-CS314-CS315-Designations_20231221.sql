BEGIN ;

/*
Change Org_Type values
from
CS314	Non-Preview R2b	Asia
CS315	Preview	    SB2	Asia
to
CS314	Preview	    SB2	Asia
CS315	Non-Preview	R2b	Asia
*/

UPDATE public.rel_org_type SET org_type='Preview' WHERE org_id='CS314' AND org_type='Non-Preview';
UPDATE public.rel_org_type SET org_type='Non-Preview' WHERE org_id='CS315' AND org_type='Preview' ;

COMMIT ;
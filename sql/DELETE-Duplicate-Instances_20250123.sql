BEGIN ;

/*
USA996S	Preview	    Spring '25  Id: 506
USA998S	Preview	    Spring '25  Id: 507
JPN152S	Preview	    Spring '25  Id: 508
JPN154S	Non-Preview	Winter '25  Id: 509
*/

DELETE FROM public.rel_org_type
WHERE org_id = 'USA996S' AND id = 506;

DELETE FROM public.rel_org_type
WHERE org_id = 'USA998S' AND id = 507;

DELETE FROM public.rel_org_type
WHERE org_id = 'JPN152S' AND id = 508;

DELETE FROM public.rel_org_type
WHERE org_id = 'JPN154S' AND id = 509;

COMMIT ;
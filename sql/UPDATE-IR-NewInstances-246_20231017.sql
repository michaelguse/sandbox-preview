BEGIN ;

/*
Instance Refreshes

CS291	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS5 --> CS291)
CS293	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS31 --> CS293)
CS294	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS57 --> CS294)
CS295	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS72 --> CS295)
CS311	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS76 --> CS311)
CS312	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS74 --> CS312)
CS313	Preview	SB2	Americas	10/14/2023		IR - SB2 HN3/IT3 - SP1 (CS75 --> CS313)
*/

UPDATE public.rel_org_type SET org_id='CS291' WHERE org_id='CS5' ;
UPDATE public.rel_org_type SET org_id='CS293' WHERE org_id='CS31';
UPDATE public.rel_org_type SET org_id='CS294' WHERE org_id='CS57';
UPDATE public.rel_org_type SET org_id='CS295' WHERE org_id='CS72';
UPDATE public.rel_org_type SET org_id='CS311' WHERE org_id='CS76';
UPDATE public.rel_org_type SET org_id='CS312' WHERE org_id='CS74';
UPDATE public.rel_org_type SET org_id='CS313' WHERE org_id='CS75';

/*
New Instances

gbr106s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
gbr108s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
gbr110s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
ita22s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
swe88s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
swe90s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
swe92s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
swe94s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox
swe96s	Preview	SB1	Europe	    10/14/2023		Added - new sandbox

usa654s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa656s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa658s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa660s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa662s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa664s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa666s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa668s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa670s	Preview	SB1	Americas	10/14/2023		Added - new sandbox
usa672s	Preview	SB1	Americas	10/14/2023		Added - new sandbox

*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  

    (246,'Winter ''24','GBR106S','Preview','Europe'),
    (246,'Winter ''24','GBR108S','Preview','Europe'),
    (246,'Winter ''24','GBR110S','Preview','Europe'),
    (246,'Winter ''24','ITA22S','Preview','Europe'),
    (246,'Winter ''24','SWE88S','Preview','Europe'),
    (246,'Winter ''24','SWE90S','Preview','Europe'),
    (246,'Winter ''24','SWE92S','Preview','Europe'),
    (246,'Winter ''24','SWE94S','Preview','Europe'),
    (246,'Winter ''24','SWE96S','Preview','Europe'),
    (246,'Winter ''24','USA654S','Preview','Americas'),
    (246,'Winter ''24','USA656S','Preview','Americas'),
    (246,'Winter ''24','USA658S','Preview','Americas'),
    (246,'Winter ''24','USA660S','Preview','Americas'),
    (246,'Winter ''24','USA662S','Preview','Americas'),
    (246,'Winter ''24','USA664S','Preview','Americas'),
    (246,'Winter ''24','USA666S','Preview','Americas'),
    (246,'Winter ''24','USA668S','Preview','Americas'),
    (246,'Winter ''24','USA670S','Preview','Americas'),
    (246,'Winter ''24','USA672S','Preview','Americas');

/*
Removed Instances

CS98	Non-Preview		4/22/2020	10/14/2023	Removed
CS99	Preview			4/22/2020	10/14/2023	Removed
CS138	Preview			4/22/2020	10/14/2023	Removed
CS142	Preview			4/22/2020	10/14/2023	Removed
*/

DELETE FROM public.rel_org_type WHERE org_id='CS98';
DELETE FROM public.rel_org_type WHERE org_id='CS99';
DELETE FROM public.rel_org_type WHERE org_id='CS138';
DELETE FROM public.rel_org_type WHERE org_id='CS142';

COMMIT ;
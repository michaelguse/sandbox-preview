BEGIN ;

/*
CS282	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS77
CS281	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS67
CS280	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS27
CS279	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS37
CS278	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS36
CS277	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS35
CS276	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS17
CS274	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS34
CS273	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS15
CS272	Preview	    SB1	Americas	4/1/2023	    One-way IR - CS14

CS283	Non-Preview	R2b	Americas	4/13/2023		One-way IR - CS43
CS275	Non-Preview	R2b	Americas	4/13/2023		One-way IR - CS29

CS314	Non-Preview	R2b	Asia	    4/7/2023		Added - new sandbox
CS315	Preview	    SB2	Asia	    4/7/2023		Added - new sandbox

USA222S	Preview	SB0	Americas 10/17/2022	4/9/2023	Added - new sandbox
                                                    Removed instance from TRUST - internal only
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS14','CS15','CS34','CS17','CS35','CS36','CS37','CS27','CS67','CS77');

DELETE FROM public.rel_org_type WHERE org_id in ('CS29','CS43');

DELETE FROM public.rel_org_type WHERE org_id in ('USA222S');

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (242,'Spring ''23','CS272','Preview','Americas'),
    (242,'Spring ''23','CS273','Preview','Americas'),
    (242,'Spring ''23','CS274','Preview','Americas'),
    (242,'Spring ''23','CS276','Preview','Americas'),
    (242,'Spring ''23','CS277','Preview','Americas'),
    (242,'Spring ''23','CS278','Preview','Americas'),
    (242,'Spring ''23','CS279','Preview','Americas'),
    (242,'Spring ''23','CS280','Preview','Americas'),
    (242,'Spring ''23','CS281','Preview','Americas'),
    (242,'Spring ''23','CS282','Preview','Americas'),
    (242,'Spring ''23','CS275','Non-Preview','Americas'),
    (242,'Spring ''23','CS283','Non-Preview','Americas'),
    (242,'Spring ''23','CS314','Non-Preview','Asia'),
    (242,'Spring ''23','CS315','Preview','Asia');

COMMIT ;
BEGIN ;

/*
Instance Refreshes:
CS344						R2b			CS1 & CS40 → CS344 (IA7)
CS332						SB1			CS126 & CS80 & CS122 → CS332 (AR3)
CS328						R2a			CS110 & CS119 → CS328 (AR3)

Instances to be removed:
CS1
CS40
CS80
cS110

New instances:

CS328	Non-Preview	R2a	Americas
CS332	Preview	    SB1	Americas
CS344	Non-Preview	R2b	Americas
bra54s	Preview	    SB1	Americas
fra96s	Preview	    SB1	Europe
fra98s	Non-Preview	R2a	Europe
che26s	Preview	    SB1	Europe
swe120s	Non-Preview	R2a	Europe
ita32s	Non-Preview	R2a	Europe
usa870s	Preview	    SB1	Americas
usa872s	Preview	    SB1	Americas
usa874s	Non-Preview	R2a	Americas
isr2s	Non-Preview	R2a	Europe
isr4s	Preview	    SB1	Europe
deu114s	Preview	    SB1	Europe
deu116s	Non-Preview	R2a	Europe
can86s	Preview	    SB1	Americas

*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS1','CS40','CS80','CS110');

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (248,'Spring ''24','CS328','Non-Preview','Americas'),
    (248,'Spring ''24','CS332','Preview','Americas'),
    (248,'Spring ''24','CS344','Non-Preview','Americas'),
    (248,'Spring ''24','BRA54S','Preview','Americas'),
    (248,'Spring ''24','FRA96S','Preview','Europe'),
    (248,'Spring ''24','FRA98S','Non-Preview','Europe'),
    (248,'Spring ''24','CHE26S','Preview','Europe'),
    (248,'Spring ''24','SWE120S','Non-Preview','Europe'),
    (248,'Spring ''24','ITA32S','Non-Preview','Europe'),
    (248,'Spring ''24','USA870S','Preview','Americas'),
    (248,'Spring ''24','USA872S','Preview','Americas'),
    (248,'Spring ''24','USA874S','Non-Preview','Americas'),
    (248,'Spring ''24','ISR2S','Non-Preview','Europe'),
    (248,'Spring ''24','ISR4S','Preview','Europe'),
    (248,'Spring ''24','DEU114S','Preview','Europe'),
    (248,'Spring ''24','DEU116S','Non-Preview','Europe'),
    (248,'Spring ''24','CAN86S','Preview','Americas');

COMMIT ;
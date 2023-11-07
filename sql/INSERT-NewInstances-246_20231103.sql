BEGIN ;

/*
usa774s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa772s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa770s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa768s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa766s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa764s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa762s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa760s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa758s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa756s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa754s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa752s	Preview	    SB1	Americas	11/3/2023		Added - New sandbox
usa750s	Non-Preview	R2a	Americas	11/3/2023		Added - New sandbox
usa786s	Non-Preview	R2a	Americas	11/3/2023		Added - New sandbox

USA9006S	Preview	    SB1	Americas	11/1/2023		Added - new sandbox
USA9406S	Preview	    SB1	Americas	11/1/2023		Added - new sandbox
USA9004S	Non-Preview	R2b	Americas	11/1/2023		Added - new sandbox
USA9404S	Non-Preview	R2b	Americas	11/1/2023		Added - new sandbox
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (246,'Winter ''24','USA774S','Preview','Americas'),
    (246,'Winter ''24','USA772S','Preview','Americas'),
    (246,'Winter ''24','USA770S','Preview','Americas'),
    (246,'Winter ''24','USA768S','Preview','Americas'),
    (246,'Winter ''24','USA766S','Preview','Americas'),
    (246,'Winter ''24','USA764S','Preview','Americas'),
    (246,'Winter ''24','USA762S','Preview','Americas'),
    (246,'Winter ''24','USA760S','Preview','Americas'),
    (246,'Winter ''24','USA758S','Preview','Americas'),
    (246,'Winter ''24','USA756S','Preview','Americas'),
    (246,'Winter ''24','USA754S','Preview','Americas'),
    (246,'Winter ''24','USA752S','Preview','Americas'),
    (246,'Winter ''24','USA750S','Non-Preview','Americas'),
    (246,'Winter ''24','USA786S','Non-Preview','Americas'),    
    (246,'Winter ''24','USA9006S','Preview','Americas'),
    (246,'Winter ''24','USA9406S','Preview','Americas'),
    (246,'Winter ''24','USA9004S','Non-Preview','Americas'),
    (246,'Winter ''24','USA9404S','Non-Preview','Americas');

COMMIT ;
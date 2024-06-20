BEGIN ;

/*
June Instance Refresh

CS2 -> CS257 (SB1) - target already exists
CS111 -> CS316 (SB2)
CS112 -> CS317 (SB2)
CS113 -> CS318 (SB2)
CS108/CS364/CS365 - > CS335 (SB1)
CS81/CS87 -> CS337 (SB1)
CS127/CS160 -> CS338 (SB1)
CS46/CS49 -> CS340 (SB0) - Don't add SB0 instances to SPG website
*/

DELETE FROM public.rel_org_type WHERE org_id in ('CS2','CS111','CS112','CS113','CS108','CS364','CS365','CS81','CS87','CS127');

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (250,'Summer ''24','CS316','Preview','Asia'),
    (250,'Summer ''24','CS317','Preview','Asia'),
    (250,'Summer ''24','CS318','Preview','Asia'),
    (250,'Summer ''24','CS335','Preview','Europe'),
    (250,'Summer ''24','CS337','Preview','Europe'),
    (250,'Summer ''24','CS338','Preview','Europe');

COMMIT ;
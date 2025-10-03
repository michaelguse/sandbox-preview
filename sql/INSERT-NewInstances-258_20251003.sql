BEGIN ;

/*
usa1096s	Preview	    SB0	Americas	9/30/2025		New sandbox (aws-prod0-uswest2.core1)
usa1098s	Non-Preview	R1	Americas	9/30/2025		New sandbox (aws-prod0-uswest2.core1)
usa1100s	Preview	    SB1	Americas	9/30/2025		New sandbox (aws-prod0-uswest2.core1)
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES  
    (258,'Winter ''26','USA1096S','Preview','Americas'),
    (256,'Summer ''25','USA1098S','Non-Preview','Americas'), 	
    (258,'Winter ''26','USA1100S','Preview','Americas');
COMMIT ;
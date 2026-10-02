BEGIN ;

/* Added instances
USA1128S	Non-Preview	    Americas	7/10/2026
USA1130S	Preview	        Americas	7/10/2026
USA1178S	Preview	        Americas	7/10/2026
USA1194S	Preview	        Americas	7/10/2026
USA1196S	Preview	        Americas	7/10/2026
USA1198S	Preview	        Americas	7/10/2026
USA1200S	Preview	        Americas	7/10/2026
USA1202S	Preview	        Americas	7/10/2026
USA1204S	Preview	        Americas	7/10/2026
USA1206S	Preview	        Americas	7/10/2026
USA1208S	Preview	        Americas	7/10/2026
USA1214S	Non-Preview	    Americas	7/10/2026
USA1216S	Preview	        Americas	7/10/2026
USA1218S	Preview	        Americas	7/10/2026
USA1220S	Non-Preview	    Americas	7/10/2026
USA1234S	Non-Preview	    Americas	7/10/2026
USA1236S	Non-Preview	    Americas	7/10/2026
USA1238S	Non-Preview	    Americas	7/10/2026
USA1240S	Non-Preview	    Americas	7/10/2026
USA1242S	Non-Preview	    Americas	7/10/2026
USA1244S	Non-Preview	    Americas	7/10/2026
USA1246S	Non-Preview	    Americas	7/10/2026
USA1248S	Non-Preview	    Americas	7/10/2026
USA1250S	Non-Preview	    Americas	7/10/2026
USA1252S	Non-Preview	    Americas	7/10/2026
USA1254S	Non-Preview	    Americas	7/10/2026
USA1256S	Non-Preview	    Americas	7/10/2026
USA1258S	Non-Preview	    Americas	7/10/2026
USA1260S	Non-Preview	    Americas	7/10/2026
USA1262S	Non-Preview	    Americas	7/10/2026
USA1264S	Non-Preview	    Americas	7/10/2026
USA1266S	Non-Preview	    Americas	7/10/2026
USA1274S	Preview	        Americas	7/10/2026
USA1276S	Non-Preview	    Americas	7/10/2026
USA1278S	Preview	        Americas	7/10/2026
ZAF2S	    Non-Preview	    Americas	7/10/2026
ZAF4S	    Preview	        Americas	7/10/2026
SWE136S	    Preview	        Europe	    7/10/2026
ITA58S	    Preview	        Europe	    7/10/2026
ITA60S	    Non-Preview	    Europe	    7/10/2026
IND174S	    Preview	        Asia	    7/10/2026
IND176S	    Preview	        Asia	    7/10/2026
IND178S	    Preview	        Asia	    7/10/2026
IND180S	    Preview	        Asia	    7/10/2026
IND182S	    Preview	        Asia	    7/10/2026
IND184S	    Preview	        Asia	    7/10/2026
IND192S	    Preview	        Asia	    7/10/2026
IND194S	    Non-Preview	    Asia	    7/10/2026
IND196S	    Non-Preview	    Asia	    7/10/2026
IND198S	    Non-Preview	    Asia	    7/10/2026
GBR144S	    Preview	        Europe	    7/10/2026
GBR146S	    Non-Preview	    Europe	    7/10/2026
FRA116S	    Preview	        Europe	    7/10/2026
FRA118S	    Non-Preview	    Europe	    7/10/2026
DEU154S	    Preview	        Europe	    7/10/2026
DEU156S	    Preview	        Europe	    7/10/2026
DEU158S	    Non-Preview	    Europe	    7/10/2026
BRA60S	    Non-Preview	    Americas	7/10/2026
BRA62S	    Preview	        Americas	7/10/2026
*/

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (262,'Summer ''26','USA1128S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1130S','Preview','Americas'),
    (264,'Winter ''27','USA1178S','Preview','Americas'),
    (264,'Winter ''27','USA1194S','Preview','Americas'),
    (264,'Winter ''27','USA1196S','Preview','Americas'),
    (264,'Winter ''27','USA1198S','Preview','Americas'),
    (264,'Winter ''27','USA1200S','Preview','Americas'),
    (264,'Winter ''27','USA1202S','Preview','Americas'),
    (264,'Winter ''27','USA1204S','Preview','Americas'),
    (264,'Winter ''27','USA1206S','Preview','Americas'),
    (264,'Winter ''27','USA1208S','Preview','Americas'),
    (262,'Summer ''26','USA1214S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1216S','Preview','Americas'),
    (264,'Winter ''27','USA1218S','Preview','Americas'),
    (262,'Summer ''26','USA1220S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1234S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1236S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1238S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1240S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1242S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1244S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1246S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1248S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1250S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1252S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1254S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1256S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1258S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1260S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1262S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1264S','Non-Preview','Americas'),
    (262,'Summer ''26','USA1266S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1274S','Preview','Americas'),
    (262,'Summer ''26','USA1276S','Non-Preview','Americas'),
    (264,'Winter ''27','USA1278S','Preview','Americas'),
    (262,'Summer ''26','ZAF2S','Non-Preview','Americas'),
    (264,'Winter ''27','ZAF4S','Preview','Americas'),
    (264,'Winter ''27','SWE136S','Preview','Europe'),
    (264,'Winter ''27','ITA58S','Preview','Europe'),
    (262,'Summer ''26','ITA60S','Non-Preview','Europe'),
    (264,'Winter ''27','IND174S','Preview','Asia'),
    (264,'Winter ''27','IND176S','Preview','Asia'),
    (264,'Winter ''27','IND178S','Preview','Asia'),
    (264,'Winter ''27','IND180S','Preview','Asia'),
    (264,'Winter ''27','IND182S','Preview','Asia'),
    (264,'Winter ''27','IND184S','Preview','Asia'),
    (264,'Winter ''27','IND192S','Preview','Asia'),
    (262,'Summer ''26','IND194S','Non-Preview','Asia'),
    (262,'Summer ''26','IND196S','Non-Preview','Asia'),
    (262,'Summer ''26','IND198S','Non-Preview','Asia'),
    (264,'Winter ''27','GBR144S','Preview','Europe'),
    (262,'Summer ''26','GBR146S','Non-Preview','Europe'),
    (264,'Winter ''27','FRA116S','Preview','Europe'),
    (262,'Summer ''26','FRA118S','Non-Preview','Europe'),
    (264,'Winter ''27','DEU154S','Preview','Europe'),
    (264,'Winter ''27','DEU156S','Preview','Europe'),
    (262,'Summer ''26','DEU158S','Non-Preview','Europe'),
    (262,'Summer ''26','BRA60S','Non-Preview','Americas'),
    (264,'Winter ''27','BRA62S','Preview','Americas');

/* Removed instances
CS345	    Preview	SB1	Americas	    11/1/2024	7/10/2026	"Removed Instance. Added - New sandbox"
CS334	    Preview	SB1	Europe	        7/22/2024	7/10/2026	"Removed Instance. Added - IR: CS174 --> CS334"
CS337	    Preview	SB1	Europe	        6/17/2024	7/10/2026	"Removed Instance. IR: CS81/CS87 -> CS337 (SB1)"
CS341	    Preview	SB1	Americas	    2/18/2024	7/10/2026	"Removed Instance. IR - CS28, CS42 ==> CS341(IA6 SP2)"
CS342	    Preview	SB1	Americas	    2/18/2024	7/10/2026	"Removed Instance. IR - CS4 CS45 ==> CS342(IA6 SP2)"
USA9916S	Non-Preview	R2b	Americas	8/16/2022	9/22/2026	"Removed Instance. Added - new GIA Falcon cell"
USA9906S	Preview	SB1	Americas	    8/16/2022	9/22/2026	"Removed Instance. Added - new GIA Falcon cell"
*/

DELETE FROM public.rel_org_type 
WHERE org_id IN (
    'CS345', 'CS334', 'CS337', 'CS341', 'CS342', 'USA9916S', 'USA9906S');

COMMIT ;
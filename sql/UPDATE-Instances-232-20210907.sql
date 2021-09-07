BEGIN ;

/* Remove instances USA4S and USA6S from SPG - internal only     */
DELETE FROM public.rel_org_type WHERE org_id in ('USA4S','USA6S');

/* ----------------------------------------------------------------------------*/
/* New istances, based on IGL_EGL updates from June through September 2021     */
/*                                                                             */
/* Sep 7, 2021                                                                 */
/* Author: Michael Guse                                                        */
/* ----------------------------------------------------------------------------*/
INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (232,'Summer ''21','CS169','Preview','Americas'),
    (232,'Summer ''21','USA16S','Preview','Americas'),
    (232,'Summer ''21','USA18S','Preview','Americas'),
    (232,'Summer ''21','AUS22S','Preview','Asia'),
    (232,'Summer ''21','IND4S','Preview','Asia'),
    (232,'Summer ''21','IND6S','Preview','Asia'),
    (232,'Summer ''21','IND16S','Non-Preview','Asia'),
    (232,'Summer ''21','IND18S','Non-Preview','Asia'),
    (232,'Summer ''21','AUS24S','Preview','Asia'),
    (232,'Summer ''21','AUS26S','Preview','Asia'),
    (232,'Summer ''21','DEU2S','Preview','Europe'),
    (232,'Summer ''21','DEU4S','Non-Preview','Europe'),
    (232,'Summer ''21','CS209','Preview','Americas'),
    (232,'Summer ''21','CS210','Preview','Americas'),
    (232,'Summer ''21','CS211','Preview','Americas'),
    (232,'Summer ''21','CS212','Preview','Americas'),
    (232,'Summer ''21','CS213','Preview','Americas'),
    (232,'Summer ''21','CS214','Preview','Americas'),
    (232,'Summer ''21','CS215','Preview','Americas'),
    (232,'Summer ''21','CS216','Preview','Americas'),
    (232,'Summer ''21','CS217','Preview','Americas'),
    (232,'Summer ''21','CS218','Non-Preview','Americas'),
    (232,'Summer ''21','CS219','Non-Preview','Americas'),
    (232,'Summer ''21','CS220','Non-Preview','Americas'),
    (232,'Summer ''21','FRA2S','Preview','Europe'),
    (232,'Summer ''21','FRA4S','Non-Preview','Europe'),
    (232,'Summer ''21','BRA2S','Preview','Americas'),
    (232,'Summer ''21','BRA4S','Non-Preview','Americas'),
    (232,'Summer ''21','SGP2S','Preview','Asia'),
    (232,'Summer ''21','SGP4A','Non-Preview','Asia'),
    (232,'Summer ''21','USA80S','Non-Preview','Americas'),
    (232,'Summer ''21','JPN6S','Preview','Asia'),
    (232,'Summer ''21','JPN10S','Preview','Asia'),
    (232,'Summer ''21','JPN12S','Preview','Asia'),
    (232,'Summer ''21','JPN8S','Non-Preview','Asia'),
    (232,'Summer ''21','CAN6S','Preview','Americas'),
    (232,'Summer ''21','CAN8S','Non-Preview','Americas');

COMMIT ;
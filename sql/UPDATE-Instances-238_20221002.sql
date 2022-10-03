BEGIN ;

/* CS10     Removed - replaced with CS191 */
/* CS16     Removed - replaced with CS246 */
/* CS18     Removed - replaced with CS245 */
/* CS64     Removed - replaced with CS243 */
/* CS65     Removed - replaced with CS241 */
/* CS66     Removed - replaced with CS244 */
/* CS8      Removed - replaced with CS249 */

DELETE FROM public.rel_org_type WHERE org_id in ('CS16','CS65','CS10','CS66','CS64','CS18','CS8');

/* CS238    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS241    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS242    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS243    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS244    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS245    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS246    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS247    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS248    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS249    Preview, Americas   10/1/2022   Added - new sandbox */
/* CS250    Preview, Americas   10/1/2022   Added - new sandbox */

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (238,'Summer ''22','CS238','Non-Preview','Americas'),
    (238,'Summer ''22','CS241','Non-Preview','Americas'),
    (240,'Winter ''23','CS242','Preview','Americas'),
    (238,'Summer ''22','CS243','Non-Preview','Americas'),
    (238,'Summer ''22','CS244','Non-Preview','Americas'),
    (238,'Summer ''22','CS245','Non-Preview','Americas'),
    (238,'Summer ''22','CS246','Non-Preview','Americas'),
    (240,'Winter ''23','CS247','Preview','Americas'),
    (240,'Winter ''23','CS248','Preview','Americas'),
    (238,'Summer ''22','CS249','Non-Preview','Americas'),
    (240,'Winter ''23','CS250','Preview','Americas');

COMMIT ;
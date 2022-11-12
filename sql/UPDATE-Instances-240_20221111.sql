BEGIN ;

/* CS11 Removed - One-Way IR CS240 */
/* CS53 Removed - One-Way IR CS236 */
/* CS7  Removed - One-Way IR CS237 */
/* CS9  Removed - One-Way IR CS239 */
/* CS91 Removed - One-Way IR CS253 */

DELETE FROM public.rel_org_type WHERE org_id in ('CS11','CS53','CS7','CS9','CS91');

/* USA222S	Preview-SB0-Americas, Added - new sandbox */
/* CS237	Preview-SB1-Americas, CS7  - One-Way IR   */
/* CS236	Preview-SB1-Americas, CS53 - One-Way IR   */
/* CS239	Preview-SB1-Americas, CS9  - One-Way IR   */
/* CS240	Preview-SB1-Americas, CS11 - One-Way IR   */
/* CS253	Preview-SB1-Americas, CS91 - One-Way IR   */

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (240,'Winter ''23','USA222S','Preview','Americas'),
    (240,'Winter ''23','CS237','Preview','Americas'),
    (240,'Winter ''23','CS236','Preview','Americas'),
    (240,'Winter ''23','CS239','Preview','Americas'),
    (240,'Winter ''23','CS240','Preview','Americas'),
    (240,'Winter ''23','CS253','Preview','Americas');

COMMIT ;
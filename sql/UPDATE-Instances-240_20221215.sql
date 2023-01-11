BEGIN ;

/* SB1 (Preview)                */
/* One-Way IR CS79 → CS260      */
/* One-Way IR CS78 → CS261      */
/* One-Way IR CS47 → CS262      */
/* One-Way IR CS95 → CS256      */
/* One-Way IR CS97 → CS257      */
/* One-Way IR CS23 → CS269      */

/* R2b (Non-Preview)            */
/* One-Way IR CS92 → CS254      */ 
/* One-Way IR CS94 → CS255      */

DELETE FROM public.rel_org_type WHERE org_id in ('CS79','CS78','CS47','CS95','CS97','CS23','CS92','CS94');

INSERT INTO public.rel_org_type (internal_rel_name,external_rel_name,org_id,org_type,org_region) VALUES
    (240,'Winter ''23','CS260','Preview','Americas'),
    (240,'Winter ''23','CS261','Preview','Americas'),
    (240,'Winter ''23','CS262','Preview','Americas'),
    (240,'Winter ''23','CS256','Preview','Americas'),
    (240,'Winter ''23','CS257','Preview','Americas'),
    (240,'Winter ''23','CS269','Preview','Americas'),
    (240,'Winter ''23','CS254','Non-Preview','Americas'),
    (240,'Winter ''23','CS255','Non-Preview','Americas');

COMMIT ;
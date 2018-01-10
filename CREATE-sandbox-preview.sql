-- DROP SEQUENCE public.rel_org_type_id_seq;

CREATE SEQUENCE public.rel_org_type_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

-- DROP TABLE public.rel_org_type;

CREATE TABLE public.rel_org_type
(
    id integer NOT NULL DEFAULT nextval('rel_org_type_id_seq'::regclass),
    internal_rel_name numeric(3,0) NOT NULL,
    external_rel_name character varying(10) COLLATE pg_catalog."default" NOT NULL,
    org_id character varying(5) COLLATE pg_catalog."default" NOT NULL,
    org_type character varying(15) COLLATE pg_catalog."default" NOT NULL,
    org_region character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT rel_org_type_pkey PRIMARY KEY (id)
);
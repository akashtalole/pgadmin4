-- Table: public.simple_table_with_pk$%{}[]()&*^!@"'`\/#

-- DROP TABLE public."simple_table_with_pk$%{}[]()&*^!@""'`\/#";

CREATE TABLE IF NOT EXISTS public."simple_table_with_pk$%{}[]()&*^!@""'`\/#"
(
    "col1_$%{}[]()&*^!@\""'`\\/#" integer NOT NULL,
    "col2_$%{}[]()&*^!@\""'`\\/#" json NOT NULL,
    "col3_$%{}[]()&*^!@\""'`\\/#" numeric(10,5),
    "col4_$%{}[]()&*^!@\""'`\\/#" text COLLATE pg_catalog."default",
    CONSTRAINT "simple_table_with_pk$%{}[]()&*^!@""'`\/#_pkey" PRIMARY KEY ("col1_$%{}[]()&*^!@\""""'`\\/#")
)

TABLESPACE pg_default;

ALTER TABLE public."simple_table_with_pk$%{}[]()&*^!@""'`\/#"
    OWNER to enterprisedb;

COMMENT ON TABLE public."simple_table_with_pk$%{}[]()&*^!@""'`\/#"
    IS 'test comment';

-- Table: public.table_like_tbl$%{}[]()&*^!@"'`\/#

-- DROP TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#";

CREATE TABLE IF NOT EXISTS public."table_like_tbl$%{}[]()&*^!@""'`\/#"
(
    id integer NOT NULL,
    name text COLLATE pg_catalog."default",
    CONSTRAINT "table_like_tbl$%{}[]()&*^!@""'`\/#_pkey" PRIMARY KEY (id),
    CONSTRAINT "table_like_tbl$%{}[]()&*^!@""'`\/#_name_key" UNIQUE (name)
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#"
    OWNER to enterprisedb;

COMMENT ON TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#"
    IS 'test ';

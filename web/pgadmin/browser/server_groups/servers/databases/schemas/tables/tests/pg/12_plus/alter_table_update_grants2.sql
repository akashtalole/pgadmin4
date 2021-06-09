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
    FILLFACTOR = 13
)
TABLESPACE pg_default;

ALTER TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#"
    OWNER to postgres;

GRANT ALL ON TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#" TO postgres;

GRANT REFERENCES, TRIGGER, TRUNCATE ON TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#" TO PUBLIC;

COMMENT ON TABLE public."table_like_tbl$%{}[]()&*^!@""'`\/#"
    IS 'test comment';

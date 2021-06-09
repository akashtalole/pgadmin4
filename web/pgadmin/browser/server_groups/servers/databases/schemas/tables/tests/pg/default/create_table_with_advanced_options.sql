-- Table: public.table_with_advanced_options_$%{}[]()&*^!@"'`\/#

-- DROP TABLE public."table_with_advanced_options_$%{}[]()&*^!@""'`\/#";

CREATE UNLOGGED TABLE IF NOT EXISTS public."table_with_advanced_options_$%{}[]()&*^!@""'`\/#"
(
    col1 double precision,
    col2 numrange
)
WITH (
    OIDS = TRUE,
    FILLFACTOR = 50
)
TABLESPACE pg_default;

ALTER TABLE public."table_with_advanced_options_$%{}[]()&*^!@""'`\/#"
    OWNER to postgres;

ALTER TABLE public."table_with_advanced_options_$%{}[]()&*^!@""'`\/#"
    ENABLE ROW LEVEL SECURITY;

ALTER TABLE public."table_with_advanced_options_$%{}[]()&*^!@""'`\/#"
    FORCE ROW LEVEL SECURITY;

COMMENT ON TABLE public."table_with_advanced_options_$%{}[]()&*^!@""'`\/#"
    IS 'test comment';

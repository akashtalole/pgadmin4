-- Column: testschema."table_3_$%{}[]()&*^!@""'`\/#"."col__3_$%{}[]()&*^!@""'`\/#"

-- ALTER TABLE testschema."table_3_$%{}[]()&*^!@""'`\/#" DROP COLUMN "col__3_$%{}[]()&*^!@""'`\/#";

ALTER TABLE testschema."table_3_$%{}[]()&*^!@""'`\/#"
    ADD COLUMN "col__3_$%{}[]()&*^!@""'`\/#" integer[] NOT NULL;

COMMENT ON COLUMN testschema."table_3_$%{}[]()&*^!@""'`\/#"."col__3_$%{}[]()&*^!@""'`\/#"
    IS 'comment';

ALTER TABLE testschema."table_3_$%{}[]()&*^!@""'`\/#"
    ALTER COLUMN "col__3_$%{}[]()&*^!@""'`\/#"
    SET (n_distinct=2);

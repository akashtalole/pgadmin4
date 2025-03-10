##########################################################################
#
# pgAdmin 4 - PostgreSQL Tools
#
# Copyright (C) 2013 - 2023, The pgAdmin Development Team
# This software is released under the PostgreSQL Licence
#
##########################################################################

import os

from regression.python_test_utils.sql_template_test_base import \
    SQLTemplateTestBase
from regression.python_test_utils.template_helper import file_as_template


class TestDependenciesSql(SQLTemplateTestBase):
    scenarios = [
        # Fetching default URL for schema node.
        ('Test dependencies SQL file', dict())
    ]

    def __init__(self):
        super().__init__()
        self.table_id = -1

    def test_setup(self, connection, cursor):
        cursor.execute("SELECT pg_catalog.pg_class.oid AS table_id "
                       "FROM pg_catalog.pg_class "
                       "WHERE pg_class.relname='test_table'")
        self.table_id = cursor.fetchone()[0]

    def generate_sql(self, version):
        file_path = os.path.join(os.path.dirname(__file__), "..", "templates",
                                 "depends", self.server['type'])
        template_file = self.get_template_file(version, file_path,
                                               "dependencies.sql")
        template = file_as_template(template_file)
        sql = template.render(
            where_clause="WHERE dep.objid=%s::oid" % self.table_id,
            object_id=self.table_id)

        return sql

    def assertions(self, fetch_result, descriptions):
        self.assertEqual(1, len(fetch_result))

        first_row = {}
        for index, description in enumerate(descriptions):
            first_row[description.name] = fetch_result[0][index]

        self.assertEqual('n', first_row["deptype"])
        self.assertEqual('public', first_row["refname"])

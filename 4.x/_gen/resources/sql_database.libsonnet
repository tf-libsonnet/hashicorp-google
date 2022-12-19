local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sql_database', url='', help='`sql_database` represents the `google_sql_database` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.sql_database.new` injects a new `google_sql_database` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sql_database.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sql_database` using the reference:\n\n    $._ref.google_sql_database.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sql_database.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `charset` (`string`): The charset value. See MySQL\u0026#39;s\n[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)\nand Postgres\u0026#39; [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)\nfor more details and supported values. Postgres databases only support\na value of \u0026#39;UTF8\u0026#39; at creation time. When `null`, the `charset` field will be omitted from the resulting object.\n  - `collation` (`string`): The collation value. See MySQL\u0026#39;s\n[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)\nand Postgres\u0026#39; [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)\nfor more details and supported values. Postgres databases only support\na value of \u0026#39;en_US.UTF8\u0026#39; at creation time. When `null`, the `collation` field will be omitted from the resulting object.\n  - `deletion_policy` (`string`): The deletion policy for the database. Setting ABANDON allows the resource \nto be abandoned rather than deleted. This is useful for Postgres, where databases cannot be \ndeleted from the API if there are users other than cloudsqlsuperuser with access. Possible \nvalues are: \u0026#34;ABANDON\u0026#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `instance` (`string`): The name of the Cloud SQL instance. This does not include the project\nID.\n  - `name` (`string`): The name of the database in the Cloud SQL instance.\nThis does not include the project ID or instance name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database.timeouts.new](#fn-sql_databasetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance,
    name,
    charset=null,
    collation=null,
    deletion_policy=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_database',
    label=resourceLabel,
    attrs=self.newAttrs(
      charset=charset,
      collation=collation,
      deletion_policy=deletion_policy,
      instance=instance,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sql_database.newAttrs` constructs a new object with attributes and blocks configured for the `sql_database`\nTerraform resource.\n\nUnlike [google.sql_database.new](#fn-sql_databasenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `charset` (`string`): The charset value. See MySQL&#39;s\n[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)\nand Postgres&#39; [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)\nfor more details and supported values. Postgres databases only support\na value of &#39;UTF8&#39; at creation time. When `null`, the `charset` field will be omitted from the resulting object.\n  - `collation` (`string`): The collation value. See MySQL&#39;s\n[Supported Character Sets and Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)\nand Postgres&#39; [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)\nfor more details and supported values. Postgres databases only support\na value of &#39;en_US.UTF8&#39; at creation time. When `null`, the `collation` field will be omitted from the resulting object.\n  - `deletion_policy` (`string`): The deletion policy for the database. Setting ABANDON allows the resource \nto be abandoned rather than deleted. This is useful for Postgres, where databases cannot be \ndeleted from the API if there are users other than cloudsqlsuperuser with access. Possible \nvalues are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `instance` (`string`): The name of the Cloud SQL instance. This does not include the project\nID.\n  - `name` (`string`): The name of the database in the Cloud SQL instance.\nThis does not include the project ID or instance name.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_database.timeouts.new](#fn-sql_databasetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_database` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance,
    name,
    charset=null,
    collation=null,
    deletion_policy=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    charset: charset,
    collation: collation,
    deletion_policy: deletion_policy,
    instance: instance,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.sql_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withCharset':: d.fn(help='`google.string.withCharset` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the charset field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `charset` field.\n', args=[]),
  withCharset(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          charset: value,
        },
      },
    },
  },
  '#withCollation':: d.fn(help='`google.string.withCollation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the collation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `collation` field.\n', args=[]),
  withCollation(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          collation: value,
        },
      },
    },
  },
  '#withDeletionPolicy':: d.fn(help='`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withInstance':: d.fn(help='`google.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_sql_database+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

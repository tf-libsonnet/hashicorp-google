local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='spanner_database', url='', help='`spanner_database` represents the `google_spanner_database` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_config:: {
    '#new':: d.fn(help='\n`google.spanner_database.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Fully qualified name of the KMS key to use to encrypt this database. This key must exist\nin the same location as the Spanner Database.\n\n**Returns**:\n  - An attribute object that represents the `encryption_config` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google.spanner_database.new` injects a new `google_spanner_database` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.spanner_database.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.spanner_database` using the reference:\n\n    $._ref.google_spanner_database.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_spanner_database.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `database_dialect` (`string`): The dialect of the Cloud Spanner Database.\nIf it is not provided, \u0026#34;GOOGLE_STANDARD_SQL\u0026#34; will be used. Possible values: [\u0026#34;GOOGLE_STANDARD_SQL\u0026#34;, \u0026#34;POSTGRESQL\u0026#34;] When `null`, the `database_dialect` field will be omitted from the resulting object.\n  - `ddl` (`list`): An optional list of DDL statements to run inside the newly created\ndatabase. Statements can create tables, indexes, etc. These statements\nexecute atomically with the creation of the database: if there is an\nerror in any statement, the database is not created. When `null`, the `ddl` field will be omitted from the resulting object.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false\nin Terraform state, a \u0026#39;terraform destroy\u0026#39; or \u0026#39;terraform apply\u0026#39; that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `instance` (`string`): The instance to create the database on.\n  - `name` (`string`): A unique identifier for the database, which cannot be changed after\nthe instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `version_retention_period` (`string`): The retention period for the database. The retention period must be between 1 hour\nand 7 days, and can be specified in days, hours, minutes, or seconds. For example,\nthe values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.\nIf this property is used, you must avoid adding new DDL statements to \u0026#39;ddl\u0026#39; that\nupdate the database\u0026#39;s version_retention_period. When `null`, the `version_retention_period` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): Encryption configuration for the database When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.encryption_config.new](#fn-spannerdatabaseencryptionconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.timeouts.new](#fn-spannerdatabasetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance,
    name,
    database_dialect=null,
    ddl=null,
    deletion_protection=null,
    encryption_config=null,
    project=null,
    timeouts=null,
    version_retention_period=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_database',
    label=resourceLabel,
    attrs=self.newAttrs(
      database_dialect=database_dialect,
      ddl=ddl,
      deletion_protection=deletion_protection,
      encryption_config=encryption_config,
      instance=instance,
      name=name,
      project=project,
      timeouts=timeouts,
      version_retention_period=version_retention_period
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.spanner_database.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_database`\nTerraform resource.\n\nUnlike [google.spanner_database.new](#fn-spannerdatabasenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database_dialect` (`string`): The dialect of the Cloud Spanner Database.\nIf it is not provided, &#34;GOOGLE_STANDARD_SQL&#34; will be used. Possible values: [&#34;GOOGLE_STANDARD_SQL&#34;, &#34;POSTGRESQL&#34;] When `null`, the `database_dialect` field will be omitted from the resulting object.\n  - `ddl` (`list`): An optional list of DDL statements to run inside the newly created\ndatabase. Statements can create tables, indexes, etc. These statements\nexecute atomically with the creation of the database: if there is an\nerror in any statement, the database is not created. When `null`, the `ddl` field will be omitted from the resulting object.\n  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false\nin Terraform state, a &#39;terraform destroy&#39; or &#39;terraform apply&#39; that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `instance` (`string`): The instance to create the database on.\n  - `name` (`string`): A unique identifier for the database, which cannot be changed after\nthe instance is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `version_retention_period` (`string`): The retention period for the database. The retention period must be between 1 hour\nand 7 days, and can be specified in days, hours, minutes, or seconds. For example,\nthe values 1d, 24h, 1440m, and 86400s are equivalent. Default value is 1h.\nIf this property is used, you must avoid adding new DDL statements to &#39;ddl&#39; that\nupdate the database&#39;s version_retention_period. When `null`, the `version_retention_period` field will be omitted from the resulting object.\n  - `encryption_config` (`list[obj]`): Encryption configuration for the database When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.encryption_config.new](#fn-spannerdatabaseencryptionconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_database.timeouts.new](#fn-spannerdatabasetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `spanner_database` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance,
    name,
    database_dialect=null,
    ddl=null,
    deletion_protection=null,
    encryption_config=null,
    project=null,
    timeouts=null,
    version_retention_period=null
  ):: std.prune(a={
    database_dialect: database_dialect,
    ddl: ddl,
    deletion_protection: deletion_protection,
    encryption_config: encryption_config,
    instance: instance,
    name: name,
    project: project,
    timeouts: timeouts,
    version_retention_period: version_retention_period,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.spanner_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDatabaseDialect':: d.fn(help='`google.spanner_database.withDatabaseDialect` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the database_dialect field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `database_dialect` field.\n', args=[]),
  withDatabaseDialect(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          database_dialect: value,
        },
      },
    },
  },
  '#withDdl':: d.fn(help='`google.spanner_database.withDdl` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the ddl field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `ddl` field.\n', args=[]),
  withDdl(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          ddl: value,
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google.spanner_database.withDeletionProtection` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withEncryptionConfig':: d.fn(help='`google.spanner_database.withEncryptionConfig` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the encryption_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfig(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          encryption_config: value,
        },
      },
    },
  },
  '#withEncryptionConfigMixin':: d.fn(help='`google.spanner_database.withEncryptionConfigMixin` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the encryption_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.spanner_database.withEncryptionConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `encryption_config` field.\n', args=[]),
  withEncryptionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          encryption_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInstance':: d.fn(help='`google.spanner_database.withInstance` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.spanner_database.withName` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.spanner_database.withProject` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.spanner_database.withTimeouts` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.spanner_database.withTimeoutsMixin` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.spanner_database.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersionRetentionPeriod':: d.fn(help='`google.spanner_database.withVersionRetentionPeriod` constructs a mixin object that can be merged into the `spanner_database`\nTerraform resource block to set or update the version_retention_period field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `version_retention_period` field.\n', args=[]),
  withVersionRetentionPeriod(resourceLabel, value):: {
    resource+: {
      google_spanner_database+: {
        [resourceLabel]+: {
          version_retention_period: value,
        },
      },
    },
  },
}

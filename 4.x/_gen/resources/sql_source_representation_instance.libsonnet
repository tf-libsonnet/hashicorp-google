local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='sql_source_representation_instance', url='', help='`sql_source_representation_instance` represents the `google_sql_source_representation_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.sql_source_representation_instance.new` injects a new `google_sql_source_representation_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.sql_source_representation_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.sql_source_representation_instance` using the reference:\n\n    $._ref.google_sql_source_representation_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_sql_source_representation_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `database_version` (`string`): The MySQL version running on your source database server. Possible values: [\u0026#34;MYSQL_5_5\u0026#34;, \u0026#34;MYSQL_5_6\u0026#34;, \u0026#34;MYSQL_5_7\u0026#34;, \u0026#34;MYSQL_8_0\u0026#34;]\n  - `host` (`string`): The externally accessible IPv4 address for the source database server.\n  - `name` (`string`): The name of the source representation instance. Use any valid Cloud SQL instance name.\n  - `port` (`number`): The externally accessible port for the source database server.\nDefaults to 3306. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created instance should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_source_representation_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    database_version,
    host,
    name,
    port=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_source_representation_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      database_version=database_version,
      host=host,
      name=name,
      port=port,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.sql_source_representation_instance.newAttrs` constructs a new object with attributes and blocks configured for the `sql_source_representation_instance`\nTerraform resource.\n\nUnlike [google.sql_source_representation_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database_version` (`string`): The MySQL version running on your source database server. Possible values: [&#34;MYSQL_5_5&#34;, &#34;MYSQL_5_6&#34;, &#34;MYSQL_5_7&#34;, &#34;MYSQL_8_0&#34;]\n  - `host` (`string`): The externally accessible IPv4 address for the source database server.\n  - `name` (`string`): The name of the source representation instance. Use any valid Cloud SQL instance name.\n  - `port` (`number`): The externally accessible port for the source database server.\nDefaults to 3306. When `null`, the `port` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created instance should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_source_representation_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_source_representation_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    database_version,
    host,
    name,
    port=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    database_version: database_version,
    host: host,
    name: name,
    port: port,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.sql_source_representation_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDatabaseVersion':: d.fn(help='`google.string.withDatabaseVersion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database_version` field.\n', args=[]),
  withDatabaseVersion(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          database_version: value,
        },
      },
    },
  },
  '#withHost':: d.fn(help='`google.string.withHost` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host` field.\n', args=[]),
  withHost(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          host: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPort':: d.fn(help='`google.number.withPort` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the port field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `port` field.\n', args=[]),
  withPort(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_sql_source_representation_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

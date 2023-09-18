local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='biglake_table', url='', help='`biglake_table` represents the `google_biglake_table` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  hive_options:: {
    '#new':: d.fn(help='\n`google.biglake_table.hive_options.new` constructs a new object with attributes and blocks configured for the `hive_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameters` (`obj`): Stores user supplied Hive table parameters. An object containing a\nlist of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `parameters` field will be omitted from the resulting object.\n  - `table_type` (`string`): Hive table type. For example, MANAGED_TABLE, EXTERNAL_TABLE. When `null`, the `table_type` field will be omitted from the resulting object.\n  - `storage_descriptor` (`list[obj]`): Stores physical storage information on the data. When `null`, the `storage_descriptor` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.hive_options.storage_descriptor.new](#fn-hive_optionsstorage_descriptornew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hive_options` sub block.\n', args=[]),
    new(
      parameters=null,
      storage_descriptor=null,
      table_type=null
    ):: std.prune(a={
      parameters: parameters,
      storage_descriptor: storage_descriptor,
      table_type: table_type,
    }),
    storage_descriptor:: {
      '#new':: d.fn(help='\n`google.biglake_table.hive_options.storage_descriptor.new` constructs a new object with attributes and blocks configured for the `storage_descriptor`\nTerraform sub block.\n\n\n\n**Args**:\n  - `input_format` (`string`): The fully qualified Java class name of the input format. When `null`, the `input_format` field will be omitted from the resulting object.\n  - `location_uri` (`string`): Cloud Storage folder URI where the table data is stored, starting with &#34;gs://&#34;. When `null`, the `location_uri` field will be omitted from the resulting object.\n  - `output_format` (`string`): The fully qualified Java class name of the output format. When `null`, the `output_format` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `storage_descriptor` sub block.\n', args=[]),
      new(
        input_format=null,
        location_uri=null,
        output_format=null
      ):: std.prune(a={
        input_format: input_format,
        location_uri: location_uri,
        output_format: output_format,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.biglake_table.new` injects a new `google_biglake_table` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.biglake_table.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.biglake_table` using the reference:\n\n    $._ref.google_biglake_table.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_biglake_table.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `database` (`string`): The id of the parent database. When `null`, the `database` field will be omitted from the resulting object.\n  - `name` (`string`): Output only. The name of the Table. Format:\nprojects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}\n  - `type` (`string`): The database type. Possible values: [\u0026#34;HIVE\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `hive_options` (`list[obj]`): Options of a Hive table. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.hive_options.new](#fn-hive_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    database=null,
    hive_options=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_biglake_table',
    label=resourceLabel,
    attrs=self.newAttrs(
      database=database,
      hive_options=hive_options,
      name=name,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.biglake_table.newAttrs` constructs a new object with attributes and blocks configured for the `biglake_table`\nTerraform resource.\n\nUnlike [google.biglake_table.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `database` (`string`): The id of the parent database. When `null`, the `database` field will be omitted from the resulting object.\n  - `name` (`string`): Output only. The name of the Table. Format:\nprojects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId}/databases/{databaseId}/tables/{tableId}\n  - `type` (`string`): The database type. Possible values: [&#34;HIVE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `hive_options` (`list[obj]`): Options of a Hive table. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.hive_options.new](#fn-hive_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_table.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `biglake_table` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    database=null,
    hive_options=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    database: database,
    hive_options: hive_options,
    name: name,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.biglake_table.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDatabase':: d.fn(help='`google.string.withDatabase` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the database field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `database` field.\n', args=[]),
  withDatabase(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  '#withHiveOptions':: d.fn(help='`google.list[obj].withHiveOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHiveOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_options` field.\n', args=[]),
  withHiveOptions(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          hive_options: value,
        },
      },
    },
  },
  '#withHiveOptionsMixin':: d.fn(help='`google.list[obj].withHiveOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHiveOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_options` field.\n', args=[]),
  withHiveOptionsMixin(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          hive_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_biglake_table+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

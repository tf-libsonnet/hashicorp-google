local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='biglake_database', url='', help='`biglake_database` represents the `google_biglake_database` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  hive_options:: {
    '#new':: d.fn(help='\n`google.biglake_database.hive_options.new` constructs a new object with attributes and blocks configured for the `hive_options`\nTerraform sub block.\n\n\n\n**Args**:\n  - `location_uri` (`string`): Cloud Storage folder URI where the database data is stored, starting with &#34;gs://&#34;. When `null`, the `location_uri` field will be omitted from the resulting object.\n  - `parameters` (`obj`): Stores user supplied Hive database parameters. An object containing a\nlist of&#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `parameters` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `hive_options` sub block.\n', args=[]),
    new(
      location_uri=null,
      parameters=null
    ):: std.prune(a={
      location_uri: location_uri,
      parameters: parameters,
    }),
  },
  '#new':: d.fn(help="\n`google.biglake_database.new` injects a new `google_biglake_database` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.biglake_database.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.biglake_database` using the reference:\n\n    $._ref.google_biglake_database.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_biglake_database.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `catalog` (`string`): The parent catalog.\n  - `name` (`string`): The name of the database.\n  - `type` (`string`): The database type.\n  - `hive_options` (`list[obj]`): Options of a Hive database. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_database.hive_options.new](#fn-hive_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_database.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    catalog,
    name,
    type,
    hive_options=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_biglake_database',
    label=resourceLabel,
    attrs=self.newAttrs(
      catalog=catalog,
      hive_options=hive_options,
      name=name,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.biglake_database.newAttrs` constructs a new object with attributes and blocks configured for the `biglake_database`\nTerraform resource.\n\nUnlike [google.biglake_database.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `catalog` (`string`): The parent catalog.\n  - `name` (`string`): The name of the database.\n  - `type` (`string`): The database type.\n  - `hive_options` (`list[obj]`): Options of a Hive database. When `null`, the `hive_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_database.hive_options.new](#fn-hive_optionsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.biglake_database.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `biglake_database` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    catalog,
    name,
    type,
    hive_options=null,
    timeouts=null
  ):: std.prune(a={
    catalog: catalog,
    hive_options: hive_options,
    name: name,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.biglake_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCatalog':: d.fn(help='`google.string.withCatalog` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the catalog field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `catalog` field.\n', args=[]),
  withCatalog(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          catalog: value,
        },
      },
    },
  },
  '#withHiveOptions':: d.fn(help='`google.list[obj].withHiveOptions` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_options field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withHiveOptionsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_options` field.\n', args=[]),
  withHiveOptions(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          hive_options: value,
        },
      },
    },
  },
  '#withHiveOptionsMixin':: d.fn(help='`google.list[obj].withHiveOptionsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the hive_options field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withHiveOptions](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `hive_options` field.\n', args=[]),
  withHiveOptionsMixin(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          hive_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_biglake_database+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

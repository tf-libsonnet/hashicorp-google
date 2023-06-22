local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigtable_table', url='', help='`bigtable_table` represents the `google_bigtable_table` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  column_family:: {
    '#new':: d.fn(help='\n`google.bigtable_table.column_family.new` constructs a new object with attributes and blocks configured for the `column_family`\nTerraform sub block.\n\n\n\n**Args**:\n  - `family` (`string`): The name of the column family.\n\n**Returns**:\n  - An attribute object that represents the `column_family` sub block.\n', args=[]),
    new(
      family
    ):: std.prune(a={
      family: family,
    }),
  },
  '#new':: d.fn(help="\n`google.bigtable_table.new` injects a new `google_bigtable_table` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigtable_table.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigtable_table` using the reference:\n\n    $._ref.google_bigtable_table.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigtable_table.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_protection` (`string`): A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, currently deletion protection will be set to UNPROTECTED as it is the API default value. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `instance_name` (`string`): The name of the Bigtable instance.\n  - `name` (`string`): The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `split_keys` (`list`): A list of predefined keys to split the table on. !\u0026gt; Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. When `null`, the `split_keys` field will be omitted from the resulting object.\n  - `column_family` (`list[obj]`): A group of columns within a table which share a common configuration. This can be specified multiple times. When `null`, the `column_family` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.column_family.new](#fn-column_familynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance_name,
    name,
    column_family=null,
    deletion_protection=null,
    project=null,
    split_keys=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_table',
    label=resourceLabel,
    attrs=self.newAttrs(
      column_family=column_family,
      deletion_protection=deletion_protection,
      instance_name=instance_name,
      name=name,
      project=project,
      split_keys=split_keys,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.bigtable_table.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_table`\nTerraform resource.\n\nUnlike [google.bigtable_table.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_protection` (`string`): A field to make the table protected against data loss i.e. when set to PROTECTED, deleting the table, the column families in the table, and the instance containing the table would be prohibited. If not provided, currently deletion protection will be set to UNPROTECTED as it is the API default value. When `null`, the `deletion_protection` field will be omitted from the resulting object.\n  - `instance_name` (`string`): The name of the Bigtable instance.\n  - `name` (`string`): The name of the table. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `split_keys` (`list`): A list of predefined keys to split the table on. !&gt; Warning: Modifying the split_keys of an existing table will cause Terraform to delete/recreate the entire google_bigtable_table resource. When `null`, the `split_keys` field will be omitted from the resulting object.\n  - `column_family` (`list[obj]`): A group of columns within a table which share a common configuration. This can be specified multiple times. When `null`, the `column_family` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.column_family.new](#fn-column_familynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_table.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_table` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance_name,
    name,
    column_family=null,
    deletion_protection=null,
    project=null,
    split_keys=null,
    timeouts=null
  ):: std.prune(a={
    column_family: column_family,
    deletion_protection: deletion_protection,
    instance_name: instance_name,
    name: name,
    project: project,
    split_keys: split_keys,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.bigtable_table.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      update=null
    ):: std.prune(a={
      create: create,
      update: update,
    }),
  },
  '#withColumnFamily':: d.fn(help='`google.list[obj].withColumnFamily` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the column_family field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withColumnFamilyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `column_family` field.\n', args=[]),
  withColumnFamily(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          column_family: value,
        },
      },
    },
  },
  '#withColumnFamilyMixin':: d.fn(help='`google.list[obj].withColumnFamilyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the column_family field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withColumnFamily](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `column_family` field.\n', args=[]),
  withColumnFamilyMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          column_family+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDeletionProtection':: d.fn(help='`google.string.withDeletionProtection` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_protection field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_protection` field.\n', args=[]),
  withDeletionProtection(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  '#withInstanceName':: d.fn(help='`google.string.withInstanceName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_name` field.\n', args=[]),
  withInstanceName(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSplitKeys':: d.fn(help='`google.list.withSplitKeys` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the split_keys field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `split_keys` field.\n', args=[]),
  withSplitKeys(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          split_keys: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigtable_table+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

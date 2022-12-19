local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_catalog_entry_group', url='', help='`data_catalog_entry_group` represents the `google_data_catalog_entry_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data_catalog_entry_group.new` injects a new `google_data_catalog_entry_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_catalog_entry_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_catalog_entry_group` using the reference:\n\n    $._ref.google_data_catalog_entry_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_catalog_entry_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A short name to identify the entry group, for example, \u0026#34;analytics data - jan 2011\u0026#34;. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `entry_group_id` (`string`): The id of the entry group to create. The id must begin with a letter or underscore,\ncontain only English letters, numbers and underscores, and be at most 64 characters.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): EntryGroup location region. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    entry_group_id,
    description=null,
    display_name=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_entry_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      entry_group_id=entry_group_id,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_catalog_entry_group.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_entry_group`\nTerraform resource.\n\nUnlike [google.data_catalog_entry_group.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): A short name to identify the entry group, for example, &#34;analytics data - jan 2011&#34;. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `entry_group_id` (`string`): The id of the entry group to create. The id must begin with a letter or underscore,\ncontain only English letters, numbers and underscores, and be at most 64 characters.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): EntryGroup location region. When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_entry_group.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_entry_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    entry_group_id,
    description=null,
    display_name=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    entry_group_id: entry_group_id,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_catalog_entry_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEntryGroupId':: d.fn(help='`google.string.withEntryGroupId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the entry_group_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `entry_group_id` field.\n', args=[]),
  withEntryGroupId(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          entry_group_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_entry_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

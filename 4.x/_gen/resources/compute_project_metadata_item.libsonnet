local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_project_metadata_item', url='', help='`compute_project_metadata_item` represents the `google_compute_project_metadata_item` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_project_metadata_item.new` injects a new `google_compute_project_metadata_item` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_project_metadata_item.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_project_metadata_item` using the reference:\n\n    $._ref.google_compute_project_metadata_item.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_project_metadata_item.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `key` (`string`): The metadata key to set.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `value` (`string`): The value to set for the given metadata key.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_project_metadata_item.timeouts.new](#fn-computeprojectmetadataitemtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    key,
    value,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_project_metadata_item',
    label=resourceLabel,
    attrs=self.newAttrs(
      key=key,
      project=project,
      timeouts=timeouts,
      value=value
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_project_metadata_item.newAttrs` constructs a new object with attributes and blocks configured for the `compute_project_metadata_item`\nTerraform resource.\n\nUnlike [google.compute_project_metadata_item.new](#fn-computeprojectmetadataitemnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `key` (`string`): The metadata key to set.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `value` (`string`): The value to set for the given metadata key.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_project_metadata_item.timeouts.new](#fn-computeprojectmetadataitemtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_project_metadata_item` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    key,
    value,
    project=null,
    timeouts=null
  ):: std.prune(a={
    key: key,
    project: project,
    timeouts: timeouts,
    value: value,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_project_metadata_item.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withKey':: d.fn(help='`google.compute_project_metadata_item.withKey` constructs a mixin object that can be merged into the `compute_project_metadata_item`\nTerraform resource block to set or update the key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `key` field.\n', args=[]),
  withKey(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          key: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_project_metadata_item.withProject` constructs a mixin object that can be merged into the `compute_project_metadata_item`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_project_metadata_item.withTimeouts` constructs a mixin object that can be merged into the `compute_project_metadata_item`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_project_metadata_item.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_project_metadata_item`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_project_metadata_item.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withValue':: d.fn(help='`google.compute_project_metadata_item.withValue` constructs a mixin object that can be merged into the `compute_project_metadata_item`\nTerraform resource block to set or update the value field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `value` field.\n', args=[]),
  withValue(resourceLabel, value):: {
    resource+: {
      google_compute_project_metadata_item+: {
        [resourceLabel]+: {
          value: value,
        },
      },
    },
  },
}

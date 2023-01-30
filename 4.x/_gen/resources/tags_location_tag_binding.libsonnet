local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='tags_location_tag_binding', url='', help='`tags_location_tag_binding` represents the `google_tags_location_tag_binding` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.tags_location_tag_binding.new` injects a new `google_tags_location_tag_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.tags_location_tag_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.tags_location_tag_binding` using the reference:\n\n    $._ref.google_tags_location_tag_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_tags_location_tag_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `parent` (`string`): The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123\n  - `tag_value` (`string`): The TagValue of the TagBinding. Must be of the form tagValues/456.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tags_location_tag_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    tag_value,
    location=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_location_tag_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      parent=parent,
      tag_value=tag_value,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.tags_location_tag_binding.newAttrs` constructs a new object with attributes and blocks configured for the `tags_location_tag_binding`\nTerraform resource.\n\nUnlike [google.tags_location_tag_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The geographic location where the transfer config should reside.\nExamples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.\n  - `parent` (`string`): The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123\n  - `tag_value` (`string`): The TagValue of the TagBinding. Must be of the form tagValues/456.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tags_location_tag_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `tags_location_tag_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    tag_value,
    location=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    parent: parent,
    tag_value: tag_value,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.tags_location_tag_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_tags_location_tag_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_tags_location_tag_binding+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTagValue':: d.fn(help='`google.string.withTagValue` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the tag_value field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `tag_value` field.\n', args=[]),
  withTagValue(resourceLabel, value): {
    resource+: {
      google_tags_location_tag_binding+: {
        [resourceLabel]+: {
          tag_value: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_tags_location_tag_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_tags_location_tag_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

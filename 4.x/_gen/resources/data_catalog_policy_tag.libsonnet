local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_catalog_policy_tag', url='', help='`data_catalog_policy_tag` represents the `google_data_catalog_policy_tag` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data_catalog_policy_tag.new` injects a new `google_data_catalog_policy_tag` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_catalog_policy_tag.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_catalog_policy_tag` using the reference:\n\n    $._ref.google_data_catalog_policy_tag.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_catalog_policy_tag.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of this policy tag. It must: contain only unicode characters, tabs,\nnewlines, carriage returns and page breaks; and be at most 2000 bytes long when\nencoded in UTF-8. If not set, defaults to an empty description.\nIf not set, defaults to an empty description. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User defined name of this policy tag. It must: be unique within the parent\ntaxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;\nnot start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.\n  - `parent_policy_tag` (`string`): Resource name of this policy tag\u0026#39;s parent policy tag.\nIf empty, it means this policy tag is a top level policy tag.\nIf not set, defaults to an empty string. When `null`, the `parent_policy_tag` field will be omitted from the resulting object.\n  - `taxonomy` (`string`): Taxonomy the policy tag is associated with\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_policy_tag.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    taxonomy,
    description=null,
    parent_policy_tag=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_policy_tag',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      parent_policy_tag=parent_policy_tag,
      taxonomy=taxonomy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data_catalog_policy_tag.newAttrs` constructs a new object with attributes and blocks configured for the `data_catalog_policy_tag`\nTerraform resource.\n\nUnlike [google.data_catalog_policy_tag.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of this policy tag. It must: contain only unicode characters, tabs,\nnewlines, carriage returns and page breaks; and be at most 2000 bytes long when\nencoded in UTF-8. If not set, defaults to an empty description.\nIf not set, defaults to an empty description. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User defined name of this policy tag. It must: be unique within the parent\ntaxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;\nnot start or end with spaces; and be at most 200 bytes long when encoded in UTF-8.\n  - `parent_policy_tag` (`string`): Resource name of this policy tag&#39;s parent policy tag.\nIf empty, it means this policy tag is a top level policy tag.\nIf not set, defaults to an empty string. When `null`, the `parent_policy_tag` field will be omitted from the resulting object.\n  - `taxonomy` (`string`): Taxonomy the policy tag is associated with\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_catalog_policy_tag.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_catalog_policy_tag` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    taxonomy,
    description=null,
    parent_policy_tag=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    parent_policy_tag: parent_policy_tag,
    taxonomy: taxonomy,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_catalog_policy_tag.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withParentPolicyTag':: d.fn(help='`google.string.withParentPolicyTag` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent_policy_tag field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent_policy_tag` field.\n', args=[]),
  withParentPolicyTag(resourceLabel, value): {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          parent_policy_tag: value,
        },
      },
    },
  },
  '#withTaxonomy':: d.fn(help='`google.string.withTaxonomy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the taxonomy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `taxonomy` field.\n', args=[]),
  withTaxonomy(resourceLabel, value): {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          taxonomy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_catalog_policy_tag+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

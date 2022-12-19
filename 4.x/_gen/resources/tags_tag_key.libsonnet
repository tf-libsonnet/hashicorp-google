local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='tags_tag_key', url='', help='`tags_tag_key` represents the `google_tags_tag_key` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.tags_tag_key.new` injects a new `google_tags_tag_key` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.tags_tag_key.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.tags_tag_key` using the reference:\n\n    $._ref.google_tags_tag_key.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_tags_tag_key.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-assigned description of the TagKey. Must not exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `parent` (`string`): Input only. The resource name of the new TagKey\u0026#39;s parent. Must be of the form organizations/{org_id}.\n  - `purpose` (`string`): Optional. A purpose cannot be changed once set.\n\nA purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. Possible values: [\u0026#34;GCE_FIREWALL\u0026#34;] When `null`, the `purpose` field will be omitted from the resulting object.\n  - `purpose_data` (`obj`): Optional. Purpose data cannot be changed once set.\n\nPurpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: \u0026#39;network = \u0026#34;\u0026lt;project-name\u0026gt;/\u0026lt;vpc-name\u0026gt;\u0026#34;\u0026#39;. When `null`, the `purpose_data` field will be omitted from the resulting object.\n  - `short_name` (`string`): Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.\n\nThe short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tags_tag_key.timeouts.new](#fn-tagstagkeytimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    parent,
    short_name,
    description=null,
    purpose=null,
    purpose_data=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      parent=parent,
      purpose=purpose,
      purpose_data=purpose_data,
      short_name=short_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.tags_tag_key.newAttrs` constructs a new object with attributes and blocks configured for the `tags_tag_key`\nTerraform resource.\n\nUnlike [google.tags_tag_key.new](#fn-tagstagkeynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-assigned description of the TagKey. Must not exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `parent` (`string`): Input only. The resource name of the new TagKey&#39;s parent. Must be of the form organizations/{org_id}.\n  - `purpose` (`string`): Optional. A purpose cannot be changed once set.\n\nA purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. Possible values: [&#34;GCE_FIREWALL&#34;] When `null`, the `purpose` field will be omitted from the resulting object.\n  - `purpose_data` (`obj`): Optional. Purpose data cannot be changed once set.\n\nPurpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: &#39;network = &#34;&lt;project-name&gt;/&lt;vpc-name&gt;&#34;&#39;. When `null`, the `purpose_data` field will be omitted from the resulting object.\n  - `short_name` (`string`): Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.\n\nThe short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tags_tag_key.timeouts.new](#fn-tagstagkeytimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `tags_tag_key` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    parent,
    short_name,
    description=null,
    purpose=null,
    purpose_data=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    parent: parent,
    purpose: purpose,
    purpose_data: purpose_data,
    short_name: short_name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.tags_tag_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.tags_tag_key.withDescription` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.tags_tag_key.withParent` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withPurpose':: d.fn(help='`google.tags_tag_key.withPurpose` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the purpose field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `purpose` field.\n', args=[]),
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  '#withPurposeData':: d.fn(help='`google.tags_tag_key.withPurposeData` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the purpose_data field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `purpose_data` field.\n', args=[]),
  withPurposeData(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          purpose_data: value,
        },
      },
    },
  },
  '#withShortName':: d.fn(help='`google.tags_tag_key.withShortName` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the short_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `short_name` field.\n', args=[]),
  withShortName(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          short_name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.tags_tag_key.withTimeouts` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.tags_tag_key.withTimeoutsMixin` constructs a mixin object that can be merged into the `tags_tag_key`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.tags_tag_key.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

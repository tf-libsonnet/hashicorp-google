local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='storage_transfer_agent_pool', url='', help='`storage_transfer_agent_pool` represents the `google_storage_transfer_agent_pool` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bandwidth_limit:: {
    '#new':: d.fn(help='\n`google.storage_transfer_agent_pool.bandwidth_limit.new` constructs a new object with attributes and blocks configured for the `bandwidth_limit`\nTerraform sub block.\n\n\n\n**Args**:\n  - `limit_mbps` (`string`): Bandwidth rate in megabytes per second, distributed across all the agents in the pool.\n\n**Returns**:\n  - An attribute object that represents the `bandwidth_limit` sub block.\n', args=[]),
    new(
      limit_mbps
    ):: std.prune(a={
      limit_mbps: limit_mbps,
    }),
  },
  '#new':: d.fn(help="\n`google.storage_transfer_agent_pool.new` injects a new `google_storage_transfer_agent_pool` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.storage_transfer_agent_pool.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.storage_transfer_agent_pool` using the reference:\n\n    $._ref.google_storage_transfer_agent_pool.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_storage_transfer_agent_pool.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): Specifies the client-specified AgentPool description. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the agent pool to create.\n\nThe agentPoolId must meet the following requirements:\n* Length of 128 characters or less.\n* Not start with the string goog.\n* Start with a lowercase ASCII character, followed by:\n  * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).\n  * One or more numerals or lowercase ASCII characters.\n\nAs expressed by the regular expression: ^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `bandwidth_limit` (`list[obj]`): Specifies the bandwidth limit details. If this field is unspecified, the default value is set as \u0026#39;No Limit\u0026#39;. When `null`, the `bandwidth_limit` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.bandwidth_limit.new](#fn-bandwidth_limitnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    bandwidth_limit=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_transfer_agent_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      bandwidth_limit=bandwidth_limit,
      display_name=display_name,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.storage_transfer_agent_pool.newAttrs` constructs a new object with attributes and blocks configured for the `storage_transfer_agent_pool`\nTerraform resource.\n\nUnlike [google.storage_transfer_agent_pool.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): Specifies the client-specified AgentPool description. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `name` (`string`): The ID of the agent pool to create.\n\nThe agentPoolId must meet the following requirements:\n* Length of 128 characters or less.\n* Not start with the string goog.\n* Start with a lowercase ASCII character, followed by:\n  * Zero or more: lowercase Latin alphabet characters, numerals, hyphens (-), periods (.), underscores (_), or tildes (~).\n  * One or more numerals or lowercase ASCII characters.\n\nAs expressed by the regular expression: ^(?!goog)[a-z]([a-z0-9-._~]*[a-z0-9])?$.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `bandwidth_limit` (`list[obj]`): Specifies the bandwidth limit details. If this field is unspecified, the default value is set as &#39;No Limit&#39;. When `null`, the `bandwidth_limit` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.bandwidth_limit.new](#fn-bandwidth_limitnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.storage_transfer_agent_pool.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `storage_transfer_agent_pool` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    bandwidth_limit=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bandwidth_limit: bandwidth_limit,
    display_name: display_name,
    name: name,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.storage_transfer_agent_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBandwidthLimit':: d.fn(help='`google.list[obj].withBandwidthLimit` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bandwidth_limit field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBandwidthLimitMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bandwidth_limit` field.\n', args=[]),
  withBandwidthLimit(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          bandwidth_limit: value,
        },
      },
    },
  },
  '#withBandwidthLimitMixin':: d.fn(help='`google.list[obj].withBandwidthLimitMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bandwidth_limit field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBandwidthLimit](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bandwidth_limit` field.\n', args=[]),
  withBandwidthLimitMixin(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          bandwidth_limit+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

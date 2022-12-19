local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_gcp_user_access_binding', url='', help='`access_context_manager_gcp_user_access_binding` represents the `google_access_context_manager_gcp_user_access_binding` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.access_context_manager_gcp_user_access_binding.new` injects a new `google_access_context_manager_gcp_user_access_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_gcp_user_access_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_gcp_user_access_binding` using the reference:\n\n    $._ref.google_access_context_manager_gcp_user_access_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_gcp_user_access_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `access_levels` (`list`): Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: \u0026#34;accessPolicies/9522/accessLevels/device_trusted\u0026#34;\n  - `group_key` (`string`): Required. Immutable. Google Group id whose members are subject to this binding\u0026#39;s restrictions. See \u0026#34;id\u0026#34; in the G Suite Directory API\u0026#39;s Groups resource. If a group\u0026#39;s email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: \u0026#34;01d520gv4vjcrht\u0026#34;\n  - `organization_id` (`string`): Required. ID of the parent organization.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_gcp_user_access_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    access_levels,
    group_key,
    organization_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_gcp_user_access_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_levels=access_levels,
      group_key=group_key,
      organization_id=organization_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_gcp_user_access_binding.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_gcp_user_access_binding`\nTerraform resource.\n\nUnlike [google.access_context_manager_gcp_user_access_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `access_levels` (`list`): Required. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: &#34;accessPolicies/9522/accessLevels/device_trusted&#34;\n  - `group_key` (`string`): Required. Immutable. Google Group id whose members are subject to this binding&#39;s restrictions. See &#34;id&#34; in the G Suite Directory API&#39;s Groups resource. If a group&#39;s email address/alias is changed, this resource will continue to point at the changed group. This field does not accept group email addresses or aliases. Example: &#34;01d520gv4vjcrht&#34;\n  - `organization_id` (`string`): Required. ID of the parent organization.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_gcp_user_access_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_gcp_user_access_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    access_levels,
    group_key,
    organization_id,
    timeouts=null
  ):: std.prune(a={
    access_levels: access_levels,
    group_key: group_key,
    organization_id: organization_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_gcp_user_access_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAccessLevels':: d.fn(help='`google.list.withAccessLevels` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the access_levels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `access_levels` field.\n', args=[]),
  withAccessLevels(resourceLabel, value): {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          access_levels: value,
        },
      },
    },
  },
  '#withGroupKey':: d.fn(help='`google.string.withGroupKey` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the group_key field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `group_key` field.\n', args=[]),
  withGroupKey(resourceLabel, value): {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          group_key: value,
        },
      },
    },
  },
  '#withOrganizationId':: d.fn(help='`google.string.withOrganizationId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the organization_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `organization_id` field.\n', args=[]),
  withOrganizationId(resourceLabel, value): {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          organization_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

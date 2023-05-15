local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='access_context_manager_egress_policy', url='', help='`access_context_manager_egress_policy` represents the `google_access_context_manager_egress_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.access_context_manager_egress_policy.new` injects a new `google_access_context_manager_egress_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.access_context_manager_egress_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.access_context_manager_egress_policy` using the reference:\n\n    $._ref.google_access_context_manager_egress_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_access_context_manager_egress_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `egress_policy_name` (`string`): The name of the Service Perimeter to add this resource to.\n  - `resource` (`string`): A GCP resource that is inside of the service perimeter.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_egress_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    egress_policy_name,
    resource,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_egress_policy',
    label=resourceLabel,
    attrs=self.newAttrs(egress_policy_name=egress_policy_name, resource=resource, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.access_context_manager_egress_policy.newAttrs` constructs a new object with attributes and blocks configured for the `access_context_manager_egress_policy`\nTerraform resource.\n\nUnlike [google.access_context_manager_egress_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `egress_policy_name` (`string`): The name of the Service Perimeter to add this resource to.\n  - `resource` (`string`): A GCP resource that is inside of the service perimeter.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.access_context_manager_egress_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `access_context_manager_egress_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    egress_policy_name,
    resource,
    timeouts=null
  ):: std.prune(a={
    egress_policy_name: egress_policy_name,
    resource: resource,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.access_context_manager_egress_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withEgressPolicyName':: d.fn(help='`google.string.withEgressPolicyName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the egress_policy_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `egress_policy_name` field.\n', args=[]),
  withEgressPolicyName(resourceLabel, value): {
    resource+: {
      google_access_context_manager_egress_policy+: {
        [resourceLabel]+: {
          egress_policy_name: value,
        },
      },
    },
  },
  '#withResource':: d.fn(help='`google.string.withResource` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the resource field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `resource` field.\n', args=[]),
  withResource(resourceLabel, value): {
    resource+: {
      google_access_context_manager_egress_policy+: {
        [resourceLabel]+: {
          resource: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_access_context_manager_egress_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_access_context_manager_egress_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

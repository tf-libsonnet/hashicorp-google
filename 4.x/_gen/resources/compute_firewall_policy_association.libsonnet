local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_firewall_policy_association', url='', help='`compute_firewall_policy_association` represents the `google_compute_firewall_policy_association` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_firewall_policy_association.new` injects a new `google_compute_firewall_policy_association` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_firewall_policy_association.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_firewall_policy_association` using the reference:\n\n    $._ref.google_compute_firewall_policy_association.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_firewall_policy_association.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `attachment_target` (`string`): The target that the firewall policy is attached to.\n  - `firewall_policy` (`string`): The firewall policy ID of the association.\n  - `name` (`string`): The name for an association.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_association.timeouts.new](#fn-compute_firewall_policy_associationtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    attachment_target,
    firewall_policy,
    name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_firewall_policy_association',
    label=resourceLabel,
    attrs=self.newAttrs(
      attachment_target=attachment_target,
      firewall_policy=firewall_policy,
      name=name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_firewall_policy_association.newAttrs` constructs a new object with attributes and blocks configured for the `compute_firewall_policy_association`\nTerraform resource.\n\nUnlike [google.compute_firewall_policy_association.new](#fn-compute_firewall_policy_associationnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `attachment_target` (`string`): The target that the firewall policy is attached to.\n  - `firewall_policy` (`string`): The firewall policy ID of the association.\n  - `name` (`string`): The name for an association.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_firewall_policy_association.timeouts.new](#fn-compute_firewall_policy_associationtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_firewall_policy_association` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    attachment_target,
    firewall_policy,
    name,
    timeouts=null
  ):: std.prune(a={
    attachment_target: attachment_target,
    firewall_policy: firewall_policy,
    name: name,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_firewall_policy_association.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withAttachmentTarget':: d.fn(help='`google.string.withAttachmentTarget` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the attachment_target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `attachment_target` field.\n', args=[]),
  withAttachmentTarget(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          attachment_target: value,
        },
      },
    },
  },
  '#withFirewallPolicy':: d.fn(help='`google.string.withFirewallPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the firewall_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `firewall_policy` field.\n', args=[]),
  withFirewallPolicy(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          firewall_policy: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_firewall_policy_association+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_membership_binding', url='', help='`gke_hub_membership_binding` represents the `google_gke_hub_membership_binding` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.gke_hub_membership_binding.new` injects a new `google_gke_hub_membership_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_membership_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_membership_binding` using the reference:\n\n    $._ref.google_gke_hub_membership_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_membership_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): Location of the membership\n  - `membership_binding_id` (`string`): The client-provided identifier of the membership binding.\n  - `membership_id` (`string`): Id of the membership\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): A Workspace resource name in the format\n\u0026#39;projects/*/locations/*/scopes/*\u0026#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    membership_binding_id,
    membership_id,
    scope,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      membership_binding_id=membership_binding_id,
      membership_id=membership_id,
      project=project,
      scope=scope,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_membership_binding.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_membership_binding`\nTerraform resource.\n\nUnlike [google.gke_hub_membership_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): Location of the membership\n  - `membership_binding_id` (`string`): The client-provided identifier of the membership binding.\n  - `membership_id` (`string`): Id of the membership\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): A Workspace resource name in the format\n&#39;projects/*/locations/*/scopes/*&#39;.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_membership_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    membership_binding_id,
    membership_id,
    scope,
    project=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    membership_binding_id: membership_binding_id,
    membership_id: membership_id,
    project: project,
    scope: scope,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_membership_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMembershipBindingId':: d.fn(help='`google.string.withMembershipBindingId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the membership_binding_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `membership_binding_id` field.\n', args=[]),
  withMembershipBindingId(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          membership_binding_id: value,
        },
      },
    },
  },
  '#withMembershipId':: d.fn(help='`google.string.withMembershipId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the membership_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `membership_id` field.\n', args=[]),
  withMembershipId(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withScope':: d.fn(help='`google.string.withScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope` field.\n', args=[]),
  withScope(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          scope: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_membership_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

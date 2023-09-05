local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_namespace', url='', help='`gke_hub_namespace` represents the `google_gke_hub_namespace` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.gke_hub_namespace.new` injects a new `google_gke_hub_namespace` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_namespace.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_namespace` using the reference:\n\n    $._ref.google_gke_hub_namespace.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_namespace.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): The name of the Scope instance.\n  - `scope_id` (`string`): Id of the scope\n  - `scope_namespace_id` (`string`): The client-provided identifier of the namespace.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_namespace.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    scope,
    scope_id,
    scope_namespace_id,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_namespace',
    label=resourceLabel,
    attrs=self.newAttrs(
      project=project,
      scope=scope,
      scope_id=scope_id,
      scope_namespace_id=scope_namespace_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_namespace.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_namespace`\nTerraform resource.\n\nUnlike [google.gke_hub_namespace.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): The name of the Scope instance.\n  - `scope_id` (`string`): Id of the scope\n  - `scope_namespace_id` (`string`): The client-provided identifier of the namespace.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_namespace.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_namespace` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    scope,
    scope_id,
    scope_namespace_id,
    project=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    scope: scope,
    scope_id: scope_id,
    scope_namespace_id: scope_namespace_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_namespace.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withScope':: d.fn(help='`google.string.withScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope` field.\n', args=[]),
  withScope(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          scope: value,
        },
      },
    },
  },
  '#withScopeId':: d.fn(help='`google.string.withScopeId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope_id` field.\n', args=[]),
  withScopeId(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          scope_id: value,
        },
      },
    },
  },
  '#withScopeNamespaceId':: d.fn(help='`google.string.withScopeNamespaceId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope_namespace_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope_namespace_id` field.\n', args=[]),
  withScopeNamespaceId(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          scope_namespace_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_namespace+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='gke_hub_scope_rbac_role_binding', url='', help='`gke_hub_scope_rbac_role_binding` represents the `google_gke_hub_scope_rbac_role_binding` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.gke_hub_scope_rbac_role_binding.new` injects a new `google_gke_hub_scope_rbac_role_binding` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.gke_hub_scope_rbac_role_binding.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.gke_hub_scope_rbac_role_binding` using the reference:\n\n    $._ref.google_gke_hub_scope_rbac_role_binding.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_gke_hub_scope_rbac_role_binding.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `group` (`string`): Principal that is be authorized in the cluster (at least of one the oneof\nis required). Updating one will unset the other automatically.\ngroup is the group, as seen by the kubernetes cluster. When `null`, the `group` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels for this ScopeRBACRoleBinding. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope_id` (`string`): Id of the scope\n  - `scope_rbac_role_binding_id` (`string`): The client-provided identifier of the RBAC Role Binding.\n  - `user` (`string`): Principal that is be authorized in the cluster (at least of one the oneof\nis required). Updating one will unset the other automatically.\nuser is the name of the user as seen by the kubernetes cluster, example\n\u0026#34;alice\u0026#34; or \u0026#34;alice@domain.tld\u0026#34; When `null`, the `user` field will be omitted from the resulting object.\n  - `role` (`list[obj]`): Role to bind to the principal. When `null`, the `role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.role.new](#fn-rolenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    scope_id,
    scope_rbac_role_binding_id,
    group=null,
    labels=null,
    project=null,
    role=null,
    timeouts=null,
    user=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_scope_rbac_role_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      group=group,
      labels=labels,
      project=project,
      role=role,
      scope_id=scope_id,
      scope_rbac_role_binding_id=scope_rbac_role_binding_id,
      timeouts=timeouts,
      user=user
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.gke_hub_scope_rbac_role_binding.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_scope_rbac_role_binding`\nTerraform resource.\n\nUnlike [google.gke_hub_scope_rbac_role_binding.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `group` (`string`): Principal that is be authorized in the cluster (at least of one the oneof\nis required). Updating one will unset the other automatically.\ngroup is the group, as seen by the kubernetes cluster. When `null`, the `group` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels for this ScopeRBACRoleBinding. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope_id` (`string`): Id of the scope\n  - `scope_rbac_role_binding_id` (`string`): The client-provided identifier of the RBAC Role Binding.\n  - `user` (`string`): Principal that is be authorized in the cluster (at least of one the oneof\nis required). Updating one will unset the other automatically.\nuser is the name of the user as seen by the kubernetes cluster, example\n&#34;alice&#34; or &#34;alice@domain.tld&#34; When `null`, the `user` field will be omitted from the resulting object.\n  - `role` (`list[obj]`): Role to bind to the principal. When `null`, the `role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.role.new](#fn-rolenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_scope_rbac_role_binding` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    scope_id,
    scope_rbac_role_binding_id,
    group=null,
    labels=null,
    project=null,
    role=null,
    timeouts=null,
    user=null
  ):: std.prune(a={
    group: group,
    labels: labels,
    project: project,
    role: role,
    scope_id: scope_id,
    scope_rbac_role_binding_id: scope_rbac_role_binding_id,
    timeouts: timeouts,
    user: user,
  }),
  role:: {
    '#new':: d.fn(help='\n`google.gke_hub_scope_rbac_role_binding.role.new` constructs a new object with attributes and blocks configured for the `role`\nTerraform sub block.\n\n\n\n**Args**:\n  - `predefined_role` (`string`): PredefinedRole is an ENUM representation of the default Kubernetes Roles Possible values: [&#34;UNKNOWN&#34;, &#34;ADMIN&#34;, &#34;EDIT&#34;, &#34;VIEW&#34;] When `null`, the `predefined_role` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `role` sub block.\n', args=[]),
    new(
      predefined_role=null
    ):: std.prune(a={
      predefined_role: predefined_role,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.gke_hub_scope_rbac_role_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withGroup':: d.fn(help='`google.string.withGroup` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the group field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `group` field.\n', args=[]),
  withGroup(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          group: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRole':: d.fn(help='`google.list[obj].withRole` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the role field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRoleMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `role` field.\n', args=[]),
  withRole(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  '#withRoleMixin':: d.fn(help='`google.list[obj].withRoleMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the role field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRole](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `role` field.\n', args=[]),
  withRoleMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          role+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withScopeId':: d.fn(help='`google.string.withScopeId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope_id` field.\n', args=[]),
  withScopeId(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          scope_id: value,
        },
      },
    },
  },
  '#withScopeRbacRoleBindingId':: d.fn(help='`google.string.withScopeRbacRoleBindingId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope_rbac_role_binding_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope_rbac_role_binding_id` field.\n', args=[]),
  withScopeRbacRoleBindingId(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          scope_rbac_role_binding_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUser':: d.fn(help='`google.string.withUser` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the user field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `user` field.\n', args=[]),
  withUser(resourceLabel, value): {
    resource+: {
      google_gke_hub_scope_rbac_role_binding+: {
        [resourceLabel]+: {
          user: value,
        },
      },
    },
  },
}

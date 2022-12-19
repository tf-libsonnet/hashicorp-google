local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='organization_policy', url='', help='`organization_policy` represents the `google_organization_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  boolean_policy:: {
    '#new':: d.fn(help='\n`google.organization_policy.boolean_policy.new` constructs a new object with attributes and blocks configured for the `boolean_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enforced` (`bool`): If true, then the Policy is enforced. If false, then any configuration is acceptable.\n\n**Returns**:\n  - An attribute object that represents the `boolean_policy` sub block.\n', args=[]),
    new(
      enforced
    ):: std.prune(a={
      enforced: enforced,
    }),
  },
  list_policy:: {
    allow:: {
      '#new':: d.fn(help='\n`google.organization_policy.list_policy.allow.new` constructs a new object with attributes and blocks configured for the `allow`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all` (`bool`): The policy allows or denies all values. When `null`, the `all` field will be omitted from the resulting object.\n  - `values` (`list`): The policy can define specific values that are allowed or denied. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `allow` sub block.\n', args=[]),
      new(
        all=null,
        values=null
      ):: std.prune(a={
        all: all,
        values: values,
      }),
    },
    deny:: {
      '#new':: d.fn(help='\n`google.organization_policy.list_policy.deny.new` constructs a new object with attributes and blocks configured for the `deny`\nTerraform sub block.\n\n\n\n**Args**:\n  - `all` (`bool`): The policy allows or denies all values. When `null`, the `all` field will be omitted from the resulting object.\n  - `values` (`list`): The policy can define specific values that are allowed or denied. When `null`, the `values` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `deny` sub block.\n', args=[]),
      new(
        all=null,
        values=null
      ):: std.prune(a={
        all: all,
        values: values,
      }),
    },
    '#new':: d.fn(help='\n`google.organization_policy.list_policy.new` constructs a new object with attributes and blocks configured for the `list_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `inherit_from_parent` (`bool`): If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy. When `null`, the `inherit_from_parent` field will be omitted from the resulting object.\n  - `suggested_value` (`string`): The Google Cloud Console will try to default to a configuration that matches the value specified in this field. When `null`, the `suggested_value` field will be omitted from the resulting object.\n  - `allow` (`list[obj]`): One or the other must be set. When `null`, the `allow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.list_policy.allow.new](#fn-allownew) constructor.\n  - `deny` (`list[obj]`): One or the other must be set. When `null`, the `deny` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.list_policy.deny.new](#fn-denynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `list_policy` sub block.\n', args=[]),
    new(
      allow=null,
      deny=null,
      inherit_from_parent=null,
      suggested_value=null
    ):: std.prune(a={
      allow: allow,
      deny: deny,
      inherit_from_parent: inherit_from_parent,
      suggested_value: suggested_value,
    }),
  },
  '#new':: d.fn(help="\n`google.organization_policy.new` injects a new `google_organization_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.organization_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.organization_policy` using the reference:\n\n    $._ref.google_organization_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_organization_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `constraint` (`string`): The name of the Constraint the Policy is configuring, for example, serviceuser.services.\n  - `org_id` (`string`): \n  - `version` (`number`): Version of the Policy. Default version is 0. When `null`, the `version` field will be omitted from the resulting object.\n  - `boolean_policy` (`list[obj]`): A boolean policy is a constraint that is either enforced or not. When `null`, the `boolean_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.boolean_policy.new](#fn-boolean_policynew) constructor.\n  - `list_policy` (`list[obj]`): A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values.  When `null`, the `list_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.list_policy.new](#fn-list_policynew) constructor.\n  - `restore_policy` (`list[obj]`): A restore policy is a constraint to restore the default policy. When `null`, the `restore_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.restore_policy.new](#fn-restore_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    constraint,
    org_id,
    boolean_policy=null,
    list_policy=null,
    restore_policy=null,
    timeouts=null,
    version=null,
    _meta={}
  ):: tf.withResource(
    type='google_organization_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      boolean_policy=boolean_policy,
      constraint=constraint,
      list_policy=list_policy,
      org_id=org_id,
      restore_policy=restore_policy,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.organization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `organization_policy`\nTerraform resource.\n\nUnlike [google.organization_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `constraint` (`string`): The name of the Constraint the Policy is configuring, for example, serviceuser.services.\n  - `org_id` (`string`): \n  - `version` (`number`): Version of the Policy. Default version is 0. When `null`, the `version` field will be omitted from the resulting object.\n  - `boolean_policy` (`list[obj]`): A boolean policy is a constraint that is either enforced or not. When `null`, the `boolean_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.boolean_policy.new](#fn-boolean_policynew) constructor.\n  - `list_policy` (`list[obj]`): A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values.  When `null`, the `list_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.list_policy.new](#fn-list_policynew) constructor.\n  - `restore_policy` (`list[obj]`): A restore policy is a constraint to restore the default policy. When `null`, the `restore_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.restore_policy.new](#fn-restore_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.organization_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `organization_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    constraint,
    org_id,
    boolean_policy=null,
    list_policy=null,
    restore_policy=null,
    timeouts=null,
    version=null
  ):: std.prune(a={
    boolean_policy: boolean_policy,
    constraint: constraint,
    list_policy: list_policy,
    org_id: org_id,
    restore_policy: restore_policy,
    timeouts: timeouts,
    version: version,
  }),
  restore_policy:: {
    '#new':: d.fn(help='\n`google.organization_policy.restore_policy.new` constructs a new object with attributes and blocks configured for the `restore_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default` (`bool`): May only be set to true. If set, then the default Policy is restored.\n\n**Returns**:\n  - An attribute object that represents the `restore_policy` sub block.\n', args=[]),
    new(
      default
    ):: std.prune(a={
      default: default,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.organization_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  '#withBooleanPolicy':: d.fn(help='`google.list[obj].withBooleanPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the boolean_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBooleanPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `boolean_policy` field.\n', args=[]),
  withBooleanPolicy(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          boolean_policy: value,
        },
      },
    },
  },
  '#withBooleanPolicyMixin':: d.fn(help='`google.list[obj].withBooleanPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the boolean_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBooleanPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `boolean_policy` field.\n', args=[]),
  withBooleanPolicyMixin(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          boolean_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConstraint':: d.fn(help='`google.string.withConstraint` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the constraint field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `constraint` field.\n', args=[]),
  withConstraint(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          constraint: value,
        },
      },
    },
  },
  '#withListPolicy':: d.fn(help='`google.list[obj].withListPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the list_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withListPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `list_policy` field.\n', args=[]),
  withListPolicy(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          list_policy: value,
        },
      },
    },
  },
  '#withListPolicyMixin':: d.fn(help='`google.list[obj].withListPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the list_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withListPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `list_policy` field.\n', args=[]),
  withListPolicyMixin(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          list_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withOrgId':: d.fn(help='`google.string.withOrgId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the org_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `org_id` field.\n', args=[]),
  withOrgId(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  '#withRestorePolicy':: d.fn(help='`google.list[obj].withRestorePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRestorePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_policy` field.\n', args=[]),
  withRestorePolicy(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          restore_policy: value,
        },
      },
    },
  },
  '#withRestorePolicyMixin':: d.fn(help='`google.list[obj].withRestorePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the restore_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRestorePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `restore_policy` field.\n', args=[]),
  withRestorePolicyMixin(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          restore_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.number.withVersion` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_organization_policy+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}

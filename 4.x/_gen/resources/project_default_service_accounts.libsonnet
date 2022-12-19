local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_default_service_accounts', url='', help='`project_default_service_accounts` represents the `google_project_default_service_accounts` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.project_default_service_accounts.new` injects a new `google_project_default_service_accounts` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.project_default_service_accounts.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.project_default_service_accounts` using the reference:\n\n    $._ref.google_project_default_service_accounts.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_project_default_service_accounts.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The action to be performed in the default service accounts. Valid values are: DEPRIVILEGE, DELETE, DISABLE.\n\t\t\t\tNote that DEPRIVILEGE action will ignore the REVERT configuration in the restore_policy.\n  - `project` (`string`): The project ID where service accounts are created.\n  - `restore_policy` (`string`): The action to be performed in the default service accounts on the resource destroy.\n\t\t\t\tValid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE. When `null`, the `restore_policy` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_default_service_accounts.timeouts.new](#fn-projectdefaultserviceaccountstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    project,
    restore_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_default_service_accounts',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      project=project,
      restore_policy=restore_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.project_default_service_accounts.newAttrs` constructs a new object with attributes and blocks configured for the `project_default_service_accounts`\nTerraform resource.\n\nUnlike [google.project_default_service_accounts.new](#fn-projectdefaultserviceaccountsnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The action to be performed in the default service accounts. Valid values are: DEPRIVILEGE, DELETE, DISABLE.\n\t\t\t\tNote that DEPRIVILEGE action will ignore the REVERT configuration in the restore_policy.\n  - `project` (`string`): The project ID where service accounts are created.\n  - `restore_policy` (`string`): The action to be performed in the default service accounts on the resource destroy.\n\t\t\t\tValid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE. When `null`, the `restore_policy` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_default_service_accounts.timeouts.new](#fn-projectdefaultserviceaccountstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_default_service_accounts` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    project,
    restore_policy=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    project: project,
    restore_policy: restore_policy,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.project_default_service_accounts.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  '#withAction':: d.fn(help='`google.string.withAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value): {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRestorePolicy':: d.fn(help='`google.string.withRestorePolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the restore_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `restore_policy` field.\n', args=[]),
  withRestorePolicy(resourceLabel, value): {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          restore_policy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_project_default_service_accounts+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

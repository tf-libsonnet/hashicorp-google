local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='folder_iam_audit_config', url='', help='`folder_iam_audit_config` represents the `google_folder_iam_audit_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  audit_log_config:: {
    '#new':: d.fn(help='\n`google.folder_iam_audit_config.audit_log_config.new` constructs a new object with attributes and blocks configured for the `audit_log_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exempted_members` (`list`): Identities that do not cause logging for this type of permission. Each entry can have one of the following values:user:{emailid}: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com. serviceAccount:{emailid}: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com. group:{emailid}: An email address that represents a Google group. For example, admins@example.com. domain:{domain}: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com. When `null`, the `exempted_members` field will be omitted from the resulting object.\n  - `log_type` (`string`): Permission type for which logging is to be configured. Must be one of DATA_READ, DATA_WRITE, or ADMIN_READ.\n\n**Returns**:\n  - An attribute object that represents the `audit_log_config` sub block.\n', args=[]),
    new(
      log_type,
      exempted_members=null
    ):: std.prune(a={
      exempted_members: exempted_members,
      log_type: log_type,
    }),
  },
  '#new':: d.fn(help="\n`google.folder_iam_audit_config.new` injects a new `google_folder_iam_audit_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.folder_iam_audit_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.folder_iam_audit_config` using the reference:\n\n    $._ref.google_folder_iam_audit_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_folder_iam_audit_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `folder` (`string`): Set the `folder` field on the resulting resource block.\n  - `service` (`string`): Service which will be enabled for audit logging. The special value allServices covers all services.\n  - `audit_log_config` (`list[obj]`): The configuration for logging of each type of permission. This can be specified multiple times. When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.folder_iam_audit_config.audit_log_config.new](#fn-audit_log_confignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    folder,
    service,
    audit_log_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_folder_iam_audit_config',
    label=resourceLabel,
    attrs=self.newAttrs(audit_log_config=audit_log_config, folder=folder, service=service),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.folder_iam_audit_config.newAttrs` constructs a new object with attributes and blocks configured for the `folder_iam_audit_config`\nTerraform resource.\n\nUnlike [google.folder_iam_audit_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `folder` (`string`): Set the `folder` field on the resulting object.\n  - `service` (`string`): Service which will be enabled for audit logging. The special value allServices covers all services.\n  - `audit_log_config` (`list[obj]`): The configuration for logging of each type of permission. This can be specified multiple times. When `null`, the `audit_log_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.folder_iam_audit_config.audit_log_config.new](#fn-audit_log_confignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `folder_iam_audit_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    folder,
    service,
    audit_log_config=null
  ):: std.prune(a={
    audit_log_config: audit_log_config,
    folder: folder,
    service: service,
  }),
  '#withAuditLogConfig':: d.fn(help='`google.list[obj].withAuditLogConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the audit_log_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAuditLogConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.\n', args=[]),
  withAuditLogConfig(resourceLabel, value): {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          audit_log_config: value,
        },
      },
    },
  },
  '#withAuditLogConfigMixin':: d.fn(help='`google.list[obj].withAuditLogConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the audit_log_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAuditLogConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `audit_log_config` field.\n', args=[]),
  withAuditLogConfigMixin(resourceLabel, value): {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          audit_log_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withFolder':: d.fn(help='`google.string.withFolder` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the folder field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `folder` field.\n', args=[]),
  withFolder(resourceLabel, value): {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          folder: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_folder_iam_audit_config+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
}

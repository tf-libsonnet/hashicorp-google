local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='project_access_approval_settings', url='', help='`project_access_approval_settings` represents the `google_project_access_approval_settings` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  enrolled_services:: {
    '#new':: d.fn(help='\n`google.project_access_approval_settings.enrolled_services.new` constructs a new object with attributes and blocks configured for the `enrolled_services`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_product` (`string`): The product for which Access Approval will be enrolled. Allowed values are listed (case-sensitive):\n  all\n  appengine.googleapis.com\n  bigquery.googleapis.com\n  bigtable.googleapis.com\n  cloudkms.googleapis.com\n  compute.googleapis.com\n  dataflow.googleapis.com\n  iam.googleapis.com\n  pubsub.googleapis.com\n  storage.googleapis.com\n  - `enrollment_level` (`string`): The enrollment level of the service. Default value: &#34;BLOCK_ALL&#34; Possible values: [&#34;BLOCK_ALL&#34;] When `null`, the `enrollment_level` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `enrolled_services` sub block.\n', args=[]),
    new(
      cloud_product,
      enrollment_level=null
    ):: std.prune(a={
      cloud_product: cloud_product,
      enrollment_level: enrollment_level,
    }),
  },
  '#new':: d.fn(help="\n`google.project_access_approval_settings.new` injects a new `google_project_access_approval_settings` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.project_access_approval_settings.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.project_access_approval_settings` using the reference:\n\n    $._ref.google_project_access_approval_settings.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_project_access_approval_settings.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `active_key_version` (`string`): The asymmetric crypto key version to use for signing approval requests.\nEmpty active_key_version indicates that a Google-managed key should be used for signing.\nThis property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set. When `null`, the `active_key_version` field will be omitted from the resulting object.\n  - `notification_emails` (`list`): A list of email addresses to which notifications relating to approval requests should be sent.\nNotifications relating to a resource will be sent to all emails in the settings of ancestor\nresources of that resource. A maximum of 50 email addresses are allowed. When `null`, the `notification_emails` field will be omitted from the resulting object.\n  - `project` (`string`): Deprecated in favor of \u0026#39;project_id\u0026#39; When `null`, the `project` field will be omitted from the resulting object.\n  - `project_id` (`string`): ID of the project of the access approval settings.\n  - `enrolled_services` (`list[obj]`): A list of Google Cloud Services for which the given resource has Access Approval enrolled.\nAccess requests for the resource given by name against any of these services contained here will be required\nto have explicit approval. Enrollment can only be done on an all or nothing basis.\n\nA maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded. When `null`, the `enrolled_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_access_approval_settings.enrolled_services.new](#fn-projectaccessapprovalsettingsenrolledservicesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_access_approval_settings.timeouts.new](#fn-projectaccessapprovalsettingstimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    project_id,
    active_key_version=null,
    enrolled_services=null,
    notification_emails=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_access_approval_settings',
    label=resourceLabel,
    attrs=self.newAttrs(
      active_key_version=active_key_version,
      enrolled_services=enrolled_services,
      notification_emails=notification_emails,
      project=project,
      project_id=project_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.project_access_approval_settings.newAttrs` constructs a new object with attributes and blocks configured for the `project_access_approval_settings`\nTerraform resource.\n\nUnlike [google.project_access_approval_settings.new](#fn-projectaccessapprovalsettingsnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `active_key_version` (`string`): The asymmetric crypto key version to use for signing approval requests.\nEmpty active_key_version indicates that a Google-managed key should be used for signing.\nThis property will be ignored if set by an ancestor of the resource, and new non-empty values may not be set. When `null`, the `active_key_version` field will be omitted from the resulting object.\n  - `notification_emails` (`list`): A list of email addresses to which notifications relating to approval requests should be sent.\nNotifications relating to a resource will be sent to all emails in the settings of ancestor\nresources of that resource. A maximum of 50 email addresses are allowed. When `null`, the `notification_emails` field will be omitted from the resulting object.\n  - `project` (`string`): Deprecated in favor of &#39;project_id&#39; When `null`, the `project` field will be omitted from the resulting object.\n  - `project_id` (`string`): ID of the project of the access approval settings.\n  - `enrolled_services` (`list[obj]`): A list of Google Cloud Services for which the given resource has Access Approval enrolled.\nAccess requests for the resource given by name against any of these services contained here will be required\nto have explicit approval. Enrollment can only be done on an all or nothing basis.\n\nA maximum of 10 enrolled services will be enforced, to be expanded as the set of supported services is expanded. When `null`, the `enrolled_services` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_access_approval_settings.enrolled_services.new](#fn-projectaccessapprovalsettingsenrolledservicesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_access_approval_settings.timeouts.new](#fn-projectaccessapprovalsettingstimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_access_approval_settings` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    project_id,
    active_key_version=null,
    enrolled_services=null,
    notification_emails=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    active_key_version: active_key_version,
    enrolled_services: enrolled_services,
    notification_emails: notification_emails,
    project: project,
    project_id: project_id,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.project_access_approval_settings.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withActiveKeyVersion':: d.fn(help='`google.project_access_approval_settings.withActiveKeyVersion` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the active_key_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `active_key_version` field.\n', args=[]),
  withActiveKeyVersion(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          active_key_version: value,
        },
      },
    },
  },
  '#withEnrolledServices':: d.fn(help='`google.project_access_approval_settings.withEnrolledServices` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the enrolled_services field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enrolled_services` field.\n', args=[]),
  withEnrolledServices(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          enrolled_services: value,
        },
      },
    },
  },
  '#withEnrolledServicesMixin':: d.fn(help='`google.project_access_approval_settings.withEnrolledServicesMixin` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the enrolled_services field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.project_access_approval_settings.withEnrolledServices](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `enrolled_services` field.\n', args=[]),
  withEnrolledServicesMixin(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          enrolled_services+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNotificationEmails':: d.fn(help='`google.project_access_approval_settings.withNotificationEmails` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the notification_emails field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `notification_emails` field.\n', args=[]),
  withNotificationEmails(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          notification_emails: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.project_access_approval_settings.withProject` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProjectId':: d.fn(help='`google.project_access_approval_settings.withProjectId` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the project_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project_id` field.\n', args=[]),
  withProjectId(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          project_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.project_access_approval_settings.withTimeouts` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.project_access_approval_settings.withTimeoutsMixin` constructs a mixin object that can be merged into the `project_access_approval_settings`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.project_access_approval_settings.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_access_approval_settings+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

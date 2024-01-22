local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='netapp_backup_policy', url='', help='`netapp_backup_policy` represents the `google_netapp_backup_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.netapp_backup_policy.new` injects a new `google_netapp_backup_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.netapp_backup_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.netapp_backup_policy` using the reference:\n\n    $._ref.google_netapp_backup_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_netapp_backup_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `daily_backup_limit` (`number`): Number of daily backups to keep. Note that the minimum daily backup limit is 2.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `enabled` (`bool`): If enabled, make backups automatically according to the schedules.\nThis will be applied to all volumes that have this policy attached and enforced on volume level. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: \u0026#39;{ \u0026#34;owner\u0026#34;: \u0026#34;Bob\u0026#34;, \u0026#34;department\u0026#34;: \u0026#34;finance\u0026#34;, \u0026#34;purpose\u0026#34;: \u0026#34;testing\u0026#34; }\u0026#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the region for the policy to apply to.\n  - `monthly_backup_limit` (`number`): Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.\n  - `name` (`string`): The name of the backup policy. Needs to be unique per location.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `weekly_backup_limit` (`number`): Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_backup_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    daily_backup_limit,
    location,
    monthly_backup_limit,
    name,
    weekly_backup_limit,
    description=null,
    enabled=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_netapp_backup_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      daily_backup_limit=daily_backup_limit,
      description=description,
      enabled=enabled,
      labels=labels,
      location=location,
      monthly_backup_limit=monthly_backup_limit,
      name=name,
      project=project,
      timeouts=timeouts,
      weekly_backup_limit=weekly_backup_limit
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.netapp_backup_policy.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_backup_policy`\nTerraform resource.\n\nUnlike [google.netapp_backup_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `daily_backup_limit` (`number`): Number of daily backups to keep. Note that the minimum daily backup limit is 2.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `enabled` (`bool`): If enabled, make backups automatically according to the schedules.\nThis will be applied to all volumes that have this policy attached and enforced on volume level. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Name of the region for the policy to apply to.\n  - `monthly_backup_limit` (`number`): Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.\n  - `name` (`string`): The name of the backup policy. Needs to be unique per location.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `weekly_backup_limit` (`number`): Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_backup_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_backup_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    daily_backup_limit,
    location,
    monthly_backup_limit,
    name,
    weekly_backup_limit,
    description=null,
    enabled=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    daily_backup_limit: daily_backup_limit,
    description: description,
    enabled: enabled,
    labels: labels,
    location: location,
    monthly_backup_limit: monthly_backup_limit,
    name: name,
    project: project,
    timeouts: timeouts,
    weekly_backup_limit: weekly_backup_limit,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.netapp_backup_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDailyBackupLimit':: d.fn(help='`google.number.withDailyBackupLimit` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the daily_backup_limit field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `daily_backup_limit` field.\n', args=[]),
  withDailyBackupLimit(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          daily_backup_limit: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnabled':: d.fn(help='`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enabled` field.\n', args=[]),
  withEnabled(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withMonthlyBackupLimit':: d.fn(help='`google.number.withMonthlyBackupLimit` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the monthly_backup_limit field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `monthly_backup_limit` field.\n', args=[]),
  withMonthlyBackupLimit(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          monthly_backup_limit: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWeeklyBackupLimit':: d.fn(help='`google.number.withWeeklyBackupLimit` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the weekly_backup_limit field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `weekly_backup_limit` field.\n', args=[]),
  withWeeklyBackupLimit(resourceLabel, value): {
    resource+: {
      google_netapp_backup_policy+: {
        [resourceLabel]+: {
          weekly_backup_limit: value,
        },
      },
    },
  },
}

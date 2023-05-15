local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='alloydb_cluster', url='', help='`alloydb_cluster` represents the `google_alloydb_cluster` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  automated_backup_policy:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.new` constructs a new object with attributes and blocks configured for the `automated_backup_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `backup_window` (`string`): The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.\n\nThe backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `backup_window` field will be omitted from the resulting object.\n  - `enabled` (`bool`): Whether automated backups are enabled. When `null`, the `enabled` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to backups created using this configuration. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. When `null`, the `location` field will be omitted from the resulting object.\n  - `quantity_based_retention` (`list[obj]`): Quantity-based Backup retention policy to retain recent backups. When `null`, the `quantity_based_retention` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.quantity_based_retention.new](#fn-automated_backup_policyquantity_based_retentionnew) constructor.\n  - `time_based_retention` (`list[obj]`): Time-based Backup retention policy. When `null`, the `time_based_retention` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.time_based_retention.new](#fn-automated_backup_policytime_based_retentionnew) constructor.\n  - `weekly_schedule` (`list[obj]`): Weekly schedule for the Backup. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.weekly_schedule.new](#fn-automated_backup_policyweekly_schedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `automated_backup_policy` sub block.\n', args=[]),
    new(
      backup_window=null,
      enabled=null,
      labels=null,
      location=null,
      quantity_based_retention=null,
      time_based_retention=null,
      weekly_schedule=null
    ):: std.prune(a={
      backup_window: backup_window,
      enabled: enabled,
      labels: labels,
      location: location,
      quantity_based_retention: quantity_based_retention,
      time_based_retention: time_based_retention,
      weekly_schedule: weekly_schedule,
    }),
    quantity_based_retention:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.quantity_based_retention.new` constructs a new object with attributes and blocks configured for the `quantity_based_retention`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The number of backups to retain. When `null`, the `count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `quantity_based_retention` sub block.\n', args=[]),
      new(
        count=null
      ):: std.prune(a={
        count: count,
      }),
    },
    time_based_retention:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.time_based_retention.new` constructs a new object with attributes and blocks configured for the `time_based_retention`\nTerraform sub block.\n\n\n\n**Args**:\n  - `retention_period` (`string`): The retention period.\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `retention_period` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `time_based_retention` sub block.\n', args=[]),
      new(
        retention_period=null
      ):: std.prune(a={
        retention_period: retention_period,
      }),
    },
    weekly_schedule:: {
      '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `days_of_week` (`list`): The days of the week to perform a backup. At least one day of the week must be provided. Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `days_of_week` field will be omitted from the resulting object.\n  - `start_times` (`list[obj]`): The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00). When `null`, the `start_times` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.weekly_schedule.start_times.new](#fn-automated_backup_policyautomated_backup_policystart_timesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weekly_schedule` sub block.\n', args=[]),
      new(
        days_of_week=null,
        start_times=null
      ):: std.prune(a={
        days_of_week: days_of_week,
        start_times: start_times,
      }),
      start_times:: {
        '#new':: d.fn(help='\n`google.alloydb_cluster.automated_backup_policy.weekly_schedule.start_times.new` constructs a new object with attributes and blocks configured for the `start_times`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value &#34;24:00:00&#34; for scenarios like business closing time. When `null`, the `hours` field will be omitted from the resulting object.\n  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.\n  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.\n  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds. When `null`, the `seconds` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `start_times` sub block.\n', args=[]),
        new(
          hours=null,
          minutes=null,
          nanos=null,
          seconds=null
        ):: std.prune(a={
          hours: hours,
          minutes: minutes,
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
  },
  initial_user:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.initial_user.new` constructs a new object with attributes and blocks configured for the `initial_user`\nTerraform sub block.\n\n\n\n**Args**:\n  - `password` (`string`): The initial password for the user.\n  - `user` (`string`): The database username. When `null`, the `user` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `initial_user` sub block.\n', args=[]),
    new(
      password,
      user=null
    ):: std.prune(a={
      password: password,
      user: user,
    }),
  },
  '#new':: d.fn(help="\n`google.alloydb_cluster.new` injects a new `google_alloydb_cluster` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.alloydb_cluster.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.alloydb_cluster` using the reference:\n\n    $._ref.google_alloydb_cluster.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_alloydb_cluster.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster_id` (`string`): The ID of the alloydb cluster.\n  - `display_name` (`string`): User-settable and human-readable display name for the Cluster. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb cluster. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb cluster should reside.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:\n\n\u0026#34;projects/{projectNumber}/global/networks/{network_id}\u0026#34;.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `automated_backup_policy` (`list[obj]`): The automated backup policy for this cluster.\n\nIf no policy is provided then the default policy will be used. The default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. When `null`, the `automated_backup_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.new](#fn-automated_backup_policynew) constructor.\n  - `initial_user` (`list[obj]`): Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.initial_user.new](#fn-initial_usernew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster_id,
    location,
    network,
    automated_backup_policy=null,
    display_name=null,
    initial_user=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_alloydb_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      automated_backup_policy=automated_backup_policy,
      cluster_id=cluster_id,
      display_name=display_name,
      initial_user=initial_user,
      labels=labels,
      location=location,
      network=network,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.alloydb_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_cluster`\nTerraform resource.\n\nUnlike [google.alloydb_cluster.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster_id` (`string`): The ID of the alloydb cluster.\n  - `display_name` (`string`): User-settable and human-readable display name for the Cluster. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels for the alloydb cluster. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location where the alloydb cluster should reside.\n  - `network` (`string`): The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:\n\n&#34;projects/{projectNumber}/global/networks/{network_id}&#34;.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `automated_backup_policy` (`list[obj]`): The automated backup policy for this cluster.\n\nIf no policy is provided then the default policy will be used. The default policy takes one backup a day, has a backup window of 1 hour, and retains backups for 14 days. When `null`, the `automated_backup_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.automated_backup_policy.new](#fn-automated_backup_policynew) constructor.\n  - `initial_user` (`list[obj]`): Initial user to setup during cluster creation. When `null`, the `initial_user` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.initial_user.new](#fn-initial_usernew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_cluster.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_cluster` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster_id,
    location,
    network,
    automated_backup_policy=null,
    display_name=null,
    initial_user=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    automated_backup_policy: automated_backup_policy,
    cluster_id: cluster_id,
    display_name: display_name,
    initial_user: initial_user,
    labels: labels,
    location: location,
    network: network,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.alloydb_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutomatedBackupPolicy':: d.fn(help='`google.list[obj].withAutomatedBackupPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automated_backup_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutomatedBackupPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automated_backup_policy` field.\n', args=[]),
  withAutomatedBackupPolicy(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          automated_backup_policy: value,
        },
      },
    },
  },
  '#withAutomatedBackupPolicyMixin':: d.fn(help='`google.list[obj].withAutomatedBackupPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the automated_backup_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutomatedBackupPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `automated_backup_policy` field.\n', args=[]),
  withAutomatedBackupPolicyMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          automated_backup_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withClusterId':: d.fn(help='`google.string.withClusterId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster_id` field.\n', args=[]),
  withClusterId(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          cluster_id: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withInitialUser':: d.fn(help='`google.list[obj].withInitialUser` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the initial_user field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInitialUserMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `initial_user` field.\n', args=[]),
  withInitialUser(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          initial_user: value,
        },
      },
    },
  },
  '#withInitialUserMixin':: d.fn(help='`google.list[obj].withInitialUserMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the initial_user field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInitialUser](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `initial_user` field.\n', args=[]),
  withInitialUserMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          initial_user+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_alloydb_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

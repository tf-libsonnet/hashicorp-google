local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_resource_policy', url='', help='`compute_resource_policy` represents the `google_compute_resource_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  group_placement_policy:: {
    '#new':: d.fn(help='\n`google.compute_resource_policy.group_placement_policy.new` constructs a new object with attributes and blocks configured for the `group_placement_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `availability_domain_count` (`number`): The number of availability domains instances will be spread across. If two instances are in different\navailability domain, they will not be put in the same low latency network When `null`, the `availability_domain_count` field will be omitted from the resulting object.\n  - `collocation` (`string`): Collocation specifies whether to place VMs inside the same availability domain on the same low-latency network.\nSpecify &#39;COLLOCATED&#39; to enable collocation. Can only be specified with &#39;vm_count&#39;. If compute instances are created\nwith a COLLOCATED policy, then exactly &#39;vm_count&#39; instances must be created at the same time with the resource policy\nattached. Possible values: [&#34;COLLOCATED&#34;] When `null`, the `collocation` field will be omitted from the resulting object.\n  - `vm_count` (`number`): Number of VMs in this placement group. Google does not recommend that you use this field\nunless you use a compact policy and you want your policy to work only if it contains this\nexact number of VMs. When `null`, the `vm_count` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `group_placement_policy` sub block.\n', args=[]),
    new(
      availability_domain_count=null,
      collocation=null,
      vm_count=null
    ):: std.prune(a={
      availability_domain_count: availability_domain_count,
      collocation: collocation,
      vm_count: vm_count,
    }),
  },
  instance_schedule_policy:: {
    '#new':: d.fn(help='\n`google.compute_resource_policy.instance_schedule_policy.new` constructs a new object with attributes and blocks configured for the `instance_schedule_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `expiration_time` (`string`): The expiration time of the schedule. The timestamp is an RFC3339 string. When `null`, the `expiration_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): The start time of the schedule. The timestamp is an RFC3339 string. When `null`, the `start_time` field will be omitted from the resulting object.\n  - `time_zone` (`string`): Specifies the time zone to be used in interpreting the schedule. The value of this field must be a time zone name\nfrom the tz database: http://en.wikipedia.org/wiki/Tz_database.\n  - `vm_start_schedule` (`list[obj]`): Specifies the schedule for starting instances. When `null`, the `vm_start_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.vm_start_schedule.new](#fn-instance_schedule_policyvm_start_schedulenew) constructor.\n  - `vm_stop_schedule` (`list[obj]`): Specifies the schedule for stopping instances. When `null`, the `vm_stop_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.vm_stop_schedule.new](#fn-instance_schedule_policyvm_stop_schedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `instance_schedule_policy` sub block.\n', args=[]),
    new(
      time_zone,
      expiration_time=null,
      start_time=null,
      vm_start_schedule=null,
      vm_stop_schedule=null
    ):: std.prune(a={
      expiration_time: expiration_time,
      start_time: start_time,
      time_zone: time_zone,
      vm_start_schedule: vm_start_schedule,
      vm_stop_schedule: vm_stop_schedule,
    }),
    vm_start_schedule:: {
      '#new':: d.fn(help='\n`google.compute_resource_policy.instance_schedule_policy.vm_start_schedule.new` constructs a new object with attributes and blocks configured for the `vm_start_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schedule` (`string`): Specifies the frequency for the operation, using the unix-cron format.\n\n**Returns**:\n  - An attribute object that represents the `vm_start_schedule` sub block.\n', args=[]),
      new(
        schedule
      ):: std.prune(a={
        schedule: schedule,
      }),
    },
    vm_stop_schedule:: {
      '#new':: d.fn(help='\n`google.compute_resource_policy.instance_schedule_policy.vm_stop_schedule.new` constructs a new object with attributes and blocks configured for the `vm_stop_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `schedule` (`string`): Specifies the frequency for the operation, using the unix-cron format.\n\n**Returns**:\n  - An attribute object that represents the `vm_stop_schedule` sub block.\n', args=[]),
      new(
        schedule
      ):: std.prune(a={
        schedule: schedule,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.compute_resource_policy.new` injects a new `google_compute_resource_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_resource_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_resource_policy` using the reference:\n\n    $._ref.google_compute_resource_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_resource_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the resource, provided by the client when initially creating\nthe resource. The resource name must be 1-63 characters long, and comply\nwith RFC1035. Specifically, the name must be 1-63 characters long and\nmatch the regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])\u0026#39;? which means the\nfirst character must be a lowercase letter, and all following characters\nmust be a dash, lowercase letter, or digit, except the last character,\nwhich cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where resource policy resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `group_placement_policy` (`list[obj]`): Resource policy for instances used for placement configuration. When `null`, the `group_placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.group_placement_policy.new](#fn-group_placement_policynew) constructor.\n  - `instance_schedule_policy` (`list[obj]`): Resource policy for scheduling instance operations. When `null`, the `instance_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.new](#fn-instance_schedule_policynew) constructor.\n  - `snapshot_schedule_policy` (`list[obj]`): Policy for creating snapshots of persistent disks. When `null`, the `snapshot_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.new](#fn-snapshot_schedule_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    group_placement_policy=null,
    instance_schedule_policy=null,
    project=null,
    region=null,
    snapshot_schedule_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_resource_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      group_placement_policy=group_placement_policy,
      instance_schedule_policy=instance_schedule_policy,
      name=name,
      project=project,
      region=region,
      snapshot_schedule_policy=snapshot_schedule_policy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_resource_policy.newAttrs` constructs a new object with attributes and blocks configured for the `compute_resource_policy`\nTerraform resource.\n\nUnlike [google.compute_resource_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. Provide this property when you create the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the resource, provided by the client when initially creating\nthe resource. The resource name must be 1-63 characters long, and comply\nwith RFC1035. Specifically, the name must be 1-63 characters long and\nmatch the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])&#39;? which means the\nfirst character must be a lowercase letter, and all following characters\nmust be a dash, lowercase letter, or digit, except the last character,\nwhich cannot be a dash.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where resource policy resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `group_placement_policy` (`list[obj]`): Resource policy for instances used for placement configuration. When `null`, the `group_placement_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.group_placement_policy.new](#fn-group_placement_policynew) constructor.\n  - `instance_schedule_policy` (`list[obj]`): Resource policy for scheduling instance operations. When `null`, the `instance_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.instance_schedule_policy.new](#fn-instance_schedule_policynew) constructor.\n  - `snapshot_schedule_policy` (`list[obj]`): Policy for creating snapshots of persistent disks. When `null`, the `snapshot_schedule_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.new](#fn-snapshot_schedule_policynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_resource_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    group_placement_policy=null,
    instance_schedule_policy=null,
    project=null,
    region=null,
    snapshot_schedule_policy=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    group_placement_policy: group_placement_policy,
    instance_schedule_policy: instance_schedule_policy,
    name: name,
    project: project,
    region: region,
    snapshot_schedule_policy: snapshot_schedule_policy,
    timeouts: timeouts,
  }),
  snapshot_schedule_policy:: {
    '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.new` constructs a new object with attributes and blocks configured for the `snapshot_schedule_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `retention_policy` (`list[obj]`): Retention policy applied to snapshots created by this resource policy. When `null`, the `retention_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.retention_policy.new](#fn-snapshot_schedule_policyretention_policynew) constructor.\n  - `schedule` (`list[obj]`): Contains one of an &#39;hourlySchedule&#39;, &#39;dailySchedule&#39;, or &#39;weeklySchedule&#39;. When `null`, the `schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.new](#fn-snapshot_schedule_policyschedulenew) constructor.\n  - `snapshot_properties` (`list[obj]`): Properties with which the snapshots are created, such as labels. When `null`, the `snapshot_properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.snapshot_properties.new](#fn-snapshot_schedule_policysnapshot_propertiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `snapshot_schedule_policy` sub block.\n', args=[]),
    new(
      retention_policy=null,
      schedule=null,
      snapshot_properties=null
    ):: std.prune(a={
      retention_policy: retention_policy,
      schedule: schedule,
      snapshot_properties: snapshot_properties,
    }),
    retention_policy:: {
      '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.retention_policy.new` constructs a new object with attributes and blocks configured for the `retention_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_retention_days` (`number`): Maximum age of the snapshot that is allowed to be kept.\n  - `on_source_disk_delete` (`string`): Specifies the behavior to apply to scheduled snapshots when\nthe source disk is deleted. Default value: &#34;KEEP_AUTO_SNAPSHOTS&#34; Possible values: [&#34;KEEP_AUTO_SNAPSHOTS&#34;, &#34;APPLY_RETENTION_POLICY&#34;] When `null`, the `on_source_disk_delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `retention_policy` sub block.\n', args=[]),
      new(
        max_retention_days,
        on_source_disk_delete=null
      ):: std.prune(a={
        max_retention_days: max_retention_days,
        on_source_disk_delete: on_source_disk_delete,
      }),
    },
    schedule:: {
      daily_schedule:: {
        '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.schedule.daily_schedule.new` constructs a new object with attributes and blocks configured for the `daily_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `days_in_cycle` (`number`): The number of days between snapshots.\n  - `start_time` (`string`): This must be in UTC format that resolves to one of\n00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example,\nboth 13:00-5 and 08:00 are valid.\n\n**Returns**:\n  - An attribute object that represents the `daily_schedule` sub block.\n', args=[]),
        new(
          days_in_cycle,
          start_time
        ):: std.prune(a={
          days_in_cycle: days_in_cycle,
          start_time: start_time,
        }),
      },
      hourly_schedule:: {
        '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.schedule.hourly_schedule.new` constructs a new object with attributes and blocks configured for the `hourly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hours_in_cycle` (`number`): The number of hours between snapshots.\n  - `start_time` (`string`): Time within the window to start the operations.\nIt must be in an hourly format &#34;HH:MM&#34;,\nwhere HH : [00-23] and MM : [00] GMT.\neg: 21:00\n\n**Returns**:\n  - An attribute object that represents the `hourly_schedule` sub block.\n', args=[]),
        new(
          hours_in_cycle,
          start_time
        ):: std.prune(a={
          hours_in_cycle: hours_in_cycle,
          start_time: start_time,
        }),
      },
      '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.schedule.new` constructs a new object with attributes and blocks configured for the `schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `daily_schedule` (`list[obj]`): The policy will execute every nth day at the specified time. When `null`, the `daily_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.daily_schedule.new](#fn-snapshot_schedule_policysnapshot_schedule_policydaily_schedulenew) constructor.\n  - `hourly_schedule` (`list[obj]`): The policy will execute every nth hour starting at the specified time. When `null`, the `hourly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.hourly_schedule.new](#fn-snapshot_schedule_policysnapshot_schedule_policyhourly_schedulenew) constructor.\n  - `weekly_schedule` (`list[obj]`): Allows specifying a snapshot time for each day of the week. When `null`, the `weekly_schedule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.new](#fn-snapshot_schedule_policysnapshot_schedule_policyweekly_schedulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `schedule` sub block.\n', args=[]),
      new(
        daily_schedule=null,
        hourly_schedule=null,
        weekly_schedule=null
      ):: std.prune(a={
        daily_schedule: daily_schedule,
        hourly_schedule: hourly_schedule,
        weekly_schedule: weekly_schedule,
      }),
      weekly_schedule:: {
        day_of_weeks:: {
          '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks.new` constructs a new object with attributes and blocks configured for the `day_of_weeks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day` (`string`): The day of the week to create the snapshot. e.g. MONDAY Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]\n  - `start_time` (`string`): Time within the window to start the operations.\nIt must be in format &#34;HH:MM&#34;, where HH : [00-23] and MM : [00-00] GMT.\n\n**Returns**:\n  - An attribute object that represents the `day_of_weeks` sub block.\n', args=[]),
          new(
            day,
            start_time
          ):: std.prune(a={
            day: day,
            start_time: start_time,
          }),
        },
        '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.new` constructs a new object with attributes and blocks configured for the `weekly_schedule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `day_of_weeks` (`list[obj]`): May contain up to seven (one for each day of the week) snapshot times. When `null`, the `day_of_weeks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_resource_policy.snapshot_schedule_policy.schedule.weekly_schedule.day_of_weeks.new](#fn-snapshot_schedule_policysnapshot_schedule_policyscheduleday_of_weeksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `weekly_schedule` sub block.\n', args=[]),
        new(
          day_of_weeks=null
        ):: std.prune(a={
          day_of_weeks: day_of_weeks,
        }),
      },
    },
    snapshot_properties:: {
      '#new':: d.fn(help='\n`google.compute_resource_policy.snapshot_schedule_policy.snapshot_properties.new` constructs a new object with attributes and blocks configured for the `snapshot_properties`\nTerraform sub block.\n\n\n\n**Args**:\n  - `chain_name` (`string`): Creates the new snapshot in the snapshot chain labeled with the\nspecified name. The chain name must be 1-63 characters long and comply\nwith RFC1035. When `null`, the `chain_name` field will be omitted from the resulting object.\n  - `guest_flush` (`bool`): Whether to perform a &#39;guest aware&#39; snapshot. When `null`, the `guest_flush` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key-value pairs. When `null`, the `labels` field will be omitted from the resulting object.\n  - `storage_locations` (`list`): Cloud Storage bucket location to store the auto snapshot\n(regional or multi-regional) When `null`, the `storage_locations` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `snapshot_properties` sub block.\n', args=[]),
      new(
        chain_name=null,
        guest_flush=null,
        labels=null,
        storage_locations=null
      ):: std.prune(a={
        chain_name: chain_name,
        guest_flush: guest_flush,
        labels: labels,
        storage_locations: storage_locations,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_resource_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGroupPlacementPolicy':: d.fn(help='`google.list[obj].withGroupPlacementPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the group_placement_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGroupPlacementPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `group_placement_policy` field.\n', args=[]),
  withGroupPlacementPolicy(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          group_placement_policy: value,
        },
      },
    },
  },
  '#withGroupPlacementPolicyMixin':: d.fn(help='`google.list[obj].withGroupPlacementPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the group_placement_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGroupPlacementPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `group_placement_policy` field.\n', args=[]),
  withGroupPlacementPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          group_placement_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInstanceSchedulePolicy':: d.fn(help='`google.list[obj].withInstanceSchedulePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the instance_schedule_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInstanceSchedulePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `instance_schedule_policy` field.\n', args=[]),
  withInstanceSchedulePolicy(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          instance_schedule_policy: value,
        },
      },
    },
  },
  '#withInstanceSchedulePolicyMixin':: d.fn(help='`google.list[obj].withInstanceSchedulePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the instance_schedule_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInstanceSchedulePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `instance_schedule_policy` field.\n', args=[]),
  withInstanceSchedulePolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          instance_schedule_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSnapshotSchedulePolicy':: d.fn(help='`google.list[obj].withSnapshotSchedulePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the snapshot_schedule_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSnapshotSchedulePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `snapshot_schedule_policy` field.\n', args=[]),
  withSnapshotSchedulePolicy(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          snapshot_schedule_policy: value,
        },
      },
    },
  },
  '#withSnapshotSchedulePolicyMixin':: d.fn(help='`google.list[obj].withSnapshotSchedulePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the snapshot_schedule_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSnapshotSchedulePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `snapshot_schedule_policy` field.\n', args=[]),
  withSnapshotSchedulePolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          snapshot_schedule_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

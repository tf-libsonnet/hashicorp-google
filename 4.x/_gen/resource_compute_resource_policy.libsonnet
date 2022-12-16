local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  group_placement_policy:: {
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
      new(
        schedule
      ):: std.prune(a={
        schedule: schedule,
      }),
    },
    vm_stop_schedule:: {
      new(
        schedule
      ):: std.prune(a={
        schedule: schedule,
      }),
    },
  },
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
        new(
          days_in_cycle,
          start_time
        ):: std.prune(a={
          days_in_cycle: days_in_cycle,
          start_time: start_time,
        }),
      },
      hourly_schedule:: {
        new(
          hours_in_cycle,
          start_time
        ):: std.prune(a={
          hours_in_cycle: hours_in_cycle,
          start_time: start_time,
        }),
      },
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
          new(
            day,
            start_time
          ):: std.prune(a={
            day: day,
            start_time: start_time,
          }),
        },
        new(
          day_of_weeks=null
        ):: std.prune(a={
          day_of_weeks: day_of_weeks,
        }),
      },
    },
    snapshot_properties:: {
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
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withGroupPlacementPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          group_placement_policy: value,
        },
      },
    },
  },
  withGroupPlacementPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          group_placement_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstanceSchedulePolicy(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          instance_schedule_policy: value,
        },
      },
    },
  },
  withInstanceSchedulePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          instance_schedule_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withSnapshotSchedulePolicy(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          snapshot_schedule_policy: value,
        },
      },
    },
  },
  withSnapshotSchedulePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          snapshot_schedule_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_resource_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

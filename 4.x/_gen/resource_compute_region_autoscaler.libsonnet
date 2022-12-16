local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  autoscaling_policy:: {
    cpu_utilization:: {
      new(
        target,
        predictive_method=null
      ):: std.prune(a={
        predictive_method: predictive_method,
        target: target,
      }),
    },
    load_balancing_utilization:: {
      new(
        target
      ):: std.prune(a={
        target: target,
      }),
    },
    metric:: {
      new(
        name,
        target=null,
        type=null
      ):: std.prune(a={
        name: name,
        target: target,
        type: type,
      }),
    },
    new(
      max_replicas,
      min_replicas,
      cooldown_period=null,
      cpu_utilization=null,
      load_balancing_utilization=null,
      metric=null,
      mode=null,
      scale_in_control=null,
      scaling_schedules=null
    ):: std.prune(a={
      cooldown_period: cooldown_period,
      cpu_utilization: cpu_utilization,
      load_balancing_utilization: load_balancing_utilization,
      max_replicas: max_replicas,
      metric: metric,
      min_replicas: min_replicas,
      mode: mode,
      scale_in_control: scale_in_control,
      scaling_schedules: scaling_schedules,
    }),
    scale_in_control:: {
      max_scaled_in_replicas:: {
        new(
          fixed=null,
          percent=null
        ):: std.prune(a={
          fixed: fixed,
          percent: percent,
        }),
      },
      new(
        max_scaled_in_replicas=null,
        time_window_sec=null
      ):: std.prune(a={
        max_scaled_in_replicas: max_scaled_in_replicas,
        time_window_sec: time_window_sec,
      }),
    },
    scaling_schedules:: {
      new(
        duration_sec,
        min_required_replicas,
        name,
        schedule,
        description=null,
        disabled=null,
        time_zone=null
      ):: std.prune(a={
        description: description,
        disabled: disabled,
        duration_sec: duration_sec,
        min_required_replicas: min_required_replicas,
        name: name,
        schedule: schedule,
        time_zone: time_zone,
      }),
    },
  },
  new(
    resourceLabel,
    name,
    target,
    autoscaling_policy=null,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_autoscaler',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling_policy=autoscaling_policy,
      description=description,
      name=name,
      project=project,
      region=region,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    target,
    autoscaling_policy=null,
    description=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    autoscaling_policy: autoscaling_policy,
    description: description,
    name: name,
    project: project,
    region: region,
    target: target,
    timeouts: timeouts,
  }),
  timeouts:: {
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
  withAutoscalingPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          autoscaling_policy: value,
        },
      },
    },
  },
  withAutoscalingPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          autoscaling_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTarget(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  basic_algorithm:: {
    new(
      cooldown_period=null,
      yarn_config=null
    ):: std.prune(a={
      cooldown_period: cooldown_period,
      yarn_config: yarn_config,
    }),
    yarn_config:: {
      new(
        graceful_decommission_timeout,
        scale_down_factor,
        scale_up_factor,
        scale_down_min_worker_fraction=null,
        scale_up_min_worker_fraction=null
      ):: std.prune(a={
        graceful_decommission_timeout: graceful_decommission_timeout,
        scale_down_factor: scale_down_factor,
        scale_down_min_worker_fraction: scale_down_min_worker_fraction,
        scale_up_factor: scale_up_factor,
        scale_up_min_worker_fraction: scale_up_min_worker_fraction,
      }),
    },
  },
  new(
    resourceLabel,
    policy_id,
    basic_algorithm=null,
    location=null,
    project=null,
    secondary_worker_config=null,
    timeouts=null,
    worker_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_autoscaling_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      basic_algorithm=basic_algorithm,
      location=location,
      policy_id=policy_id,
      project=project,
      secondary_worker_config=secondary_worker_config,
      timeouts=timeouts,
      worker_config=worker_config
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_id,
    basic_algorithm=null,
    location=null,
    project=null,
    secondary_worker_config=null,
    timeouts=null,
    worker_config=null
  ):: std.prune(a={
    basic_algorithm: basic_algorithm,
    location: location,
    policy_id: policy_id,
    project: project,
    secondary_worker_config: secondary_worker_config,
    timeouts: timeouts,
    worker_config: worker_config,
  }),
  secondary_worker_config:: {
    new(
      max_instances=null,
      min_instances=null,
      weight=null
    ):: std.prune(a={
      max_instances: max_instances,
      min_instances: min_instances,
      weight: weight,
    }),
  },
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
  withBasicAlgorithm(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          basic_algorithm: value,
        },
      },
    },
  },
  withBasicAlgorithmMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          basic_algorithm+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyId(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSecondaryWorkerConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          secondary_worker_config: value,
        },
      },
    },
  },
  withSecondaryWorkerConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          secondary_worker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWorkerConfig(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          worker_config: value,
        },
      },
    },
  },
  withWorkerConfigMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          worker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  worker_config:: {
    new(
      max_instances,
      min_instances=null,
      weight=null
    ):: std.prune(a={
      max_instances: max_instances,
      min_instances: min_instances,
      weight: weight,
    }),
  },
}

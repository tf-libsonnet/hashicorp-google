local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  instance_filter:: {
    group_labels:: {
      new(
        labels
      ):: std.prune(a={
        labels: labels,
      }),
    },
    new(
      all=null,
      group_labels=null,
      instance_name_prefixes=null,
      instances=null,
      zones=null
    ):: std.prune(a={
      all: all,
      group_labels: group_labels,
      instance_name_prefixes: instance_name_prefixes,
      instances: instances,
      zones: zones,
    }),
  },
  new(
    resourceLabel,
    patch_deployment_id,
    description=null,
    duration=null,
    instance_filter=null,
    one_time_schedule=null,
    patch_config=null,
    project=null,
    recurring_schedule=null,
    rollout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_config_patch_deployment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      duration=duration,
      instance_filter=instance_filter,
      one_time_schedule=one_time_schedule,
      patch_config=patch_config,
      patch_deployment_id=patch_deployment_id,
      project=project,
      recurring_schedule=recurring_schedule,
      rollout=rollout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    patch_deployment_id,
    description=null,
    duration=null,
    instance_filter=null,
    one_time_schedule=null,
    patch_config=null,
    project=null,
    recurring_schedule=null,
    rollout=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    duration: duration,
    instance_filter: instance_filter,
    one_time_schedule: one_time_schedule,
    patch_config: patch_config,
    patch_deployment_id: patch_deployment_id,
    project: project,
    recurring_schedule: recurring_schedule,
    rollout: rollout,
    timeouts: timeouts,
  }),
  one_time_schedule:: {
    new(
      execute_time
    ):: std.prune(a={
      execute_time: execute_time,
    }),
  },
  patch_config:: {
    apt:: {
      new(
        excludes=null,
        exclusive_packages=null,
        type=null
      ):: std.prune(a={
        excludes: excludes,
        exclusive_packages: exclusive_packages,
        type: type,
      }),
    },
    goo:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    new(
      apt=null,
      goo=null,
      mig_instances_allowed=null,
      post_step=null,
      pre_step=null,
      reboot_config=null,
      windows_update=null,
      yum=null,
      zypper=null
    ):: std.prune(a={
      apt: apt,
      goo: goo,
      mig_instances_allowed: mig_instances_allowed,
      post_step: post_step,
      pre_step: pre_step,
      reboot_config: reboot_config,
      windows_update: windows_update,
      yum: yum,
      zypper: zypper,
    }),
    post_step:: {
      linux_exec_step_config:: {
        gcs_object:: {
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
      new(
        linux_exec_step_config=null,
        windows_exec_step_config=null
      ):: std.prune(a={
        linux_exec_step_config: linux_exec_step_config,
        windows_exec_step_config: windows_exec_step_config,
      }),
      windows_exec_step_config:: {
        gcs_object:: {
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
    },
    pre_step:: {
      linux_exec_step_config:: {
        gcs_object:: {
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
      new(
        linux_exec_step_config=null,
        windows_exec_step_config=null
      ):: std.prune(a={
        linux_exec_step_config: linux_exec_step_config,
        windows_exec_step_config: windows_exec_step_config,
      }),
      windows_exec_step_config:: {
        gcs_object:: {
          new(
            bucket,
            generation_number,
            object
          ):: std.prune(a={
            bucket: bucket,
            generation_number: generation_number,
            object: object,
          }),
        },
        new(
          allowed_success_codes=null,
          gcs_object=null,
          interpreter=null,
          local_path=null
        ):: std.prune(a={
          allowed_success_codes: allowed_success_codes,
          gcs_object: gcs_object,
          interpreter: interpreter,
          local_path: local_path,
        }),
      },
    },
    windows_update:: {
      new(
        classifications=null,
        excludes=null,
        exclusive_patches=null
      ):: std.prune(a={
        classifications: classifications,
        excludes: excludes,
        exclusive_patches: exclusive_patches,
      }),
    },
    yum:: {
      new(
        excludes=null,
        exclusive_packages=null,
        minimal=null,
        security=null
      ):: std.prune(a={
        excludes: excludes,
        exclusive_packages: exclusive_packages,
        minimal: minimal,
        security: security,
      }),
    },
    zypper:: {
      new(
        categories=null,
        excludes=null,
        exclusive_patches=null,
        severities=null,
        with_optional=null,
        with_update=null
      ):: std.prune(a={
        categories: categories,
        excludes: excludes,
        exclusive_patches: exclusive_patches,
        severities: severities,
        with_optional: with_optional,
        with_update: with_update,
      }),
    },
  },
  recurring_schedule:: {
    monthly:: {
      new(
        month_day=null,
        week_day_of_month=null
      ):: std.prune(a={
        month_day: month_day,
        week_day_of_month: week_day_of_month,
      }),
      week_day_of_month:: {
        new(
          day_of_week,
          week_ordinal
        ):: std.prune(a={
          day_of_week: day_of_week,
          week_ordinal: week_ordinal,
        }),
      },
    },
    new(
      end_time=null,
      monthly=null,
      start_time=null,
      time_of_day=null,
      time_zone=null,
      weekly=null
    ):: std.prune(a={
      end_time: end_time,
      monthly: monthly,
      start_time: start_time,
      time_of_day: time_of_day,
      time_zone: time_zone,
      weekly: weekly,
    }),
    time_of_day:: {
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
    time_zone:: {
      new(
        version=null
      ):: std.prune(a={
        version: version,
      }),
    },
    weekly:: {
      new(
        day_of_week
      ):: std.prune(a={
        day_of_week: day_of_week,
      }),
    },
  },
  rollout:: {
    disruption_budget:: {
      new(
        fixed=null,
        percentage=null
      ):: std.prune(a={
        fixed: fixed,
        percentage: percentage,
      }),
    },
    new(
      mode,
      disruption_budget=null
    ):: std.prune(a={
      disruption_budget: disruption_budget,
      mode: mode,
    }),
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
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDuration(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          duration: value,
        },
      },
    },
  },
  withInstanceFilter(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          instance_filter: value,
        },
      },
    },
  },
  withInstanceFilterMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          instance_filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withOneTimeSchedule(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          one_time_schedule: value,
        },
      },
    },
  },
  withOneTimeScheduleMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          one_time_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPatchConfig(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          patch_config: value,
        },
      },
    },
  },
  withPatchConfigMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          patch_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withPatchDeploymentId(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          patch_deployment_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRecurringSchedule(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          recurring_schedule: value,
        },
      },
    },
  },
  withRecurringScheduleMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          recurring_schedule+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRollout(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          rollout: value,
        },
      },
    },
  },
  withRolloutMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          rollout+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_os_config_patch_deployment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  labels:: {
    new(
      key,
      description=null,
      value_type=null
    ):: std.prune(a={
      description: description,
      key: key,
      value_type: value_type,
    }),
  },
  metadata:: {
    new(
      ingest_delay=null,
      sample_period=null
    ):: std.prune(a={
      ingest_delay: ingest_delay,
      sample_period: sample_period,
    }),
  },
  new(
    resourceLabel,
    description,
    display_name,
    metric_kind,
    type,
    value_type,
    labels=null,
    launch_stage=null,
    metadata=null,
    project=null,
    timeouts=null,
    unit=null,
    _meta={}
  ):: tf.withResource(
    type='google_monitoring_metric_descriptor',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      labels=labels,
      launch_stage=launch_stage,
      metadata=metadata,
      metric_kind=metric_kind,
      project=project,
      timeouts=timeouts,
      type=type,
      unit=unit,
      value_type=value_type
    ),
    _meta=_meta
  ),
  newAttrs(
    description,
    display_name,
    metric_kind,
    type,
    value_type,
    labels=null,
    launch_stage=null,
    metadata=null,
    project=null,
    timeouts=null,
    unit=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    labels: labels,
    launch_stage: launch_stage,
    metadata: metadata,
    metric_kind: metric_kind,
    project: project,
    timeouts: timeouts,
    type: type,
    unit: unit,
    value_type: value_type,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLabelsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          labels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLaunchStage(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          launch_stage: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withMetadataMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMetricKind(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          metric_kind: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
  withUnit(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          unit: value,
        },
      },
    },
  },
  withValueType(resourceLabel, value):: {
    resource+: {
      google_monitoring_metric_descriptor+: {
        [resourceLabel]+: {
          value_type: value,
        },
      },
    },
  },
}

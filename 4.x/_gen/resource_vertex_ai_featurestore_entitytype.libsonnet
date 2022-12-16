local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  monitoring_config:: {
    categorical_threshold_config:: {
      new(
        value
      ):: std.prune(a={
        value: value,
      }),
    },
    import_features_analysis:: {
      new(
        anomaly_detection_baseline=null,
        state=null
      ):: std.prune(a={
        anomaly_detection_baseline: anomaly_detection_baseline,
        state: state,
      }),
    },
    new(
      categorical_threshold_config=null,
      import_features_analysis=null,
      numerical_threshold_config=null,
      snapshot_analysis=null
    ):: std.prune(a={
      categorical_threshold_config: categorical_threshold_config,
      import_features_analysis: import_features_analysis,
      numerical_threshold_config: numerical_threshold_config,
      snapshot_analysis: snapshot_analysis,
    }),
    numerical_threshold_config:: {
      new(
        value
      ):: std.prune(a={
        value: value,
      }),
    },
    snapshot_analysis:: {
      new(
        disabled=null,
        monitoring_interval_days=null,
        staleness_days=null
      ):: std.prune(a={
        disabled: disabled,
        monitoring_interval_days: monitoring_interval_days,
        staleness_days: staleness_days,
      }),
    },
  },
  new(
    resourceLabel,
    featurestore,
    labels=null,
    monitoring_config=null,
    name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype',
    label=resourceLabel,
    attrs=self.newAttrs(
      featurestore=featurestore,
      labels=labels,
      monitoring_config=monitoring_config,
      name=name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    featurestore,
    labels=null,
    monitoring_config=null,
    name=null,
    timeouts=null
  ):: std.prune(a={
    featurestore: featurestore,
    labels: labels,
    monitoring_config: monitoring_config,
    name: name,
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
  withFeaturestore(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          featurestore: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMonitoringConfig(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          monitoring_config: value,
        },
      },
    },
  },
  withMonitoringConfigMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          monitoring_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

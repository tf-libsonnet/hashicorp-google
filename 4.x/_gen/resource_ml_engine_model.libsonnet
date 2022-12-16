local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  default_version:: {
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  new(
    resourceLabel,
    name,
    default_version=null,
    description=null,
    labels=null,
    online_prediction_console_logging=null,
    online_prediction_logging=null,
    project=null,
    regions=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_ml_engine_model',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_version=default_version,
      description=description,
      labels=labels,
      name=name,
      online_prediction_console_logging=online_prediction_console_logging,
      online_prediction_logging=online_prediction_logging,
      project=project,
      regions=regions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    default_version=null,
    description=null,
    labels=null,
    online_prediction_console_logging=null,
    online_prediction_logging=null,
    project=null,
    regions=null,
    timeouts=null
  ):: std.prune(a={
    default_version: default_version,
    description: description,
    labels: labels,
    name: name,
    online_prediction_console_logging: online_prediction_console_logging,
    online_prediction_logging: online_prediction_logging,
    project: project,
    regions: regions,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withDefaultVersion(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          default_version: value,
        },
      },
    },
  },
  withDefaultVersionMixin(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          default_version+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOnlinePredictionConsoleLogging(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          online_prediction_console_logging: value,
        },
      },
    },
  },
  withOnlinePredictionLogging(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          online_prediction_logging: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegions(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          regions: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

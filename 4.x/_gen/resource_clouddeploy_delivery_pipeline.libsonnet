local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    description=null,
    labels=null,
    project=null,
    serial_pipeline=null,
    suspended=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_clouddeploy_delivery_pipeline',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      serial_pipeline=serial_pipeline,
      suspended=suspended,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    annotations=null,
    description=null,
    labels=null,
    project=null,
    serial_pipeline=null,
    suspended=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    serial_pipeline: serial_pipeline,
    suspended: suspended,
    timeouts: timeouts,
  }),
  serial_pipeline:: {
    new(
      stages=null
    ):: std.prune(a={
      stages: stages,
    }),
    stages:: {
      new(
        profiles=null,
        target_id=null
      ):: std.prune(a={
        profiles: profiles,
        target_id: target_id,
      }),
    },
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
  withAnnotations(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSerialPipeline(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          serial_pipeline: value,
        },
      },
    },
  },
  withSerialPipelineMixin(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          serial_pipeline+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSuspended(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          suspended: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

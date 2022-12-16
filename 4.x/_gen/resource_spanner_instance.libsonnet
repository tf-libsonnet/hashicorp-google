local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    config,
    display_name,
    force_destroy=null,
    labels=null,
    name=null,
    num_nodes=null,
    processing_units=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      config=config,
      display_name=display_name,
      force_destroy=force_destroy,
      labels=labels,
      name=name,
      num_nodes=num_nodes,
      processing_units=processing_units,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    config,
    display_name,
    force_destroy=null,
    labels=null,
    name=null,
    num_nodes=null,
    processing_units=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    config: config,
    display_name: display_name,
    force_destroy: force_destroy,
    labels: labels,
    name: name,
    num_nodes: num_nodes,
    processing_units: processing_units,
    project: project,
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
  withConfig(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withForceDestroy(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNumNodes(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          num_nodes: value,
        },
      },
    },
  },
  withProcessingUnits(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          processing_units: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

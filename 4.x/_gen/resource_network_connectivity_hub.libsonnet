local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_connectivity_hub',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    name: name,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_hub+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_hub+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_hub+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_hub+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_hub+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_connectivity_hub+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

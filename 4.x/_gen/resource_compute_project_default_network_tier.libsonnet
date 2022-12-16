local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    network_tier,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_project_default_network_tier',
    label=resourceLabel,
    attrs=self.newAttrs(network_tier=network_tier, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    network_tier,
    project=null,
    timeouts=null
  ):: std.prune(a={
    network_tier: network_tier,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null
    ):: std.prune(a={
      create: create,
    }),
  },
  withNetworkTier(resourceLabel, value):: {
    resource+: {
      google_compute_project_default_network_tier+: {
        [resourceLabel]+: {
          network_tier: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_project_default_network_tier+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_project_default_network_tier+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_project_default_network_tier+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

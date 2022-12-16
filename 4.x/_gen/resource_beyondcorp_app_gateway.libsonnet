local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    display_name=null,
    host_type=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_beyondcorp_app_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      host_type=host_type,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    display_name=null,
    host_type=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    display_name: display_name,
    host_type: host_type,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withHostType(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          host_type: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

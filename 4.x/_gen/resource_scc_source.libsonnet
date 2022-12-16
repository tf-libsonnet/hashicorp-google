local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    organization,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_scc_source',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      organization=organization,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    organization,
    description=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    organization: organization,
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
      google_scc_source+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_scc_source+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withOrganization(resourceLabel, value):: {
    resource+: {
      google_scc_source+: {
        [resourceLabel]+: {
          organization: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_scc_source+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_scc_source+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

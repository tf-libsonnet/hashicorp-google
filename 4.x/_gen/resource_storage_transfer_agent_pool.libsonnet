local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bandwidth_limit:: {
    new(
      limit_mbps
    ):: std.prune(a={
      limit_mbps: limit_mbps,
    }),
  },
  new(
    resourceLabel,
    name,
    bandwidth_limit=null,
    display_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_transfer_agent_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      bandwidth_limit=bandwidth_limit,
      display_name=display_name,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    bandwidth_limit=null,
    display_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bandwidth_limit: bandwidth_limit,
    display_name: display_name,
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
  withBandwidthLimit(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          bandwidth_limit: value,
        },
      },
    },
  },
  withBandwidthLimitMixin(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          bandwidth_limit+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_transfer_agent_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

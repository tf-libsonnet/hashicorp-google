local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    service,
    migrate_traffic=null,
    project=null,
    split=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_service_split_traffic',
    label=resourceLabel,
    attrs=self.newAttrs(
      migrate_traffic=migrate_traffic,
      project=project,
      service=service,
      split=split,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    service,
    migrate_traffic=null,
    project=null,
    split=null,
    timeouts=null
  ):: std.prune(a={
    migrate_traffic: migrate_traffic,
    project: project,
    service: service,
    split: split,
    timeouts: timeouts,
  }),
  split:: {
    new(
      allocations,
      shard_by=null
    ):: std.prune(a={
      allocations: allocations,
      shard_by: shard_by,
    }),
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
  withMigrateTraffic(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          migrate_traffic: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withSplit(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          split: value,
        },
      },
    },
  },
  withSplitMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          split+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_service_split_traffic+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

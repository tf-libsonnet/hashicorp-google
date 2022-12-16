local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    app_profile_id,
    description=null,
    ignore_warnings=null,
    instance=null,
    multi_cluster_routing_cluster_ids=null,
    multi_cluster_routing_use_any=null,
    project=null,
    single_cluster_routing=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_app_profile',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_profile_id=app_profile_id,
      description=description,
      ignore_warnings=ignore_warnings,
      instance=instance,
      multi_cluster_routing_cluster_ids=multi_cluster_routing_cluster_ids,
      multi_cluster_routing_use_any=multi_cluster_routing_use_any,
      project=project,
      single_cluster_routing=single_cluster_routing,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    app_profile_id,
    description=null,
    ignore_warnings=null,
    instance=null,
    multi_cluster_routing_cluster_ids=null,
    multi_cluster_routing_use_any=null,
    project=null,
    single_cluster_routing=null,
    timeouts=null
  ):: std.prune(a={
    app_profile_id: app_profile_id,
    description: description,
    ignore_warnings: ignore_warnings,
    instance: instance,
    multi_cluster_routing_cluster_ids: multi_cluster_routing_cluster_ids,
    multi_cluster_routing_use_any: multi_cluster_routing_use_any,
    project: project,
    single_cluster_routing: single_cluster_routing,
    timeouts: timeouts,
  }),
  single_cluster_routing:: {
    new(
      cluster_id,
      allow_transactional_writes=null
    ):: std.prune(a={
      allow_transactional_writes: allow_transactional_writes,
      cluster_id: cluster_id,
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
  withAppProfileId(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          app_profile_id: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withIgnoreWarnings(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          ignore_warnings: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withMultiClusterRoutingClusterIds(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          multi_cluster_routing_cluster_ids: value,
        },
      },
    },
  },
  withMultiClusterRoutingUseAny(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          multi_cluster_routing_use_any: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSingleClusterRouting(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          single_cluster_routing: value,
        },
      },
    },
  },
  withSingleClusterRoutingMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          single_cluster_routing+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_app_profile+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

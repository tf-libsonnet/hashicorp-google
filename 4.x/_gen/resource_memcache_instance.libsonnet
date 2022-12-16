local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  maintenance_policy:: {
    new(
      description=null,
      weekly_maintenance_window=null
    ):: std.prune(a={
      description: description,
      weekly_maintenance_window: weekly_maintenance_window,
    }),
    weekly_maintenance_window:: {
      new(
        day,
        duration,
        start_time=null
      ):: std.prune(a={
        day: day,
        duration: duration,
        start_time: start_time,
      }),
      start_time:: {
        new(
          hours=null,
          minutes=null,
          nanos=null,
          seconds=null
        ):: std.prune(a={
          hours: hours,
          minutes: minutes,
          nanos: nanos,
          seconds: seconds,
        }),
      },
    },
  },
  memcache_parameters:: {
    new(
      params=null
    ):: std.prune(a={
      params: params,
    }),
  },
  new(
    resourceLabel,
    name,
    node_count,
    authorized_network=null,
    display_name=null,
    labels=null,
    maintenance_policy=null,
    memcache_parameters=null,
    memcache_version=null,
    node_config=null,
    project=null,
    region=null,
    timeouts=null,
    zones=null,
    _meta={}
  ):: tf.withResource(
    type='google_memcache_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      authorized_network=authorized_network,
      display_name=display_name,
      labels=labels,
      maintenance_policy=maintenance_policy,
      memcache_parameters=memcache_parameters,
      memcache_version=memcache_version,
      name=name,
      node_config=node_config,
      node_count=node_count,
      project=project,
      region=region,
      timeouts=timeouts,
      zones=zones
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    node_count,
    authorized_network=null,
    display_name=null,
    labels=null,
    maintenance_policy=null,
    memcache_parameters=null,
    memcache_version=null,
    node_config=null,
    project=null,
    region=null,
    timeouts=null,
    zones=null
  ):: std.prune(a={
    authorized_network: authorized_network,
    display_name: display_name,
    labels: labels,
    maintenance_policy: maintenance_policy,
    memcache_parameters: memcache_parameters,
    memcache_version: memcache_version,
    name: name,
    node_config: node_config,
    node_count: node_count,
    project: project,
    region: region,
    timeouts: timeouts,
    zones: zones,
  }),
  node_config:: {
    new(
      cpu_count,
      memory_size_mb
    ):: std.prune(a={
      cpu_count: cpu_count,
      memory_size_mb: memory_size_mb,
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
  withAuthorizedNetwork(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          authorized_network: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMaintenancePolicy(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  withMaintenancePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          maintenance_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMemcacheParameters(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          memcache_parameters: value,
        },
      },
    },
  },
  withMemcacheParametersMixin(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          memcache_parameters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMemcacheVersion(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          memcache_version: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNodeConfig(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          node_config: value,
        },
      },
    },
  },
  withNodeConfigMixin(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          node_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNodeCount(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          node_count: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZones(resourceLabel, value):: {
    resource+: {
      google_memcache_instance+: {
        [resourceLabel]+: {
          zones: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  anthos_cluster:: {
    new(
      membership=null
    ):: std.prune(a={
      membership: membership,
    }),
  },
  execution_configs:: {
    new(
      usages,
      artifact_storage=null,
      execution_timeout=null,
      service_account=null,
      worker_pool=null
    ):: std.prune(a={
      artifact_storage: artifact_storage,
      execution_timeout: execution_timeout,
      service_account: service_account,
      usages: usages,
      worker_pool: worker_pool,
    }),
  },
  gke:: {
    new(
      cluster=null,
      internal_ip=null
    ):: std.prune(a={
      cluster: cluster,
      internal_ip: internal_ip,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    anthos_cluster=null,
    description=null,
    execution_configs=null,
    gke=null,
    labels=null,
    project=null,
    require_approval=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_clouddeploy_target',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      anthos_cluster=anthos_cluster,
      description=description,
      execution_configs=execution_configs,
      gke=gke,
      labels=labels,
      location=location,
      name=name,
      project=project,
      require_approval=require_approval,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    annotations=null,
    anthos_cluster=null,
    description=null,
    execution_configs=null,
    gke=null,
    labels=null,
    project=null,
    require_approval=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    anthos_cluster: anthos_cluster,
    description: description,
    execution_configs: execution_configs,
    gke: gke,
    labels: labels,
    location: location,
    name: name,
    project: project,
    require_approval: require_approval,
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
  withAnnotations(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withAnthosCluster(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          anthos_cluster: value,
        },
      },
    },
  },
  withAnthosClusterMixin(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          anthos_cluster+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withExecutionConfigs(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          execution_configs: value,
        },
      },
    },
  },
  withExecutionConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          execution_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGke(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          gke: value,
        },
      },
    },
  },
  withGkeMixin(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          gke+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRequireApproval(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          require_approval: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_clouddeploy_target+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

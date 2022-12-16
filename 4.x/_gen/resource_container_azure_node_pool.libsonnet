local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  autoscaling:: {
    new(
      max_node_count,
      min_node_count
    ):: std.prune(a={
      max_node_count: max_node_count,
      min_node_count: min_node_count,
    }),
  },
  config:: {
    new(
      proxy_config=null,
      root_volume=null,
      ssh_config=null,
      tags=null,
      vm_size=null
    ):: std.prune(a={
      proxy_config: proxy_config,
      root_volume: root_volume,
      ssh_config: ssh_config,
      tags: tags,
      vm_size: vm_size,
    }),
    proxy_config:: {
      new(
        resource_group_id,
        secret_id
      ):: std.prune(a={
        resource_group_id: resource_group_id,
        secret_id: secret_id,
      }),
    },
    root_volume:: {
      new(
        size_gib=null
      ):: std.prune(a={
        size_gib: size_gib,
      }),
    },
    ssh_config:: {
      new(
        authorized_key
      ):: std.prune(a={
        authorized_key: authorized_key,
      }),
    },
  },
  max_pods_constraint:: {
    new(
      max_pods_per_node
    ):: std.prune(a={
      max_pods_per_node: max_pods_per_node,
    }),
  },
  new(
    resourceLabel,
    cluster,
    location,
    name,
    subnet_id,
    version,
    annotations=null,
    autoscaling=null,
    azure_availability_zone=null,
    config=null,
    max_pods_constraint=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_azure_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      autoscaling=autoscaling,
      azure_availability_zone=azure_availability_zone,
      cluster=cluster,
      config=config,
      location=location,
      max_pods_constraint=max_pods_constraint,
      name=name,
      project=project,
      subnet_id=subnet_id,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  newAttrs(
    cluster,
    location,
    name,
    subnet_id,
    version,
    annotations=null,
    autoscaling=null,
    azure_availability_zone=null,
    config=null,
    max_pods_constraint=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    autoscaling: autoscaling,
    azure_availability_zone: azure_availability_zone,
    cluster: cluster,
    config: config,
    location: location,
    max_pods_constraint: max_pods_constraint,
    name: name,
    project: project,
    subnet_id: subnet_id,
    timeouts: timeouts,
    version: version,
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
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withAutoscaling(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          autoscaling: value,
        },
      },
    },
  },
  withAutoscalingMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAzureAvailabilityZone(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          azure_availability_zone: value,
        },
      },
    },
  },
  withCluster(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withConfig(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMaxPodsConstraint(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          max_pods_constraint: value,
        },
      },
    },
  },
  withMaxPodsConstraintMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          max_pods_constraint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSubnetId(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          subnet_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_container_azure_node_pool+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}

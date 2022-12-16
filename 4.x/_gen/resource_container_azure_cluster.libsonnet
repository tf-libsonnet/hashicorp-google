local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  authorization:: {
    admin_users:: {
      new(
        username
      ):: std.prune(a={
        username: username,
      }),
    },
    new(
      admin_users=null
    ):: std.prune(a={
      admin_users: admin_users,
    }),
  },
  control_plane:: {
    database_encryption:: {
      new(
        key_id
      ):: std.prune(a={
        key_id: key_id,
      }),
    },
    main_volume:: {
      new(
        size_gib=null
      ):: std.prune(a={
        size_gib: size_gib,
      }),
    },
    new(
      subnet_id,
      version,
      database_encryption=null,
      main_volume=null,
      proxy_config=null,
      replica_placements=null,
      root_volume=null,
      ssh_config=null,
      tags=null,
      vm_size=null
    ):: std.prune(a={
      database_encryption: database_encryption,
      main_volume: main_volume,
      proxy_config: proxy_config,
      replica_placements: replica_placements,
      root_volume: root_volume,
      ssh_config: ssh_config,
      subnet_id: subnet_id,
      tags: tags,
      version: version,
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
    replica_placements:: {
      new(
        azure_availability_zone,
        subnet_id
      ):: std.prune(a={
        azure_availability_zone: azure_availability_zone,
        subnet_id: subnet_id,
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
  fleet:: {
    new(
      project=null
    ):: std.prune(a={
      project: project,
    }),
  },
  networking:: {
    new(
      pod_address_cidr_blocks,
      service_address_cidr_blocks,
      virtual_network_id
    ):: std.prune(a={
      pod_address_cidr_blocks: pod_address_cidr_blocks,
      service_address_cidr_blocks: service_address_cidr_blocks,
      virtual_network_id: virtual_network_id,
    }),
  },
  new(
    resourceLabel,
    azure_region,
    client,
    location,
    name,
    resource_group_id,
    annotations=null,
    authorization=null,
    control_plane=null,
    description=null,
    fleet=null,
    networking=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_azure_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      authorization=authorization,
      azure_region=azure_region,
      client=client,
      control_plane=control_plane,
      description=description,
      fleet=fleet,
      location=location,
      name=name,
      networking=networking,
      project=project,
      resource_group_id=resource_group_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    azure_region,
    client,
    location,
    name,
    resource_group_id,
    annotations=null,
    authorization=null,
    control_plane=null,
    description=null,
    fleet=null,
    networking=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    authorization: authorization,
    azure_region: azure_region,
    client: client,
    control_plane: control_plane,
    description: description,
    fleet: fleet,
    location: location,
    name: name,
    networking: networking,
    project: project,
    resource_group_id: resource_group_id,
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
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withAuthorization(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  withAuthorizationMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAzureRegion(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          azure_region: value,
        },
      },
    },
  },
  withClient(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          client: value,
        },
      },
    },
  },
  withControlPlane(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          control_plane: value,
        },
      },
    },
  },
  withControlPlaneMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          control_plane+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFleet(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          fleet: value,
        },
      },
    },
  },
  withFleetMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          fleet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworking(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          networking: value,
        },
      },
    },
  },
  withNetworkingMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          networking+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withResourceGroupId(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          resource_group_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_azure_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

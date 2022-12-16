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
    aws_services_authentication:: {
      new(
        role_arn,
        role_session_name=null
      ):: std.prune(a={
        role_arn: role_arn,
        role_session_name: role_session_name,
      }),
    },
    config_encryption:: {
      new(
        kms_key_arn
      ):: std.prune(a={
        kms_key_arn: kms_key_arn,
      }),
    },
    database_encryption:: {
      new(
        kms_key_arn
      ):: std.prune(a={
        kms_key_arn: kms_key_arn,
      }),
    },
    main_volume:: {
      new(
        iops=null,
        kms_key_arn=null,
        size_gib=null,
        volume_type=null
      ):: std.prune(a={
        iops: iops,
        kms_key_arn: kms_key_arn,
        size_gib: size_gib,
        volume_type: volume_type,
      }),
    },
    new(
      iam_instance_profile,
      subnet_ids,
      version,
      aws_services_authentication=null,
      config_encryption=null,
      database_encryption=null,
      instance_type=null,
      main_volume=null,
      proxy_config=null,
      root_volume=null,
      security_group_ids=null,
      ssh_config=null,
      tags=null
    ):: std.prune(a={
      aws_services_authentication: aws_services_authentication,
      config_encryption: config_encryption,
      database_encryption: database_encryption,
      iam_instance_profile: iam_instance_profile,
      instance_type: instance_type,
      main_volume: main_volume,
      proxy_config: proxy_config,
      root_volume: root_volume,
      security_group_ids: security_group_ids,
      ssh_config: ssh_config,
      subnet_ids: subnet_ids,
      tags: tags,
      version: version,
    }),
    proxy_config:: {
      new(
        secret_arn,
        secret_version
      ):: std.prune(a={
        secret_arn: secret_arn,
        secret_version: secret_version,
      }),
    },
    root_volume:: {
      new(
        iops=null,
        kms_key_arn=null,
        size_gib=null,
        volume_type=null
      ):: std.prune(a={
        iops: iops,
        kms_key_arn: kms_key_arn,
        size_gib: size_gib,
        volume_type: volume_type,
      }),
    },
    ssh_config:: {
      new(
        ec2_key_pair
      ):: std.prune(a={
        ec2_key_pair: ec2_key_pair,
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
      vpc_id
    ):: std.prune(a={
      pod_address_cidr_blocks: pod_address_cidr_blocks,
      service_address_cidr_blocks: service_address_cidr_blocks,
      vpc_id: vpc_id,
    }),
  },
  new(
    resourceLabel,
    aws_region,
    location,
    name,
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
    type='google_container_aws_cluster',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      authorization=authorization,
      aws_region=aws_region,
      control_plane=control_plane,
      description=description,
      fleet=fleet,
      location=location,
      name=name,
      networking=networking,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    aws_region,
    location,
    name,
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
    aws_region: aws_region,
    control_plane: control_plane,
    description: description,
    fleet: fleet,
    location: location,
    name: name,
    networking: networking,
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
  withAnnotations(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withAuthorization(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          authorization: value,
        },
      },
    },
  },
  withAuthorizationMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          authorization+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withAwsRegion(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          aws_region: value,
        },
      },
    },
  },
  withControlPlane(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          control_plane: value,
        },
      },
    },
  },
  withControlPlaneMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          control_plane+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFleet(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          fleet: value,
        },
      },
    },
  },
  withFleetMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          fleet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworking(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          networking: value,
        },
      },
    },
  },
  withNetworkingMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          networking+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_cluster+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

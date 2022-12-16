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
    config_encryption:: {
      new(
        kms_key_arn
      ):: std.prune(a={
        kms_key_arn: kms_key_arn,
      }),
    },
    new(
      iam_instance_profile,
      config_encryption=null,
      instance_type=null,
      labels=null,
      proxy_config=null,
      root_volume=null,
      security_group_ids=null,
      ssh_config=null,
      tags=null,
      taints=null
    ):: std.prune(a={
      config_encryption: config_encryption,
      iam_instance_profile: iam_instance_profile,
      instance_type: instance_type,
      labels: labels,
      proxy_config: proxy_config,
      root_volume: root_volume,
      security_group_ids: security_group_ids,
      ssh_config: ssh_config,
      tags: tags,
      taints: taints,
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
    taints:: {
      new(
        effect,
        key,
        value
      ):: std.prune(a={
        effect: effect,
        key: key,
        value: value,
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
    config=null,
    max_pods_constraint=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_container_aws_node_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      autoscaling=autoscaling,
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
    config=null,
    max_pods_constraint=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    autoscaling: autoscaling,
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
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withAutoscaling(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          autoscaling: value,
        },
      },
    },
  },
  withAutoscalingMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          autoscaling+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCluster(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withConfig(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  withConfigMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMaxPodsConstraint(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          max_pods_constraint: value,
        },
      },
    },
  },
  withMaxPodsConstraintMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          max_pods_constraint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSubnetId(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          subnet_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_container_aws_node_pool+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}

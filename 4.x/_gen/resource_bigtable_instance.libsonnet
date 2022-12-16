local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  cluster:: {
    autoscaling_config:: {
      new(
        cpu_target,
        max_nodes,
        min_nodes,
        storage_target=null
      ):: std.prune(a={
        cpu_target: cpu_target,
        max_nodes: max_nodes,
        min_nodes: min_nodes,
        storage_target: storage_target,
      }),
    },
    new(
      cluster_id,
      autoscaling_config=null,
      kms_key_name=null,
      num_nodes=null,
      storage_type=null,
      zone=null
    ):: std.prune(a={
      autoscaling_config: autoscaling_config,
      cluster_id: cluster_id,
      kms_key_name: kms_key_name,
      num_nodes: num_nodes,
      storage_type: storage_type,
      zone: zone,
    }),
  },
  new(
    resourceLabel,
    name,
    cluster=null,
    deletion_protection=null,
    display_name=null,
    instance_type=null,
    labels=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigtable_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster=cluster,
      deletion_protection=deletion_protection,
      display_name=display_name,
      instance_type=instance_type,
      labels=labels,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    cluster=null,
    deletion_protection=null,
    display_name=null,
    instance_type=null,
    labels=null,
    project=null
  ):: std.prune(a={
    cluster: cluster,
    deletion_protection: deletion_protection,
    display_name: display_name,
    instance_type: instance_type,
    labels: labels,
    name: name,
    project: project,
  }),
  withCluster(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  withClusterMixin(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          cluster+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDeletionProtection(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          deletion_protection: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withInstanceType(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          instance_type: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigtable_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

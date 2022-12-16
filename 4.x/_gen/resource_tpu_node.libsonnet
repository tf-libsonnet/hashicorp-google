local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    accelerator_type,
    name,
    tensorflow_version,
    cidr_block=null,
    description=null,
    labels=null,
    network=null,
    project=null,
    scheduling_config=null,
    timeouts=null,
    use_service_networking=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_tpu_node',
    label=resourceLabel,
    attrs=self.newAttrs(
      accelerator_type=accelerator_type,
      cidr_block=cidr_block,
      description=description,
      labels=labels,
      name=name,
      network=network,
      project=project,
      scheduling_config=scheduling_config,
      tensorflow_version=tensorflow_version,
      timeouts=timeouts,
      use_service_networking=use_service_networking,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    accelerator_type,
    name,
    tensorflow_version,
    cidr_block=null,
    description=null,
    labels=null,
    network=null,
    project=null,
    scheduling_config=null,
    timeouts=null,
    use_service_networking=null,
    zone=null
  ):: std.prune(a={
    accelerator_type: accelerator_type,
    cidr_block: cidr_block,
    description: description,
    labels: labels,
    name: name,
    network: network,
    project: project,
    scheduling_config: scheduling_config,
    tensorflow_version: tensorflow_version,
    timeouts: timeouts,
    use_service_networking: use_service_networking,
    zone: zone,
  }),
  scheduling_config:: {
    new(
      preemptible
    ):: std.prune(a={
      preemptible: preemptible,
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
  withAcceleratorType(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          accelerator_type: value,
        },
      },
    },
  },
  withCidrBlock(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          cidr_block: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSchedulingConfig(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          scheduling_config: value,
        },
      },
    },
  },
  withSchedulingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          scheduling_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTensorflowVersion(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          tensorflow_version: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUseServiceNetworking(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          use_service_networking: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_tpu_node+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

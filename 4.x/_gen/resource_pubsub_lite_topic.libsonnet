local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    partition_config=null,
    project=null,
    region=null,
    reservation_config=null,
    retention_config=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_lite_topic',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      partition_config=partition_config,
      project=project,
      region=region,
      reservation_config=reservation_config,
      retention_config=retention_config,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    partition_config=null,
    project=null,
    region=null,
    reservation_config=null,
    retention_config=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    name: name,
    partition_config: partition_config,
    project: project,
    region: region,
    reservation_config: reservation_config,
    retention_config: retention_config,
    timeouts: timeouts,
    zone: zone,
  }),
  partition_config:: {
    capacity:: {
      new(
        publish_mib_per_sec,
        subscribe_mib_per_sec
      ):: std.prune(a={
        publish_mib_per_sec: publish_mib_per_sec,
        subscribe_mib_per_sec: subscribe_mib_per_sec,
      }),
    },
    new(
      count,
      capacity=null
    ):: std.prune(a={
      capacity: capacity,
      count: count,
    }),
  },
  reservation_config:: {
    new(
      throughput_reservation=null
    ):: std.prune(a={
      throughput_reservation: throughput_reservation,
    }),
  },
  retention_config:: {
    new(
      per_partition_bytes,
      period=null
    ):: std.prune(a={
      per_partition_bytes: per_partition_bytes,
      period: period,
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
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPartitionConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          partition_config: value,
        },
      },
    },
  },
  withPartitionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          partition_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withReservationConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          reservation_config: value,
        },
      },
    },
  },
  withReservationConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          reservation_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRetentionConfig(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          retention_config: value,
        },
      },
    },
  },
  withRetentionConfigMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          retention_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_topic+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

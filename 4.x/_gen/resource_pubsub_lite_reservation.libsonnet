local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    throughput_capacity,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_lite_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      region=region,
      throughput_capacity=throughput_capacity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    throughput_capacity,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    project: project,
    region: region,
    throughput_capacity: throughput_capacity,
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
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withThroughputCapacity(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          throughput_capacity: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_lite_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

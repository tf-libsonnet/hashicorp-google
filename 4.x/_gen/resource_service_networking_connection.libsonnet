local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    network,
    reserved_peering_ranges,
    service,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_networking_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      network=network,
      reserved_peering_ranges=reserved_peering_ranges,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    network,
    reserved_peering_ranges,
    service,
    timeouts=null
  ):: std.prune(a={
    network: network,
    reserved_peering_ranges: reserved_peering_ranges,
    service: service,
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
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_service_networking_connection+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withReservedPeeringRanges(resourceLabel, value):: {
    resource+: {
      google_service_networking_connection+: {
        [resourceLabel]+: {
          reserved_peering_ranges: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_service_networking_connection+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_service_networking_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_service_networking_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    network,
    project,
    service,
    _meta={}
  ):: tf.withData(
    type='google_service_networking_peered_dns_domain',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      name=name,
      network=network,
      project=project,
      service=service
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    network,
    project,
    service
  ):: std.prune(a={
    name: name,
    network: network,
    project: project,
    service: service,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_service_networking_peered_dns_domain+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(dataSrcLabel, value):: {
    data+: {
      google_service_networking_peered_dns_domain+: {
        [dataSrcLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_service_networking_peered_dns_domain+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(dataSrcLabel, value):: {
    data+: {
      google_service_networking_peered_dns_domain+: {
        [dataSrcLabel]+: {
          service: value,
        },
      },
    },
  },
}

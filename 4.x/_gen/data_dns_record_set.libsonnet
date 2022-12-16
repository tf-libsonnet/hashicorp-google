local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    managed_zone,
    name,
    type,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dns_record_set',
    label=dataSrcLabel,
    attrs=self.newAttrs(
      managed_zone=managed_zone,
      name=name,
      project=project,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    managed_zone,
    name,
    type,
    project=null
  ):: std.prune(a={
    managed_zone: managed_zone,
    name: name,
    project: project,
    type: type,
  }),
  withManagedZone(dataSrcLabel, value):: {
    data+: {
      google_dns_record_set+: {
        [dataSrcLabel]+: {
          managed_zone: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_dns_record_set+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_dns_record_set+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
  withType(dataSrcLabel, value):: {
    data+: {
      google_dns_record_set+: {
        [dataSrcLabel]+: {
          type: value,
        },
      },
    },
  },
}

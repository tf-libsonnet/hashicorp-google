local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    managed_zone,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_dns_keys',
    label=dataSrcLabel,
    attrs=self.newAttrs(managed_zone=managed_zone, project=project),
    _meta=_meta
  ),
  newAttrs(
    managed_zone,
    project=null
  ):: std.prune(a={
    managed_zone: managed_zone,
    project: project,
  }),
  withManagedZone(dataSrcLabel, value):: {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          managed_zone: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_dns_keys+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}

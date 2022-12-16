local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    domain=null,
    organization=null,
    _meta={}
  ):: tf.withData(
    type='google_organization',
    label=dataSrcLabel,
    attrs=self.newAttrs(domain=domain, organization=organization),
    _meta=_meta
  ),
  newAttrs(
    domain=null,
    organization=null
  ):: std.prune(a={
    domain: domain,
    organization: organization,
  }),
  withDomain(dataSrcLabel, value):: {
    data+: {
      google_organization+: {
        [dataSrcLabel]+: {
          domain: value,
        },
      },
    },
  },
  withOrganization(dataSrcLabel, value):: {
    data+: {
      google_organization+: {
        [dataSrcLabel]+: {
          organization: value,
        },
      },
    },
  },
}

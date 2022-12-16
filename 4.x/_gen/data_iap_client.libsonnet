local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    brand,
    client_id,
    _meta={}
  ):: tf.withData(
    type='google_iap_client',
    label=dataSrcLabel,
    attrs=self.newAttrs(brand=brand, client_id=client_id),
    _meta=_meta
  ),
  newAttrs(
    brand,
    client_id
  ):: std.prune(a={
    brand: brand,
    client_id: client_id,
  }),
  withBrand(dataSrcLabel, value):: {
    data+: {
      google_iap_client+: {
        [dataSrcLabel]+: {
          brand: value,
        },
      },
    },
  },
  withClientId(dataSrcLabel, value):: {
    data+: {
      google_iap_client+: {
        [dataSrcLabel]+: {
          client_id: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    key_ring,
    name,
    _meta={}
  ):: tf.withData(
    type='google_kms_crypto_key',
    label=dataSrcLabel,
    attrs=self.newAttrs(key_ring=key_ring, name=name),
    _meta=_meta
  ),
  newAttrs(
    key_ring,
    name
  ):: std.prune(a={
    key_ring: key_ring,
    name: name,
  }),
  withKeyRing(dataSrcLabel, value):: {
    data+: {
      google_kms_crypto_key+: {
        [dataSrcLabel]+: {
          key_ring: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_kms_crypto_key+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
}

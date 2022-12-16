local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    bucket=null,
    name=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_bucket_object',
    label=dataSrcLabel,
    attrs=self.newAttrs(bucket=bucket, name=name),
    _meta=_meta
  ),
  newAttrs(
    bucket=null,
    name=null
  ):: std.prune(a={
    bucket: bucket,
    name: name,
  }),
  withBucket(dataSrcLabel, value):: {
    data+: {
      google_storage_bucket_object+: {
        [dataSrcLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_storage_bucket_object+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
}

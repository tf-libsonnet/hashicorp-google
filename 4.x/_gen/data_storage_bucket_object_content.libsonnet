local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    bucket,
    name,
    content=null,
    _meta={}
  ):: tf.withData(
    type='google_storage_bucket_object_content',
    label=dataSrcLabel,
    attrs=self.newAttrs(bucket=bucket, content=content, name=name),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    name,
    content=null
  ):: std.prune(a={
    bucket: bucket,
    content: content,
    name: name,
  }),
  withBucket(dataSrcLabel, value):: {
    data+: {
      google_storage_bucket_object_content+: {
        [dataSrcLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withContent(dataSrcLabel, value):: {
    data+: {
      google_storage_bucket_object_content+: {
        [dataSrcLabel]+: {
          content: value,
        },
      },
    },
  },
  withName(dataSrcLabel, value):: {
    data+: {
      google_storage_bucket_object_content+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
}

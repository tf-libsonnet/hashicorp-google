local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    filter,
    _meta={}
  ):: tf.withData(
    type='google_projects',
    label=dataSrcLabel,
    attrs=self.newAttrs(filter=filter),
    _meta=_meta
  ),
  newAttrs(
    filter
  ):: std.prune(a={
    filter: filter,
  }),
  withFilter(dataSrcLabel, value):: {
    data+: {
      google_projects+: {
        [dataSrcLabel]+: {
          filter: value,
        },
      },
    },
  },
}

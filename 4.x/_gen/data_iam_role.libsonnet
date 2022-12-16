local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    name,
    _meta={}
  ):: tf.withData(
    type='google_iam_role',
    label=dataSrcLabel,
    attrs=self.newAttrs(name=name),
    _meta=_meta
  ),
  newAttrs(
    name
  ):: std.prune(a={
    name: name,
  }),
  withName(dataSrcLabel, value):: {
    data+: {
      google_iam_role+: {
        [dataSrcLabel]+: {
          name: value,
        },
      },
    },
  },
}

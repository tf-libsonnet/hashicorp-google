local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    parent,
    _meta={}
  ):: tf.withData(
    type='google_cloud_identity_groups',
    label=dataSrcLabel,
    attrs=self.newAttrs(parent=parent),
    _meta=_meta
  ),
  newAttrs(
    parent
  ):: std.prune(a={
    parent: parent,
  }),
  withParent(dataSrcLabel, value):: {
    data+: {
      google_cloud_identity_groups+: {
        [dataSrcLabel]+: {
          parent: value,
        },
      },
    },
  },
}

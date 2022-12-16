local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    group,
    _meta={}
  ):: tf.withData(
    type='google_cloud_identity_group_memberships',
    label=dataSrcLabel,
    attrs=self.newAttrs(group=group),
    _meta=_meta
  ),
  newAttrs(
    group
  ):: std.prune(a={
    group: group,
  }),
  withGroup(dataSrcLabel, value):: {
    data+: {
      google_cloud_identity_group_memberships+: {
        [dataSrcLabel]+: {
          group: value,
        },
      },
    },
  },
}

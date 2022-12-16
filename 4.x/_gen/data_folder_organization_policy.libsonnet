local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    constraint,
    folder,
    _meta={}
  ):: tf.withData(
    type='google_folder_organization_policy',
    label=dataSrcLabel,
    attrs=self.newAttrs(constraint=constraint, folder=folder),
    _meta=_meta
  ),
  newAttrs(
    constraint,
    folder
  ):: std.prune(a={
    constraint: constraint,
    folder: folder,
  }),
  withConstraint(dataSrcLabel, value):: {
    data+: {
      google_folder_organization_policy+: {
        [dataSrcLabel]+: {
          constraint: value,
        },
      },
    },
  },
  withFolder(dataSrcLabel, value):: {
    data+: {
      google_folder_organization_policy+: {
        [dataSrcLabel]+: {
          folder: value,
        },
      },
    },
  },
}

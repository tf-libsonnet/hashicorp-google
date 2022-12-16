local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    folder,
    lookup_organization=null,
    _meta={}
  ):: tf.withData(
    type='google_folder',
    label=dataSrcLabel,
    attrs=self.newAttrs(folder=folder, lookup_organization=lookup_organization),
    _meta=_meta
  ),
  newAttrs(
    folder,
    lookup_organization=null
  ):: std.prune(a={
    folder: folder,
    lookup_organization: lookup_organization,
  }),
  withFolder(dataSrcLabel, value):: {
    data+: {
      google_folder+: {
        [dataSrcLabel]+: {
          folder: value,
        },
      },
    },
  },
  withLookupOrganization(dataSrcLabel, value):: {
    data+: {
      google_folder+: {
        [dataSrcLabel]+: {
          lookup_organization: value,
        },
      },
    },
  },
}

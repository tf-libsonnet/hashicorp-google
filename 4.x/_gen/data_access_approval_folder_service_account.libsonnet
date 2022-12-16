local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    folder_id,
    _meta={}
  ):: tf.withData(
    type='google_access_approval_folder_service_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(folder_id=folder_id),
    _meta=_meta
  ),
  newAttrs(
    folder_id
  ):: std.prune(a={
    folder_id: folder_id,
  }),
  withFolderId(dataSrcLabel, value):: {
    data+: {
      google_access_approval_folder_service_account+: {
        [dataSrcLabel]+: {
          folder_id: value,
        },
      },
    },
  },
}

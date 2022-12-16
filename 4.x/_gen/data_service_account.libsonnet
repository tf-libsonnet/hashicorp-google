local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    account_id,
    project=null,
    _meta={}
  ):: tf.withData(
    type='google_service_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(account_id=account_id, project=project),
    _meta=_meta
  ),
  newAttrs(
    account_id,
    project=null
  ):: std.prune(a={
    account_id: account_id,
    project: project,
  }),
  withAccountId(dataSrcLabel, value):: {
    data+: {
      google_service_account+: {
        [dataSrcLabel]+: {
          account_id: value,
        },
      },
    },
  },
  withProject(dataSrcLabel, value):: {
    data+: {
      google_service_account+: {
        [dataSrcLabel]+: {
          project: value,
        },
      },
    },
  },
}

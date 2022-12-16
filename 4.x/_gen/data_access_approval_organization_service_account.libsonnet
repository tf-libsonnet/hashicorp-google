local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    organization_id,
    _meta={}
  ):: tf.withData(
    type='google_access_approval_organization_service_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(organization_id=organization_id),
    _meta=_meta
  ),
  newAttrs(
    organization_id
  ):: std.prune(a={
    organization_id: organization_id,
  }),
  withOrganizationId(dataSrcLabel, value):: {
    data+: {
      google_access_approval_organization_service_account+: {
        [dataSrcLabel]+: {
          organization_id: value,
        },
      },
    },
  },
}

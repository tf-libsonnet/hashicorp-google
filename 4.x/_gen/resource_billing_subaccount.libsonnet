local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    master_billing_account,
    deletion_policy=null,
    _meta={}
  ):: tf.withResource(
    type='google_billing_subaccount',
    label=resourceLabel,
    attrs=self.newAttrs(deletion_policy=deletion_policy, display_name=display_name, master_billing_account=master_billing_account),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    master_billing_account,
    deletion_policy=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    display_name: display_name,
    master_billing_account: master_billing_account,
  }),
  withDeletionPolicy(resourceLabel, value):: {
    resource+: {
      google_billing_subaccount+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_billing_subaccount+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withMasterBillingAccount(resourceLabel, value):: {
    resource+: {
      google_billing_subaccount+: {
        [resourceLabel]+: {
          master_billing_account: value,
        },
      },
    },
  },
}

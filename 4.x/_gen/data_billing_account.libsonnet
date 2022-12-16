local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    dataSrcLabel,
    billing_account=null,
    display_name=null,
    open=null,
    _meta={}
  ):: tf.withData(
    type='google_billing_account',
    label=dataSrcLabel,
    attrs=self.newAttrs(billing_account=billing_account, display_name=display_name, open=open),
    _meta=_meta
  ),
  newAttrs(
    billing_account=null,
    display_name=null,
    open=null
  ):: std.prune(a={
    billing_account: billing_account,
    display_name: display_name,
    open: open,
  }),
  withBillingAccount(dataSrcLabel, value):: {
    data+: {
      google_billing_account+: {
        [dataSrcLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withDisplayName(dataSrcLabel, value):: {
    data+: {
      google_billing_account+: {
        [dataSrcLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withOpen(dataSrcLabel, value):: {
    data+: {
      google_billing_account+: {
        [dataSrcLabel]+: {
          open: value,
        },
      },
    },
  },
}

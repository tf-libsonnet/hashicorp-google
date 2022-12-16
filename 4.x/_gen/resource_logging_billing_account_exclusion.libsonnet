local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    billing_account,
    filter,
    name,
    description=null,
    disabled=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_billing_account_exclusion',
    label=resourceLabel,
    attrs=self.newAttrs(
      billing_account=billing_account,
      description=description,
      disabled=disabled,
      filter=filter,
      name=name
    ),
    _meta=_meta
  ),
  newAttrs(
    billing_account,
    filter,
    name,
    description=null,
    disabled=null
  ):: std.prune(a={
    billing_account: billing_account,
    description: description,
    disabled: disabled,
    filter: filter,
    name: name,
  }),
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_exclusion+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
}

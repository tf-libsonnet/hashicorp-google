local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bigquery_options:: {
    new(
      use_partitioned_tables
    ):: std.prune(a={
      use_partitioned_tables: use_partitioned_tables,
    }),
  },
  exclusions:: {
    new(
      filter,
      name,
      description=null,
      disabled=null
    ):: std.prune(a={
      description: description,
      disabled: disabled,
      filter: filter,
      name: name,
    }),
  },
  new(
    resourceLabel,
    billing_account,
    destination,
    name,
    bigquery_options=null,
    description=null,
    disabled=null,
    exclusions=null,
    filter=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_billing_account_sink',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_options=bigquery_options,
      billing_account=billing_account,
      description=description,
      destination=destination,
      disabled=disabled,
      exclusions=exclusions,
      filter=filter,
      name=name
    ),
    _meta=_meta
  ),
  newAttrs(
    billing_account,
    destination,
    name,
    bigquery_options=null,
    description=null,
    disabled=null,
    exclusions=null,
    filter=null
  ):: std.prune(a={
    bigquery_options: bigquery_options,
    billing_account: billing_account,
    description: description,
    destination: destination,
    disabled: disabled,
    exclusions: exclusions,
    filter: filter,
    name: name,
  }),
  withBigqueryOptions(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          bigquery_options: value,
        },
      },
    },
  },
  withBigqueryOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          bigquery_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBillingAccount(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          billing_account: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDestination(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withExclusions(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          exclusions: value,
        },
      },
    },
  },
  withExclusionsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          exclusions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_billing_account_sink+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
}

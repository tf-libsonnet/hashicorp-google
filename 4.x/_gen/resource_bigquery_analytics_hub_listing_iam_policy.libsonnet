local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    data_exchange_id,
    listing_id,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_listing_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      data_exchange_id=data_exchange_id,
      listing_id=listing_id,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    data_exchange_id,
    listing_id,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    data_exchange_id: data_exchange_id,
    listing_id: listing_id,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withDataExchangeId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_policy+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  withListingId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_policy+: {
        [resourceLabel]+: {
          listing_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

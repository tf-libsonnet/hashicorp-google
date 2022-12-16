local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    data_exchange_id,
    listing_id,
    member,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_listing_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      data_exchange_id=data_exchange_id,
      listing_id=listing_id,
      location=location,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    data_exchange_id,
    listing_id,
    member,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    data_exchange_id: data_exchange_id,
    listing_id: listing_id,
    location: location,
    member: member,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDataExchangeId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  withListingId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          listing_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

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
    members,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_analytics_hub_listing_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      data_exchange_id=data_exchange_id,
      listing_id=listing_id,
      location=location,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    data_exchange_id,
    listing_id,
    members,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    data_exchange_id: data_exchange_id,
    listing_id: listing_id,
    location: location,
    members: members,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDataExchangeId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          data_exchange_id: value,
        },
      },
    },
  },
  withListingId(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          listing_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_bigquery_analytics_hub_listing_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

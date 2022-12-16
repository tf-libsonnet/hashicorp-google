local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    connection_id,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_connection_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      connection_id=connection_id,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    connection_id,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    connection_id: connection_id,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withConnectionId(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_policy+: {
        [resourceLabel]+: {
          connection_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

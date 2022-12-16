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
    connection_id,
    member,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_connection_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      connection_id=connection_id,
      location=location,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    connection_id,
    member,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    connection_id: connection_id,
    location: location,
    member: member,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConnectionId(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          connection_id: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_bigquery_connection_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

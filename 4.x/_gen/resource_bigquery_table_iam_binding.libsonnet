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
    dataset_id,
    members,
    role,
    table_id,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_table_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      dataset_id=dataset_id,
      members=members,
      project=project,
      role=role,
      table_id=table_id
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset_id,
    members,
    role,
    table_id,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    dataset_id: dataset_id,
    members: members,
    project: project,
    role: role,
    table_id: table_id,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTableId(resourceLabel, value):: {
    resource+: {
      google_bigquery_table_iam_binding+: {
        [resourceLabel]+: {
          table_id: value,
        },
      },
    },
  },
}
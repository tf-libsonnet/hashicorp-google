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
    database,
    instance,
    member,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_database_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      database=database,
      instance=instance,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    database,
    instance,
    member,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    database: database,
    instance: instance,
    member: member,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatabase(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_spanner_database_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

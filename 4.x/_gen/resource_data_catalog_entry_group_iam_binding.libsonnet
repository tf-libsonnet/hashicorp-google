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
    entry_group,
    members,
    role,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_entry_group_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      entry_group=entry_group,
      members=members,
      project=project,
      region=region,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    entry_group,
    members,
    role,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    condition: condition,
    entry_group: entry_group,
    members: members,
    project: project,
    region: region,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEntryGroup(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          entry_group: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_data_catalog_entry_group_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

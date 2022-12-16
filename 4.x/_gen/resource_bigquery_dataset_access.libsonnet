local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  dataset:: {
    dataset:: {
      new(
        dataset_id,
        project_id
      ):: std.prune(a={
        dataset_id: dataset_id,
        project_id: project_id,
      }),
    },
    new(
      target_types,
      dataset=null
    ):: std.prune(a={
      dataset: dataset,
      target_types: target_types,
    }),
  },
  new(
    resourceLabel,
    dataset_id,
    dataset=null,
    domain=null,
    group_by_email=null,
    iam_member=null,
    project=null,
    role=null,
    routine=null,
    special_group=null,
    timeouts=null,
    user_by_email=null,
    view=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_dataset_access',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      dataset_id=dataset_id,
      domain=domain,
      group_by_email=group_by_email,
      iam_member=iam_member,
      project=project,
      role=role,
      routine=routine,
      special_group=special_group,
      timeouts=timeouts,
      user_by_email=user_by_email,
      view=view
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset_id,
    dataset=null,
    domain=null,
    group_by_email=null,
    iam_member=null,
    project=null,
    role=null,
    routine=null,
    special_group=null,
    timeouts=null,
    user_by_email=null,
    view=null
  ):: std.prune(a={
    dataset: dataset,
    dataset_id: dataset_id,
    domain: domain,
    group_by_email: group_by_email,
    iam_member: iam_member,
    project: project,
    role: role,
    routine: routine,
    special_group: special_group,
    timeouts: timeouts,
    user_by_email: user_by_email,
    view: view,
  }),
  routine:: {
    new(
      dataset_id,
      project_id,
      routine_id
    ):: std.prune(a={
      dataset_id: dataset_id,
      project_id: project_id,
      routine_id: routine_id,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  view:: {
    new(
      dataset_id,
      project_id,
      table_id
    ):: std.prune(a={
      dataset_id: dataset_id,
      project_id: project_id,
      table_id: table_id,
    }),
  },
  withDataset(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  withDatasetMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          dataset+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDomain(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          domain: value,
        },
      },
    },
  },
  withGroupByEmail(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          group_by_email: value,
        },
      },
    },
  },
  withIamMember(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          iam_member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withRoutine(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          routine: value,
        },
      },
    },
  },
  withRoutineMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          routine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSpecialGroup(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          special_group: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUserByEmail(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          user_by_email: value,
        },
      },
    },
  },
  withView(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          view: value,
        },
      },
    },
  },
  withViewMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_dataset_access+: {
        [resourceLabel]+: {
          view+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

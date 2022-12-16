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
    job_id,
    members,
    role,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_job_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      job_id=job_id,
      members=members,
      project=project,
      region=region,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    job_id,
    members,
    role,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    condition: condition,
    job_id: job_id,
    members: members,
    project: project,
    region: region,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withJobId(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          job_id: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_dataproc_job_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

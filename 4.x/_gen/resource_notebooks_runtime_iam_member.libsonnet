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
    member,
    role,
    runtime_name,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_runtime_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      location=location,
      member=member,
      project=project,
      role=role,
      runtime_name=runtime_name
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    runtime_name,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    location: location,
    member: member,
    project: project,
    role: role,
    runtime_name: runtime_name,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withRuntimeName(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime_iam_member+: {
        [resourceLabel]+: {
          runtime_name: value,
        },
      },
    },
  },
}

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
    cloud_function,
    members,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions2_function_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      cloud_function=cloud_function,
      condition=condition,
      location=location,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    cloud_function,
    members,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    cloud_function: cloud_function,
    condition: condition,
    location: location,
    members: members,
    project: project,
    role: role,
  }),
  withCloudFunction(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions2_function_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

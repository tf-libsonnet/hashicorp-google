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
    member,
    role,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudfunctions_function_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      cloud_function=cloud_function,
      condition=condition,
      member=member,
      project=project,
      region=region,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    cloud_function,
    member,
    role,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    cloud_function: cloud_function,
    condition: condition,
    member: member,
    project: project,
    region: region,
    role: role,
  }),
  withCloudFunction(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          cloud_function: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_cloudfunctions_function_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

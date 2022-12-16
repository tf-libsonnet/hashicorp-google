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
    members,
    policy_id,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_autoscaling_policy_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      location=location,
      members=members,
      policy_id=policy_id,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    policy_id,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    location: location,
    members: members,
    policy_id: policy_id,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withPolicyId(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_dataproc_autoscaling_policy_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

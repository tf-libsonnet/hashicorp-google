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
    instance_name,
    member,
    role,
    condition=null,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      instance_name=instance_name,
      member=member,
      project=project,
      role=role,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    instance_name,
    member,
    role,
    condition=null,
    project=null,
    zone=null
  ):: std.prune(a={
    condition: condition,
    instance_name: instance_name,
    member: member,
    project: project,
    role: role,
    zone: zone,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withInstanceName(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          instance_name: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_instance_iam_member+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

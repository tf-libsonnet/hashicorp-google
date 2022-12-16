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
    name,
    role,
    condition=null,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      name=name,
      project=project,
      role=role,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    name,
    role,
    condition=null,
    project=null,
    zone=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    name: name,
    project: project,
    role: role,
    zone: zone,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_member+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

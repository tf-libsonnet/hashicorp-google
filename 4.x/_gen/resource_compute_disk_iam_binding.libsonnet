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
    name,
    role,
    condition=null,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      name=name,
      project=project,
      role=role,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    name,
    role,
    condition=null,
    project=null,
    zone=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    name: name,
    project: project,
    role: role,
    zone: zone,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_disk_iam_binding+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

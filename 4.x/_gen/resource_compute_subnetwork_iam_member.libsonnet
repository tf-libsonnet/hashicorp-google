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
    subnetwork,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_subnetwork_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      project=project,
      region=region,
      role=role,
      subnetwork=subnetwork
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    subnetwork,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    project: project,
    region: region,
    role: role,
    subnetwork: subnetwork,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withSubnetwork(resourceLabel, value):: {
    resource+: {
      google_compute_subnetwork_iam_member+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
}

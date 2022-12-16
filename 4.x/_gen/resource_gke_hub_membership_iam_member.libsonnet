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
    membership_id,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      membership_id=membership_id,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    membership_id,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    membership_id: membership_id,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withMembershipId(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_member+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

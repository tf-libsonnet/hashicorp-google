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
    membership_id,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_gke_hub_membership_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      members=members,
      membership_id=membership_id,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    membership_id,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    members: members,
    membership_id: membership_id,
    project: project,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withMembershipId(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_binding+: {
        [resourceLabel]+: {
          membership_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_gke_hub_membership_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

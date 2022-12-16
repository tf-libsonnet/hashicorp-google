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
    key_ring_id,
    member,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_key_ring_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      key_ring_id=key_ring_id,
      member=member,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    key_ring_id,
    member,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    key_ring_id: key_ring_id,
    member: member,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withKeyRingId(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_member+: {
        [resourceLabel]+: {
          key_ring_id: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

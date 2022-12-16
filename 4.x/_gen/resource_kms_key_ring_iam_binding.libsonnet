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
    members,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_key_ring_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      key_ring_id=key_ring_id,
      members=members,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    key_ring_id,
    members,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    key_ring_id: key_ring_id,
    members: members,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withKeyRingId(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_binding+: {
        [resourceLabel]+: {
          key_ring_id: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

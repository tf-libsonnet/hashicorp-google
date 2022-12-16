local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    key_ring_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_kms_key_ring_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(key_ring_id=key_ring_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    key_ring_id,
    policy_data
  ):: std.prune(a={
    key_ring_id: key_ring_id,
    policy_data: policy_data,
  }),
  withKeyRingId(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_policy+: {
        [resourceLabel]+: {
          key_ring_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}

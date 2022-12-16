local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    crypto_key_id,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_kms_crypto_key_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(crypto_key_id=crypto_key_id, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    crypto_key_id,
    policy_data
  ):: std.prune(a={
    crypto_key_id: crypto_key_id,
    policy_data: policy_data,
  }),
  withCryptoKeyId(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_policy+: {
        [resourceLabel]+: {
          crypto_key_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}

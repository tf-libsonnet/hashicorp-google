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
    crypto_key_id,
    member,
    role,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_crypto_key_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      crypto_key_id=crypto_key_id,
      member=member,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    crypto_key_id,
    member,
    role,
    condition=null
  ):: std.prune(a={
    condition: condition,
    crypto_key_id: crypto_key_id,
    member: member,
    role: role,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCryptoKeyId(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_member+: {
        [resourceLabel]+: {
          crypto_key_id: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

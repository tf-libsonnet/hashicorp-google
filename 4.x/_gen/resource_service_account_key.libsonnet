local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    service_account_id,
    keepers=null,
    key_algorithm=null,
    private_key_type=null,
    public_key_data=null,
    public_key_type=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_account_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      keepers=keepers,
      key_algorithm=key_algorithm,
      private_key_type=private_key_type,
      public_key_data=public_key_data,
      public_key_type=public_key_type,
      service_account_id=service_account_id
    ),
    _meta=_meta
  ),
  newAttrs(
    service_account_id,
    keepers=null,
    key_algorithm=null,
    private_key_type=null,
    public_key_data=null,
    public_key_type=null
  ):: std.prune(a={
    keepers: keepers,
    key_algorithm: key_algorithm,
    private_key_type: private_key_type,
    public_key_data: public_key_data,
    public_key_type: public_key_type,
    service_account_id: service_account_id,
  }),
  withKeepers(resourceLabel, value):: {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          keepers: value,
        },
      },
    },
  },
  withKeyAlgorithm(resourceLabel, value):: {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          key_algorithm: value,
        },
      },
    },
  },
  withPrivateKeyType(resourceLabel, value):: {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          private_key_type: value,
        },
      },
    },
  },
  withPublicKeyData(resourceLabel, value):: {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          public_key_data: value,
        },
      },
    },
  },
  withPublicKeyType(resourceLabel, value):: {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          public_key_type: value,
        },
      },
    },
  },
  withServiceAccountId(resourceLabel, value):: {
    resource+: {
      google_service_account_key+: {
        [resourceLabel]+: {
          service_account_id: value,
        },
      },
    },
  },
}

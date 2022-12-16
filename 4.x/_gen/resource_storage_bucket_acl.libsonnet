local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    default_acl=null,
    predefined_acl=null,
    role_entity=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_acl',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      default_acl=default_acl,
      predefined_acl=predefined_acl,
      role_entity=role_entity
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    default_acl=null,
    predefined_acl=null,
    role_entity=null
  ):: std.prune(a={
    bucket: bucket,
    default_acl: default_acl,
    predefined_acl: predefined_acl,
    role_entity: role_entity,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withDefaultAcl(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          default_acl: value,
        },
      },
    },
  },
  withPredefinedAcl(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          predefined_acl: value,
        },
      },
    },
  },
  withRoleEntity(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_acl+: {
        [resourceLabel]+: {
          role_entity: value,
        },
      },
    },
  },
}

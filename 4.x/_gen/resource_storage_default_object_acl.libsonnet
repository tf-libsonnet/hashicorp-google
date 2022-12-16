local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    role_entity=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_default_object_acl',
    label=resourceLabel,
    attrs=self.newAttrs(bucket=bucket, role_entity=role_entity),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    role_entity=null
  ):: std.prune(a={
    bucket: bucket,
    role_entity: role_entity,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_default_object_acl+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withRoleEntity(resourceLabel, value):: {
    resource+: {
      google_storage_default_object_acl+: {
        [resourceLabel]+: {
          role_entity: value,
        },
      },
    },
  },
}

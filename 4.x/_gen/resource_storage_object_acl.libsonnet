local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    object,
    predefined_acl=null,
    role_entity=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_object_acl',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      object=object,
      predefined_acl=predefined_acl,
      role_entity=role_entity
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    object,
    predefined_acl=null,
    role_entity=null
  ):: std.prune(a={
    bucket: bucket,
    object: object,
    predefined_acl: predefined_acl,
    role_entity: role_entity,
  }),
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_object_acl+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withObject(resourceLabel, value):: {
    resource+: {
      google_storage_object_acl+: {
        [resourceLabel]+: {
          object: value,
        },
      },
    },
  },
  withPredefinedAcl(resourceLabel, value):: {
    resource+: {
      google_storage_object_acl+: {
        [resourceLabel]+: {
          predefined_acl: value,
        },
      },
    },
  },
  withRoleEntity(resourceLabel, value):: {
    resource+: {
      google_storage_object_acl+: {
        [resourceLabel]+: {
          role_entity: value,
        },
      },
    },
  },
}

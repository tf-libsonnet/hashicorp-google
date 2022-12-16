local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    entity,
    role=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_storage_bucket_access_control',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      entity=entity,
      role=role,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    entity,
    role=null,
    timeouts=null
  ):: std.prune(a={
    bucket: bucket,
    entity: entity,
    role: role,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  withBucket(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withEntity(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          entity: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_storage_bucket_access_control+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

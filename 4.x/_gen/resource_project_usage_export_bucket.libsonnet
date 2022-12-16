local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket_name,
    prefix=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_usage_export_bucket',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket_name=bucket_name,
      prefix=prefix,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket_name,
    prefix=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    bucket_name: bucket_name,
    prefix: prefix,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withBucketName(resourceLabel, value):: {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          bucket_name: value,
        },
      },
    },
  },
  withPrefix(resourceLabel, value):: {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          prefix: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_usage_export_bucket+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

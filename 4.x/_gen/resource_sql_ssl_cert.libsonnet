local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    common_name,
    instance,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sql_ssl_cert',
    label=resourceLabel,
    attrs=self.newAttrs(
      common_name=common_name,
      instance=instance,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    common_name,
    instance,
    project=null,
    timeouts=null
  ):: std.prune(a={
    common_name: common_name,
    instance: instance,
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
  withCommonName(resourceLabel, value):: {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          common_name: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_sql_ssl_cert+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

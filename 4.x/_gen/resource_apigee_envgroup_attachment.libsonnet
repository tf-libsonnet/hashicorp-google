local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    envgroup_id,
    environment,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_envgroup_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(envgroup_id=envgroup_id, environment=environment, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    envgroup_id,
    environment,
    timeouts=null
  ):: std.prune(a={
    envgroup_id: envgroup_id,
    environment: environment,
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
  withEnvgroupId(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          envgroup_id: value,
        },
      },
    },
  },
  withEnvironment(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    environment,
    instance_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_instance_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(environment=environment, instance_id=instance_id, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    environment,
    instance_id,
    timeouts=null
  ):: std.prune(a={
    environment: environment,
    instance_id: instance_id,
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
  withEnvironment(resourceLabel, value):: {
    resource+: {
      google_apigee_instance_attachment+: {
        [resourceLabel]+: {
          environment: value,
        },
      },
    },
  },
  withInstanceId(resourceLabel, value):: {
    resource+: {
      google_apigee_instance_attachment+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_instance_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_instance_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

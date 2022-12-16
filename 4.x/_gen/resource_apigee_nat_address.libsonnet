local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance_id,
    name,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_nat_address',
    label=resourceLabel,
    attrs=self.newAttrs(instance_id=instance_id, name=name, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    instance_id,
    name,
    timeouts=null
  ):: std.prune(a={
    instance_id: instance_id,
    name: name,
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
  withInstanceId(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          instance_id: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_nat_address+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

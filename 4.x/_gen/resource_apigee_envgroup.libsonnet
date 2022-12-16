local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    org_id,
    hostnames=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_apigee_envgroup',
    label=resourceLabel,
    attrs=self.newAttrs(
      hostnames=hostnames,
      name=name,
      org_id=org_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    org_id,
    hostnames=null,
    timeouts=null
  ):: std.prune(a={
    hostnames: hostnames,
    name: name,
    org_id: org_id,
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
  withHostnames(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          hostnames: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOrgId(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          org_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_apigee_envgroup+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

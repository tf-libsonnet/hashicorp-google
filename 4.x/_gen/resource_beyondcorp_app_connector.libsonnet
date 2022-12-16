local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    display_name=null,
    labels=null,
    principal_info=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_beyondcorp_app_connector',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      labels=labels,
      name=name,
      principal_info=principal_info,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    display_name=null,
    labels=null,
    principal_info=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    labels: labels,
    name: name,
    principal_info: principal_info,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  principal_info:: {
    new(
      service_account=null
    ):: std.prune(a={
      service_account: service_account,
    }),
    service_account:: {
      new(
        email
      ):: std.prune(a={
        email: email,
      }),
    },
  },
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPrincipalInfo(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          principal_info: value,
        },
      },
    },
  },
  withPrincipalInfoMixin(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          principal_info+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_beyondcorp_app_connector+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  dispatch_rules:: {
    new(
      path,
      service,
      domain=null
    ):: std.prune(a={
      domain: domain,
      path: path,
      service: service,
    }),
  },
  new(
    resourceLabel,
    dispatch_rules=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_application_url_dispatch_rules',
    label=resourceLabel,
    attrs=self.newAttrs(dispatch_rules=dispatch_rules, project=project, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    dispatch_rules=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    dispatch_rules: dispatch_rules,
    project: project,
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
  withDispatchRules(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          dispatch_rules: value,
        },
      },
    },
  },
  withDispatchRulesMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          dispatch_rules+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application_url_dispatch_rules+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    domain_name,
    override_strategy=null,
    project=null,
    ssl_settings=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_domain_mapping',
    label=resourceLabel,
    attrs=self.newAttrs(
      domain_name=domain_name,
      override_strategy=override_strategy,
      project=project,
      ssl_settings=ssl_settings,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    domain_name,
    override_strategy=null,
    project=null,
    ssl_settings=null,
    timeouts=null
  ):: std.prune(a={
    domain_name: domain_name,
    override_strategy: override_strategy,
    project: project,
    ssl_settings: ssl_settings,
    timeouts: timeouts,
  }),
  ssl_settings:: {
    new(
      ssl_management_type,
      certificate_id=null
    ):: std.prune(a={
      certificate_id: certificate_id,
      ssl_management_type: ssl_management_type,
    }),
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
  withDomainName(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          domain_name: value,
        },
      },
    },
  },
  withOverrideStrategy(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          override_strategy: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSslSettings(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          ssl_settings: value,
        },
      },
    },
  },
  withSslSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          ssl_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_domain_mapping+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

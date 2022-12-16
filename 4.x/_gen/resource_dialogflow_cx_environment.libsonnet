local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    description=null,
    parent=null,
    timeouts=null,
    version_configs=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_environment',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts,
      version_configs=version_configs
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    description=null,
    parent=null,
    timeouts=null,
    version_configs=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    parent: parent,
    timeouts: timeouts,
    version_configs: version_configs,
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
  version_configs:: {
    new(
      version
    ):: std.prune(a={
      version: version,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersionConfigs(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          version_configs: value,
        },
      },
    },
  },
  withVersionConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_environment+: {
        [resourceLabel]+: {
          version_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

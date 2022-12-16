local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    action,
    source_range,
    description=null,
    priority=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_firewall_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      priority=priority,
      project=project,
      source_range=source_range,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    action,
    source_range,
    description=null,
    priority=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    priority: priority,
    project: project,
    source_range: source_range,
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
  withAction(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSourceRange(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          source_range: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_firewall_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

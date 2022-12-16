local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    project=null,
    pubsub_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_sourcerepo_repository',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      pubsub_configs=pubsub_configs,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    project=null,
    pubsub_configs=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    project: project,
    pubsub_configs: pubsub_configs,
    timeouts: timeouts,
  }),
  pubsub_configs:: {
    new(
      message_format,
      topic,
      service_account_email=null
    ):: std.prune(a={
      message_format: message_format,
      service_account_email: service_account_email,
      topic: topic,
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
  withName(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPubsubConfigs(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          pubsub_configs: value,
        },
      },
    },
  },
  withPubsubConfigsMixin(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          pubsub_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_sourcerepo_repository+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

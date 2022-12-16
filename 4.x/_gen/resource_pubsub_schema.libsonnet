local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    definition=null,
    project=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_schema',
    label=resourceLabel,
    attrs=self.newAttrs(
      definition=definition,
      name=name,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    definition=null,
    project=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    definition: definition,
    name: name,
    project: project,
    timeouts: timeouts,
    type: type,
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
  withDefinition(resourceLabel, value):: {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          definition: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_pubsub_schema+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

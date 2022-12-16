local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    kind,
    ancestor=null,
    project=null,
    properties=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_datastore_index',
    label=resourceLabel,
    attrs=self.newAttrs(
      ancestor=ancestor,
      kind=kind,
      project=project,
      properties=properties,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    kind,
    ancestor=null,
    project=null,
    properties=null,
    timeouts=null
  ):: std.prune(a={
    ancestor: ancestor,
    kind: kind,
    project: project,
    properties: properties,
    timeouts: timeouts,
  }),
  properties:: {
    new(
      direction,
      name
    ):: std.prune(a={
      direction: direction,
      name: name,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAncestor(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          ancestor: value,
        },
      },
    },
  },
  withKind(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          kind: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withProperties(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          properties: value,
        },
      },
    },
  },
  withPropertiesMixin(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          properties+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_datastore_index+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

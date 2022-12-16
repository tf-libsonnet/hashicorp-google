local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  fields:: {
    new(
      array_config=null,
      field_path=null,
      order=null
    ):: std.prune(a={
      array_config: array_config,
      field_path: field_path,
      order: order,
    }),
  },
  new(
    resourceLabel,
    collection,
    database=null,
    fields=null,
    project=null,
    query_scope=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_index',
    label=resourceLabel,
    attrs=self.newAttrs(
      collection=collection,
      database=database,
      fields=fields,
      project=project,
      query_scope=query_scope,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    collection,
    database=null,
    fields=null,
    project=null,
    query_scope=null,
    timeouts=null
  ):: std.prune(a={
    collection: collection,
    database: database,
    fields: fields,
    project: project,
    query_scope: query_scope,
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
  withCollection(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          collection: value,
        },
      },
    },
  },
  withDatabase(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  withFields(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  withFieldsMixin(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          fields+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withQueryScope(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          query_scope: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firestore_index+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

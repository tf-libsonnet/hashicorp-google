local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    collection,
    document_id,
    fields,
    database=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firestore_document',
    label=resourceLabel,
    attrs=self.newAttrs(
      collection=collection,
      database=database,
      document_id=document_id,
      fields=fields,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    collection,
    document_id,
    fields,
    database=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    collection: collection,
    database: database,
    document_id: document_id,
    fields: fields,
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
  withCollection(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          collection: value,
        },
      },
    },
  },
  withDatabase(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          database: value,
        },
      },
    },
  },
  withDocumentId(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          document_id: value,
        },
      },
    },
  },
  withFields(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          fields: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firestore_document+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

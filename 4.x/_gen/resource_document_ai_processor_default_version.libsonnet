local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    processor,
    version,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_document_ai_processor_default_version',
    label=resourceLabel,
    attrs=self.newAttrs(processor=processor, timeouts=timeouts, version=version),
    _meta=_meta
  ),
  newAttrs(
    processor,
    version,
    timeouts=null
  ):: std.prune(a={
    processor: processor,
    timeouts: timeouts,
    version: version,
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
  withProcessor(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor_default_version+: {
        [resourceLabel]+: {
          processor: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor_default_version+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor_default_version+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor_default_version+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}

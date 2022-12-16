local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    location,
    type,
    kms_key_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_document_ai_processor',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      kms_key_name=kms_key_name,
      location=location,
      project=project,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    location,
    type,
    kms_key_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    kms_key_name: kms_key_name,
    location: location,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withKmsKeyName(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          kms_key_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withType(resourceLabel, value):: {
    resource+: {
      google_document_ai_processor+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

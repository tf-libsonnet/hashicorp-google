local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  encryption_spec:: {
    new(
      kms_key_name=null
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  new(
    resourceLabel,
    display_name,
    metadata_schema_uri,
    encryption_spec=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_dataset',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      encryption_spec=encryption_spec,
      labels=labels,
      metadata_schema_uri=metadata_schema_uri,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    metadata_schema_uri,
    encryption_spec=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    encryption_spec: encryption_spec,
    labels: labels,
    metadata_schema_uri: metadata_schema_uri,
    project: project,
    region: region,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEncryptionSpec(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  withEncryptionSpecMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMetadataSchemaUri(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          metadata_schema_uri: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_dataset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

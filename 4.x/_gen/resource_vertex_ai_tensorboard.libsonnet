local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  encryption_spec:: {
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  new(
    resourceLabel,
    display_name,
    description=null,
    encryption_spec=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_tensorboard',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      encryption_spec=encryption_spec,
      labels=labels,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    description=null,
    encryption_spec=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    encryption_spec: encryption_spec,
    labels: labels,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEncryptionSpec(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  withEncryptionSpecMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

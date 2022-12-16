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
    location,
    name,
    description=null,
    encryption_spec=null,
    labels=null,
    network=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      encryption_spec=encryption_spec,
      labels=labels,
      location=location,
      name=name,
      network=network,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    location,
    name,
    description=null,
    encryption_spec=null,
    labels=null,
    network=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    encryption_spec: encryption_spec,
    labels: labels,
    location: location,
    name: name,
    network: network,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEncryptionSpec(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  withEncryptionSpecMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

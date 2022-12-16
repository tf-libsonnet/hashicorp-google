local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    description=null,
    labels=null,
    project=null,
    public_key=null,
    timeouts=null,
    validation_shared_keys=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_edge_cache_keyset',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      name=name,
      project=project,
      public_key=public_key,
      timeouts=timeouts,
      validation_shared_keys=validation_shared_keys
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    labels=null,
    project=null,
    public_key=null,
    timeouts=null,
    validation_shared_keys=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    name: name,
    project: project,
    public_key: public_key,
    timeouts: timeouts,
    validation_shared_keys: validation_shared_keys,
  }),
  public_key:: {
    new(
      managed=null,
      value=null
    ):: std.prune(a={
      managed: managed,
      value: value,
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
  validation_shared_keys:: {
    new(
      secret_version
    ):: std.prune(a={
      secret_version: secret_version,
    }),
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withPublicKey(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          public_key: value,
        },
      },
    },
  },
  withPublicKeyMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          public_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withValidationSharedKeys(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          validation_shared_keys: value,
        },
      },
    },
  },
  withValidationSharedKeysMixin(resourceLabel, value):: {
    resource+: {
      google_network_services_edge_cache_keyset+: {
        [resourceLabel]+: {
          validation_shared_keys+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

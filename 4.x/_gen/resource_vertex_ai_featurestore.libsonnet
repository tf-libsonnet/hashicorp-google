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
    encryption_spec=null,
    force_destroy=null,
    labels=null,
    name=null,
    online_serving_config=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore',
    label=resourceLabel,
    attrs=self.newAttrs(
      encryption_spec=encryption_spec,
      force_destroy=force_destroy,
      labels=labels,
      name=name,
      online_serving_config=online_serving_config,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    encryption_spec=null,
    force_destroy=null,
    labels=null,
    name=null,
    online_serving_config=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    encryption_spec: encryption_spec,
    force_destroy: force_destroy,
    labels: labels,
    name: name,
    online_serving_config: online_serving_config,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  online_serving_config:: {
    new(
      fixed_node_count
    ):: std.prune(a={
      fixed_node_count: fixed_node_count,
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
  withEncryptionSpec(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  withEncryptionSpecMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withForceDestroy(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withOnlineServingConfig(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          online_serving_config: value,
        },
      },
    },
  },
  withOnlineServingConfigMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          online_serving_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

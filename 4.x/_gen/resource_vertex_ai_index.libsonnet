local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  metadata:: {
    config:: {
      algorithm_config:: {
        brute_force_config:: {
          new(

          ):: std.prune(a={}),
        },
        new(
          brute_force_config=null,
          tree_ah_config=null
        ):: std.prune(a={
          brute_force_config: brute_force_config,
          tree_ah_config: tree_ah_config,
        }),
        tree_ah_config:: {
          new(
            leaf_node_embedding_count=null,
            leaf_nodes_to_search_percent=null
          ):: std.prune(a={
            leaf_node_embedding_count: leaf_node_embedding_count,
            leaf_nodes_to_search_percent: leaf_nodes_to_search_percent,
          }),
        },
      },
      new(
        dimensions,
        algorithm_config=null,
        approximate_neighbors_count=null,
        distance_measure_type=null,
        feature_norm_type=null
      ):: std.prune(a={
        algorithm_config: algorithm_config,
        approximate_neighbors_count: approximate_neighbors_count,
        dimensions: dimensions,
        distance_measure_type: distance_measure_type,
        feature_norm_type: feature_norm_type,
      }),
    },
    new(
      config=null,
      contents_delta_uri=null,
      is_complete_overwrite=null
    ):: std.prune(a={
      config: config,
      contents_delta_uri: contents_delta_uri,
      is_complete_overwrite: is_complete_overwrite,
    }),
  },
  new(
    resourceLabel,
    display_name,
    description=null,
    index_update_method=null,
    labels=null,
    metadata=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_index',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      index_update_method=index_update_method,
      labels=labels,
      metadata=metadata,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    description=null,
    index_update_method=null,
    labels=null,
    metadata=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    index_update_method: index_update_method,
    labels: labels,
    metadata: metadata,
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
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withIndexUpdateMethod(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          index_update_method: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withMetadata(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          metadata: value,
        },
      },
    },
  },
  withMetadataMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          metadata+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_index+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

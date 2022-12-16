local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    entitytype,
    value_type,
    description=null,
    labels=null,
    name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore_entitytype_feature',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      entitytype=entitytype,
      labels=labels,
      name=name,
      timeouts=timeouts,
      value_type=value_type
    ),
    _meta=_meta
  ),
  newAttrs(
    entitytype,
    value_type,
    description=null,
    labels=null,
    name=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    entitytype: entitytype,
    labels: labels,
    name: name,
    timeouts: timeouts,
    value_type: value_type,
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
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withEntitytype(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          entitytype: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withValueType(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_featurestore_entitytype_feature+: {
        [resourceLabel]+: {
          value_type: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  entities:: {
    new(
      synonyms,
      value
    ):: std.prune(a={
      synonyms: synonyms,
      value: value,
    }),
  },
  new(
    resourceLabel,
    display_name,
    kind,
    enable_fuzzy_extraction=null,
    entities=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_entity_type',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      enable_fuzzy_extraction=enable_fuzzy_extraction,
      entities=entities,
      kind=kind,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    kind,
    enable_fuzzy_extraction=null,
    entities=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    enable_fuzzy_extraction: enable_fuzzy_extraction,
    entities: entities,
    kind: kind,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableFuzzyExtraction(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          enable_fuzzy_extraction: value,
        },
      },
    },
  },
  withEntities(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          entities: value,
        },
      },
    },
  },
  withEntitiesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          entities+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withKind(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          kind: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_entity_type+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

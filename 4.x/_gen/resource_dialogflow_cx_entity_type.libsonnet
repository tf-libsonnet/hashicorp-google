local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  entities:: {
    new(
      synonyms=null,
      value=null
    ):: std.prune(a={
      synonyms: synonyms,
      value: value,
    }),
  },
  excluded_phrases:: {
    new(
      value=null
    ):: std.prune(a={
      value: value,
    }),
  },
  new(
    resourceLabel,
    display_name,
    kind,
    auto_expansion_mode=null,
    enable_fuzzy_extraction=null,
    entities=null,
    excluded_phrases=null,
    language_code=null,
    parent=null,
    redact=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_entity_type',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_expansion_mode=auto_expansion_mode,
      display_name=display_name,
      enable_fuzzy_extraction=enable_fuzzy_extraction,
      entities=entities,
      excluded_phrases=excluded_phrases,
      kind=kind,
      language_code=language_code,
      parent=parent,
      redact=redact,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    kind,
    auto_expansion_mode=null,
    enable_fuzzy_extraction=null,
    entities=null,
    excluded_phrases=null,
    language_code=null,
    parent=null,
    redact=null,
    timeouts=null
  ):: std.prune(a={
    auto_expansion_mode: auto_expansion_mode,
    display_name: display_name,
    enable_fuzzy_extraction: enable_fuzzy_extraction,
    entities: entities,
    excluded_phrases: excluded_phrases,
    kind: kind,
    language_code: language_code,
    parent: parent,
    redact: redact,
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
  withAutoExpansionMode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          auto_expansion_mode: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableFuzzyExtraction(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          enable_fuzzy_extraction: value,
        },
      },
    },
  },
  withEntities(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          entities: value,
        },
      },
    },
  },
  withEntitiesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          entities+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withExcludedPhrases(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          excluded_phrases: value,
        },
      },
    },
  },
  withExcludedPhrasesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          excluded_phrases+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withKind(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          kind: value,
        },
      },
    },
  },
  withLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withRedact(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          redact: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_entity_type+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

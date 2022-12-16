local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    description=null,
    is_fallback=null,
    labels=null,
    language_code=null,
    parameters=null,
    parent=null,
    priority=null,
    timeouts=null,
    training_phrases=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_intent',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      is_fallback=is_fallback,
      labels=labels,
      language_code=language_code,
      parameters=parameters,
      parent=parent,
      priority=priority,
      timeouts=timeouts,
      training_phrases=training_phrases
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    description=null,
    is_fallback=null,
    labels=null,
    language_code=null,
    parameters=null,
    parent=null,
    priority=null,
    timeouts=null,
    training_phrases=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    is_fallback: is_fallback,
    labels: labels,
    language_code: language_code,
    parameters: parameters,
    parent: parent,
    priority: priority,
    timeouts: timeouts,
    training_phrases: training_phrases,
  }),
  parameters:: {
    new(
      entity_type,
      is_list=null,
      redact=null
    ):: std.prune(a={
      entity_type: entity_type,
      is_list: is_list,
      redact: redact,
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
  training_phrases:: {
    new(
      parts=null,
      repeat_count=null
    ):: std.prune(a={
      parts: parts,
      repeat_count: repeat_count,
    }),
    parts:: {
      new(
        text,
        parameter_id=null
      ):: std.prune(a={
        parameter_id: parameter_id,
        text: text,
      }),
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withIsFallback(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          is_fallback: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  withParameters(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          parameters: value,
        },
      },
    },
  },
  withParametersMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          parameters+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTrainingPhrases(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          training_phrases: value,
        },
      },
    },
  },
  withTrainingPhrasesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_intent+: {
        [resourceLabel]+: {
          training_phrases+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

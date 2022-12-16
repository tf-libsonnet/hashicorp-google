local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    action=null,
    default_response_platforms=null,
    events=null,
    input_context_names=null,
    is_fallback=null,
    ml_disabled=null,
    parent_followup_intent_name=null,
    priority=null,
    project=null,
    reset_contexts=null,
    timeouts=null,
    webhook_state=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_intent',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      default_response_platforms=default_response_platforms,
      display_name=display_name,
      events=events,
      input_context_names=input_context_names,
      is_fallback=is_fallback,
      ml_disabled=ml_disabled,
      parent_followup_intent_name=parent_followup_intent_name,
      priority=priority,
      project=project,
      reset_contexts=reset_contexts,
      timeouts=timeouts,
      webhook_state=webhook_state
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    action=null,
    default_response_platforms=null,
    events=null,
    input_context_names=null,
    is_fallback=null,
    ml_disabled=null,
    parent_followup_intent_name=null,
    priority=null,
    project=null,
    reset_contexts=null,
    timeouts=null,
    webhook_state=null
  ):: std.prune(a={
    action: action,
    default_response_platforms: default_response_platforms,
    display_name: display_name,
    events: events,
    input_context_names: input_context_names,
    is_fallback: is_fallback,
    ml_disabled: ml_disabled,
    parent_followup_intent_name: parent_followup_intent_name,
    priority: priority,
    project: project,
    reset_contexts: reset_contexts,
    timeouts: timeouts,
    webhook_state: webhook_state,
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
  withAction(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  withDefaultResponsePlatforms(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          default_response_platforms: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEvents(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          events: value,
        },
      },
    },
  },
  withInputContextNames(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          input_context_names: value,
        },
      },
    },
  },
  withIsFallback(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          is_fallback: value,
        },
      },
    },
  },
  withMlDisabled(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          ml_disabled: value,
        },
      },
    },
  },
  withParentFollowupIntentName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          parent_followup_intent_name: value,
        },
      },
    },
  },
  withPriority(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withResetContexts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          reset_contexts: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWebhookState(resourceLabel, value):: {
    resource+: {
      google_dialogflow_intent+: {
        [resourceLabel]+: {
          webhook_state: value,
        },
      },
    },
  },
}

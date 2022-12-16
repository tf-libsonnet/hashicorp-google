local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  event_handlers:: {
    new(
      event=null,
      target_flow=null,
      target_page=null,
      trigger_fulfillment=null
    ):: std.prune(a={
      event: event,
      target_flow: target_flow,
      target_page: target_page,
      trigger_fulfillment: trigger_fulfillment,
    }),
    trigger_fulfillment:: {
      messages:: {
        new(
          text=null
        ):: std.prune(a={
          text: text,
        }),
        text:: {
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      new(
        messages=null,
        return_partial_responses=null,
        tag=null,
        webhook=null
      ):: std.prune(a={
        messages: messages,
        return_partial_responses: return_partial_responses,
        tag: tag,
        webhook: webhook,
      }),
    },
  },
  new(
    resourceLabel,
    display_name,
    description=null,
    event_handlers=null,
    language_code=null,
    nlu_settings=null,
    parent=null,
    timeouts=null,
    transition_route_groups=null,
    transition_routes=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_flow',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      event_handlers=event_handlers,
      language_code=language_code,
      nlu_settings=nlu_settings,
      parent=parent,
      timeouts=timeouts,
      transition_route_groups=transition_route_groups,
      transition_routes=transition_routes
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    description=null,
    event_handlers=null,
    language_code=null,
    nlu_settings=null,
    parent=null,
    timeouts=null,
    transition_route_groups=null,
    transition_routes=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    event_handlers: event_handlers,
    language_code: language_code,
    nlu_settings: nlu_settings,
    parent: parent,
    timeouts: timeouts,
    transition_route_groups: transition_route_groups,
    transition_routes: transition_routes,
  }),
  nlu_settings:: {
    new(
      classification_threshold=null,
      model_training_mode=null,
      model_type=null
    ):: std.prune(a={
      classification_threshold: classification_threshold,
      model_training_mode: model_training_mode,
      model_type: model_type,
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
  transition_routes:: {
    new(
      condition=null,
      intent=null,
      target_flow=null,
      target_page=null,
      trigger_fulfillment=null
    ):: std.prune(a={
      condition: condition,
      intent: intent,
      target_flow: target_flow,
      target_page: target_page,
      trigger_fulfillment: trigger_fulfillment,
    }),
    trigger_fulfillment:: {
      messages:: {
        new(
          text=null
        ):: std.prune(a={
          text: text,
        }),
        text:: {
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      new(
        messages=null,
        return_partial_responses=null,
        tag=null,
        webhook=null
      ):: std.prune(a={
        messages: messages,
        return_partial_responses: return_partial_responses,
        tag: tag,
        webhook: webhook,
      }),
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEventHandlers(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          event_handlers: value,
        },
      },
    },
  },
  withEventHandlersMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          event_handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  withNluSettings(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          nlu_settings: value,
        },
      },
    },
  },
  withNluSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          nlu_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransitionRouteGroups(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          transition_route_groups: value,
        },
      },
    },
  },
  withTransitionRoutes(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          transition_routes: value,
        },
      },
    },
  },
  withTransitionRoutesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          transition_routes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

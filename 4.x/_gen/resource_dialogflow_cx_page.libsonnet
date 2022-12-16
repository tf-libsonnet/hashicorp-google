local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  entry_fulfillment:: {
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
  form:: {
    new(
      parameters=null
    ):: std.prune(a={
      parameters: parameters,
    }),
    parameters:: {
      fill_behavior:: {
        initial_prompt_fulfillment:: {
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
        new(
          initial_prompt_fulfillment=null
        ):: std.prune(a={
          initial_prompt_fulfillment: initial_prompt_fulfillment,
        }),
      },
      new(
        display_name=null,
        entity_type=null,
        fill_behavior=null,
        is_list=null,
        redact=null,
        required=null
      ):: std.prune(a={
        display_name: display_name,
        entity_type: entity_type,
        fill_behavior: fill_behavior,
        is_list: is_list,
        redact: redact,
        required: required,
      }),
    },
  },
  new(
    resourceLabel,
    display_name,
    entry_fulfillment=null,
    event_handlers=null,
    form=null,
    language_code=null,
    parent=null,
    timeouts=null,
    transition_route_groups=null,
    transition_routes=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_page',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      entry_fulfillment=entry_fulfillment,
      event_handlers=event_handlers,
      form=form,
      language_code=language_code,
      parent=parent,
      timeouts=timeouts,
      transition_route_groups=transition_route_groups,
      transition_routes=transition_routes
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    entry_fulfillment=null,
    event_handlers=null,
    form=null,
    language_code=null,
    parent=null,
    timeouts=null,
    transition_route_groups=null,
    transition_routes=null
  ):: std.prune(a={
    display_name: display_name,
    entry_fulfillment: entry_fulfillment,
    event_handlers: event_handlers,
    form: form,
    language_code: language_code,
    parent: parent,
    timeouts: timeouts,
    transition_route_groups: transition_route_groups,
    transition_routes: transition_routes,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEntryFulfillment(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          entry_fulfillment: value,
        },
      },
    },
  },
  withEntryFulfillmentMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          entry_fulfillment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withEventHandlers(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          event_handlers: value,
        },
      },
    },
  },
  withEventHandlersMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          event_handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withForm(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          form: value,
        },
      },
    },
  },
  withFormMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          form+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTransitionRouteGroups(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          transition_route_groups: value,
        },
      },
    },
  },
  withTransitionRoutes(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          transition_routes: value,
        },
      },
    },
  },
  withTransitionRoutesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          transition_routes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

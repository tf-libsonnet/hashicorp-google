local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_flow', url='', help='`dialogflow_cx_flow` represents the `google_dialogflow_cx_flow` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  event_handlers:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.new` constructs a new object with attributes and blocks configured for the `event_handlers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event` (`string`): The name of the event to handle. When `null`, the `event` field will be omitted from the resulting object.\n  - `target_flow` (`string`): The target flow to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.\n  - `target_page` (`string`): The target page to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.\n  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.new](#fn-event_handlerstrigger_fulfillmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `event_handlers` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.text.new](#fn-messagestextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
        new(
          text=null
        ):: std.prune(a={
          text: text,
        }),
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.new](#fn-trigger_fulfillmentmessagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.dialogflow_cx_flow.new` injects a new `google_dialogflow_cx_flow` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_flow.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_flow` using the reference:\n\n    $._ref.google_dialogflow_cx_flow.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_flow.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the flow.\n  - `language_code` (`string`): The language of the following fields in flow:\nFlow.event_handlers.trigger_fulfillment.messages\nFlow.event_handlers.trigger_fulfillment.conditional_cases\nFlow.transition_routes.trigger_fulfillment.messages\nFlow.transition_routes.trigger_fulfillment.conditional_cases\nIf not specified, the agent\u0026#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a flow for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `transition_route_groups` (`list`): A flow\u0026#39;s transition route group serve two purposes:\nThey are responsible for matching the user\u0026#39;s first utterances in the flow.\nThey are inherited by every page\u0026#39;s [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.\nFormat:projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;/flows/\u0026lt;Flow ID\u0026gt;/transitionRouteGroups/\u0026lt;TransitionRouteGroup ID\u0026gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.\n  - `event_handlers` (`list[obj]`): A flow\u0026#39;s event handlers serve two purposes:\nThey are responsible for handling events (e.g. no match, webhook errors) in the flow.\nThey are inherited by every page\u0026#39;s [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.\nUnlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.new](#fn-dialogflow_cx_flowevent_handlersnew) constructor.\n  - `nlu_settings` (`list[obj]`): NLU related settings of the flow. When `null`, the `nlu_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.nlu_settings.new](#fn-dialogflow_cx_flownlu_settingsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.timeouts.new](#fn-dialogflow_cx_flowtimeoutsnew) constructor.\n  - `transition_routes` (`list[obj]`): A flow\u0026#39;s transition routes serve two purposes:\nThey are responsible for matching the user\u0026#39;s first utterances in the flow.\nThey are inherited by every page\u0026#39;s [transition routes][Page.transition_routes] and can support use cases such as the user saying \u0026#34;help\u0026#34; or \u0026#34;can I talk to a human?\u0026#34;, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.\n\nTransitionRoutes are evalauted in the following order:\n  TransitionRoutes with intent specified.\n  TransitionRoutes with only condition specified.\n  TransitionRoutes with intent specified are inherited by pages in the flow. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.new](#fn-dialogflow_cx_flowtransition_routesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_flow.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_flow`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_flow.new](#fn-dialogflow_cx_flownew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the flow.\n  - `language_code` (`string`): The language of the following fields in flow:\nFlow.event_handlers.trigger_fulfillment.messages\nFlow.event_handlers.trigger_fulfillment.conditional_cases\nFlow.transition_routes.trigger_fulfillment.messages\nFlow.transition_routes.trigger_fulfillment.conditional_cases\nIf not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a flow for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `transition_route_groups` (`list`): A flow&#39;s transition route group serve two purposes:\nThey are responsible for matching the user&#39;s first utterances in the flow.\nThey are inherited by every page&#39;s [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.\nFormat:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.\n  - `event_handlers` (`list[obj]`): A flow&#39;s event handlers serve two purposes:\nThey are responsible for handling events (e.g. no match, webhook errors) in the flow.\nThey are inherited by every page&#39;s [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.\nUnlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.new](#fn-dialogflow_cx_flowevent_handlersnew) constructor.\n  - `nlu_settings` (`list[obj]`): NLU related settings of the flow. When `null`, the `nlu_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.nlu_settings.new](#fn-dialogflow_cx_flownlu_settingsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.timeouts.new](#fn-dialogflow_cx_flowtimeoutsnew) constructor.\n  - `transition_routes` (`list[obj]`): A flow&#39;s transition routes serve two purposes:\nThey are responsible for matching the user&#39;s first utterances in the flow.\nThey are inherited by every page&#39;s [transition routes][Page.transition_routes] and can support use cases such as the user saying &#34;help&#34; or &#34;can I talk to a human?&#34;, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.\n\nTransitionRoutes are evalauted in the following order:\n  TransitionRoutes with intent specified.\n  TransitionRoutes with only condition specified.\n  TransitionRoutes with intent specified are inherited by pages in the flow. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.new](#fn-dialogflow_cx_flowtransition_routesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_flow` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_flow.nlu_settings.new` constructs a new object with attributes and blocks configured for the `nlu_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `classification_threshold` (`number`): To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold.\nIf the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used. When `null`, the `classification_threshold` field will be omitted from the resulting object.\n  - `model_training_mode` (`string`): Indicates NLU model training mode.\n* MODEL_TRAINING_MODE_AUTOMATIC: NLU model training is automatically triggered when a flow gets modified. User can also manually trigger model training in this mode.\n* MODEL_TRAINING_MODE_MANUAL: User needs to manually trigger NLU model training. Best for large flows whose models take long time to train. Possible values: [&#34;MODEL_TRAINING_MODE_AUTOMATIC&#34;, &#34;MODEL_TRAINING_MODE_MANUAL&#34;] When `null`, the `model_training_mode` field will be omitted from the resulting object.\n  - `model_type` (`string`): Indicates the type of NLU model.\n* MODEL_TYPE_STANDARD: Use standard NLU model.\n* MODEL_TYPE_ADVANCED: Use advanced NLU model. Possible values: [&#34;MODEL_TYPE_STANDARD&#34;, &#34;MODEL_TYPE_ADVANCED&#34;] When `null`, the `model_type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `nlu_settings` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_flow.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.new` constructs a new object with attributes and blocks configured for the `transition_routes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `condition` (`string`): The condition to evaluate against form parameters or session parameters.\nAt least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. When `null`, the `condition` field will be omitted from the resulting object.\n  - `intent` (`string`): The unique identifier of an Intent.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. When `null`, the `intent` field will be omitted from the resulting object.\n  - `target_flow` (`string`): The target flow to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.\n  - `target_page` (`string`): The target page to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.\n  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.new](#fn-transition_routestrigger_fulfillmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transition_routes` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.text.new](#fn-messagestextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
        new(
          text=null
        ):: std.prune(a={
          text: text,
        }),
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.new](#fn-trigger_fulfillmentmessagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEventHandlers':: d.fn(help='`google.list[obj].withEventHandlers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_handlers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEventHandlersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_handlers` field.\n', args=[]),
  withEventHandlers(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          event_handlers: value,
        },
      },
    },
  },
  '#withEventHandlersMixin':: d.fn(help='`google.list[obj].withEventHandlersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_handlers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEventHandlers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_handlers` field.\n', args=[]),
  withEventHandlersMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          event_handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLanguageCode':: d.fn(help='`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the language_code field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `language_code` field.\n', args=[]),
  withLanguageCode(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  '#withNluSettings':: d.fn(help='`google.list[obj].withNluSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the nlu_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNluSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `nlu_settings` field.\n', args=[]),
  withNluSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          nlu_settings: value,
        },
      },
    },
  },
  '#withNluSettingsMixin':: d.fn(help='`google.list[obj].withNluSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the nlu_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNluSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `nlu_settings` field.\n', args=[]),
  withNluSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          nlu_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransitionRouteGroups':: d.fn(help='`google.list.withTransitionRouteGroups` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the transition_route_groups field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `transition_route_groups` field.\n', args=[]),
  withTransitionRouteGroups(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          transition_route_groups: value,
        },
      },
    },
  },
  '#withTransitionRoutes':: d.fn(help='`google.list[obj].withTransitionRoutes` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transition_routes field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTransitionRoutesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transition_routes` field.\n', args=[]),
  withTransitionRoutes(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          transition_routes: value,
        },
      },
    },
  },
  '#withTransitionRoutesMixin':: d.fn(help='`google.list[obj].withTransitionRoutesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transition_routes field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTransitionRoutes](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transition_routes` field.\n', args=[]),
  withTransitionRoutesMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          transition_routes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

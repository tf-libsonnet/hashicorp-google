local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_flow', url='', help='`dialogflow_cx_flow` represents the `google_dialogflow_cx_flow` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  advanced_settings:: {
    audio_export_gcs_destination:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_flow.advanced_settings.audio_export_gcs_destination.new` constructs a new object with attributes and blocks configured for the `audio_export_gcs_destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `uri` (`string`): The Google Cloud Storage URI for the exported objects. Whether a full object name, or just a prefix, its usage depends on the Dialogflow operation.\nFormat: gs://bucket/object-name-or-prefix When `null`, the `uri` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `audio_export_gcs_destination` sub block.\n', args=[]),
      new(
        uri=null
      ):: std.prune(a={
        uri: uri,
      }),
    },
    dtmf_settings:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_flow.advanced_settings.dtmf_settings.new` constructs a new object with attributes and blocks configured for the `dtmf_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a &#34;3&#34; was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). When `null`, the `enabled` field will be omitted from the resulting object.\n  - `finish_digit` (`string`): The digit that terminates a DTMF digit sequence. When `null`, the `finish_digit` field will be omitted from the resulting object.\n  - `max_digits` (`number`): Max length of DTMF digits. When `null`, the `max_digits` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dtmf_settings` sub block.\n', args=[]),
      new(
        enabled=null,
        finish_digit=null,
        max_digits=null
      ):: std.prune(a={
        enabled: enabled,
        finish_digit: finish_digit,
        max_digits: max_digits,
      }),
    },
    '#new':: d.fn(help='\n`google.dialogflow_cx_flow.advanced_settings.new` constructs a new object with attributes and blocks configured for the `advanced_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_export_gcs_destination` (`list[obj]`): If present, incoming audio is exported by Dialogflow to the configured Google Cloud Storage destination. Exposed at the following levels:\n* Agent level\n* Flow level When `null`, the `audio_export_gcs_destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.advanced_settings.audio_export_gcs_destination.new](#fn-advanced_settingsaudio_export_gcs_destinationnew) constructor.\n  - `dtmf_settings` (`list[obj]`): Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:\n* Agent level\n* Flow level\n* Page level\n* Parameter level When `null`, the `dtmf_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.advanced_settings.dtmf_settings.new](#fn-advanced_settingsdtmf_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `advanced_settings` sub block.\n', args=[]),
    new(
      audio_export_gcs_destination=null,
      dtmf_settings=null
    ):: std.prune(a={
      audio_export_gcs_destination: audio_export_gcs_destination,
      dtmf_settings: dtmf_settings,
    }),
  },
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
      conditional_cases:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
        new(
          cases=null
        ):: std.prune(a={
          cases: cases,
        }),
      },
      messages:: {
        conversation_success:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        live_agent_handoff:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.conversation_success.new](#fn-event_handlersevent_handlerstrigger_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.live_agent_handoff.new](#fn-event_handlersevent_handlerstrigger_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.output_audio_text.new](#fn-event_handlersevent_handlerstrigger_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.play_audio.new](#fn-event_handlersevent_handlerstrigger_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.telephony_transfer_call.new](#fn-event_handlersevent_handlerstrigger_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.text.new](#fn-event_handlersevent_handlerstrigger_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
        new(
          channel=null,
          conversation_success=null,
          live_agent_handoff=null,
          output_audio_text=null,
          payload=null,
          play_audio=null,
          telephony_transfer_call=null,
          text=null
        ):: std.prune(a={
          channel: channel,
          conversation_success: conversation_success,
          live_agent_handoff: live_agent_handoff,
          output_audio_text: output_audio_text,
          payload: payload,
          play_audio: play_audio,
          telephony_transfer_call: telephony_transfer_call,
          text: text,
        }),
        output_audio_text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
          new(
            ssml=null,
            text=null
          ):: std.prune(a={
            ssml: ssml,
            text: text,
          }),
        },
        play_audio:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
          new(
            audio_uri
          ):: std.prune(a={
            audio_uri: audio_uri,
          }),
        },
        telephony_transfer_call:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
          new(
            phone_number
          ):: std.prune(a={
            phone_number: phone_number,
          }),
        },
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.conditional_cases.new](#fn-event_handlersevent_handlersconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.new](#fn-event_handlersevent_handlersmessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.set_parameter_actions.new](#fn-event_handlersevent_handlersset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
      new(
        conditional_cases=null,
        messages=null,
        return_partial_responses=null,
        set_parameter_actions=null,
        tag=null,
        webhook=null
      ):: std.prune(a={
        conditional_cases: conditional_cases,
        messages: messages,
        return_partial_responses: return_partial_responses,
        set_parameter_actions: set_parameter_actions,
        tag: tag,
        webhook: webhook,
      }),
      set_parameter_actions:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
        new(
          parameter=null,
          value=null
        ):: std.prune(a={
          parameter: parameter,
          value: value,
        }),
      },
    },
  },
  '#new':: d.fn(help="\n`google.dialogflow_cx_flow.new` injects a new `google_dialogflow_cx_flow` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_flow.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_flow` using the reference:\n\n    $._ref.google_dialogflow_cx_flow.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_flow.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the flow.\n  - `is_default_start_flow` (`bool`): Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.\nThe Default Start Flow cannot be deleted; deleting the \u0026#39;google_dialogflow_cx_flow\u0026#39; resource does nothing to the underlying GCP resources.\n\n~\u0026gt; Avoid having multiple \u0026#39;google_dialogflow_cx_flow\u0026#39; resources linked to the same agent with \u0026#39;is_default_start_flow = true\u0026#39; because they will compete to control a single Default Start Flow resource in GCP. When `null`, the `is_default_start_flow` field will be omitted from the resulting object.\n  - `language_code` (`string`): The language of the following fields in flow:\nFlow.event_handlers.trigger_fulfillment.messages\nFlow.event_handlers.trigger_fulfillment.conditional_cases\nFlow.transition_routes.trigger_fulfillment.messages\nFlow.transition_routes.trigger_fulfillment.conditional_cases\nIf not specified, the agent\u0026#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a flow for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `transition_route_groups` (`list`): A flow\u0026#39;s transition route group serve two purposes:\nThey are responsible for matching the user\u0026#39;s first utterances in the flow.\nThey are inherited by every page\u0026#39;s [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.\nFormat:projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;/flows/\u0026lt;Flow ID\u0026gt;/transitionRouteGroups/\u0026lt;TransitionRouteGroup ID\u0026gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-\u0026gt;Flow-\u0026gt;Page-\u0026gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.advanced_settings.new](#fn-advanced_settingsnew) constructor.\n  - `event_handlers` (`list[obj]`): A flow\u0026#39;s event handlers serve two purposes:\nThey are responsible for handling events (e.g. no match, webhook errors) in the flow.\nThey are inherited by every page\u0026#39;s [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.\nUnlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.new](#fn-event_handlersnew) constructor.\n  - `nlu_settings` (`list[obj]`): NLU related settings of the flow. When `null`, the `nlu_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.nlu_settings.new](#fn-nlu_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.timeouts.new](#fn-timeoutsnew) constructor.\n  - `transition_routes` (`list[obj]`): A flow\u0026#39;s transition routes serve two purposes:\nThey are responsible for matching the user\u0026#39;s first utterances in the flow.\nThey are inherited by every page\u0026#39;s [transition routes][Page.transition_routes] and can support use cases such as the user saying \u0026#34;help\u0026#34; or \u0026#34;can I talk to a human?\u0026#34;, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.\n\nTransitionRoutes are evalauted in the following order:\n  TransitionRoutes with intent specified.\n  TransitionRoutes with only condition specified.\n  TransitionRoutes with intent specified are inherited by pages in the flow. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.new](#fn-transition_routesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    advanced_settings=null,
    description=null,
    event_handlers=null,
    is_default_start_flow=null,
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
      advanced_settings=advanced_settings,
      description=description,
      display_name=display_name,
      event_handlers=event_handlers,
      is_default_start_flow=is_default_start_flow,
      language_code=language_code,
      nlu_settings=nlu_settings,
      parent=parent,
      timeouts=timeouts,
      transition_route_groups=transition_route_groups,
      transition_routes=transition_routes
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_flow.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_flow`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_flow.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the flow.\n  - `is_default_start_flow` (`bool`): Marks this as the [Default Start Flow](https://cloud.google.com/dialogflow/cx/docs/concept/flow#start) for an agent. When you create an agent, the Default Start Flow is created automatically.\nThe Default Start Flow cannot be deleted; deleting the &#39;google_dialogflow_cx_flow&#39; resource does nothing to the underlying GCP resources.\n\n~&gt; Avoid having multiple &#39;google_dialogflow_cx_flow&#39; resources linked to the same agent with &#39;is_default_start_flow = true&#39; because they will compete to control a single Default Start Flow resource in GCP. When `null`, the `is_default_start_flow` field will be omitted from the resulting object.\n  - `language_code` (`string`): The language of the following fields in flow:\nFlow.event_handlers.trigger_fulfillment.messages\nFlow.event_handlers.trigger_fulfillment.conditional_cases\nFlow.transition_routes.trigger_fulfillment.messages\nFlow.transition_routes.trigger_fulfillment.conditional_cases\nIf not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create a flow for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `transition_route_groups` (`list`): A flow&#39;s transition route group serve two purposes:\nThey are responsible for matching the user&#39;s first utterances in the flow.\nThey are inherited by every page&#39;s [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.\nFormat:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this flow. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.advanced_settings.new](#fn-advanced_settingsnew) constructor.\n  - `event_handlers` (`list[obj]`): A flow&#39;s event handlers serve two purposes:\nThey are responsible for handling events (e.g. no match, webhook errors) in the flow.\nThey are inherited by every page&#39;s [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.\nUnlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.new](#fn-event_handlersnew) constructor.\n  - `nlu_settings` (`list[obj]`): NLU related settings of the flow. When `null`, the `nlu_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.nlu_settings.new](#fn-nlu_settingsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.timeouts.new](#fn-timeoutsnew) constructor.\n  - `transition_routes` (`list[obj]`): A flow&#39;s transition routes serve two purposes:\nThey are responsible for matching the user&#39;s first utterances in the flow.\nThey are inherited by every page&#39;s [transition routes][Page.transition_routes] and can support use cases such as the user saying &#34;help&#34; or &#34;can I talk to a human?&#34;, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.\n\nTransitionRoutes are evalauted in the following order:\n  TransitionRoutes with intent specified.\n  TransitionRoutes with only condition specified.\n  TransitionRoutes with intent specified are inherited by pages in the flow. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.new](#fn-transition_routesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_flow` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    advanced_settings=null,
    description=null,
    event_handlers=null,
    is_default_start_flow=null,
    language_code=null,
    nlu_settings=null,
    parent=null,
    timeouts=null,
    transition_route_groups=null,
    transition_routes=null
  ):: std.prune(a={
    advanced_settings: advanced_settings,
    description: description,
    display_name: display_name,
    event_handlers: event_handlers,
    is_default_start_flow: is_default_start_flow,
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_flow.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      conditional_cases:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
        new(
          cases=null
        ):: std.prune(a={
          cases: cases,
        }),
      },
      messages:: {
        conversation_success:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        live_agent_handoff:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.conversation_success.new](#fn-transition_routestransition_routestrigger_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.live_agent_handoff.new](#fn-transition_routestransition_routestrigger_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.output_audio_text.new](#fn-transition_routestransition_routestrigger_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.play_audio.new](#fn-transition_routestransition_routestrigger_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.telephony_transfer_call.new](#fn-transition_routestransition_routestrigger_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.text.new](#fn-transition_routestransition_routestrigger_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
        new(
          channel=null,
          conversation_success=null,
          live_agent_handoff=null,
          output_audio_text=null,
          payload=null,
          play_audio=null,
          telephony_transfer_call=null,
          text=null
        ):: std.prune(a={
          channel: channel,
          conversation_success: conversation_success,
          live_agent_handoff: live_agent_handoff,
          output_audio_text: output_audio_text,
          payload: payload,
          play_audio: play_audio,
          telephony_transfer_call: telephony_transfer_call,
          text: text,
        }),
        output_audio_text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
          new(
            ssml=null,
            text=null
          ):: std.prune(a={
            ssml: ssml,
            text: text,
          }),
        },
        play_audio:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
          new(
            audio_uri
          ):: std.prune(a={
            audio_uri: audio_uri,
          }),
        },
        telephony_transfer_call:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
          new(
            phone_number
          ):: std.prune(a={
            phone_number: phone_number,
          }),
        },
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.conditional_cases.new](#fn-transition_routestransition_routesconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.new](#fn-transition_routestransition_routesmessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.set_parameter_actions.new](#fn-transition_routestransition_routesset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
      new(
        conditional_cases=null,
        messages=null,
        return_partial_responses=null,
        set_parameter_actions=null,
        tag=null,
        webhook=null
      ):: std.prune(a={
        conditional_cases: conditional_cases,
        messages: messages,
        return_partial_responses: return_partial_responses,
        set_parameter_actions: set_parameter_actions,
        tag: tag,
        webhook: webhook,
      }),
      set_parameter_actions:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
        new(
          parameter=null,
          value=null
        ):: std.prune(a={
          parameter: parameter,
          value: value,
        }),
      },
    },
  },
  '#withAdvancedSettings':: d.fn(help='`google.list[obj].withAdvancedSettings` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_settings field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAdvancedSettingsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.\n', args=[]),
  withAdvancedSettings(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          advanced_settings: value,
        },
      },
    },
  },
  '#withAdvancedSettingsMixin':: d.fn(help='`google.list[obj].withAdvancedSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.\n', args=[]),
  withAdvancedSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          advanced_settings+: if std.isArray(v=value) then value else [value],
        },
      },
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
  '#withIsDefaultStartFlow':: d.fn(help='`google.bool.withIsDefaultStartFlow` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the is_default_start_flow field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `is_default_start_flow` field.\n', args=[]),
  withIsDefaultStartFlow(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_flow+: {
        [resourceLabel]+: {
          is_default_start_flow: value,
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

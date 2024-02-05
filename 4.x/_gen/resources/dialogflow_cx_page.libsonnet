local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_page', url='', help='`dialogflow_cx_page` represents the `google_dialogflow_cx_page` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  advanced_settings:: {
    dtmf_settings:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.advanced_settings.dtmf_settings.new` constructs a new object with attributes and blocks configured for the `dtmf_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a &#34;3&#34; was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). When `null`, the `enabled` field will be omitted from the resulting object.\n  - `finish_digit` (`string`): The digit that terminates a DTMF digit sequence. When `null`, the `finish_digit` field will be omitted from the resulting object.\n  - `max_digits` (`number`): Max length of DTMF digits. When `null`, the `max_digits` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dtmf_settings` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_page.advanced_settings.new` constructs a new object with attributes and blocks configured for the `advanced_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dtmf_settings` (`list[obj]`): Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:\n* Agent level\n* Flow level\n* Page level\n* Parameter level When `null`, the `dtmf_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.advanced_settings.dtmf_settings.new](#fn-advanced_settingsdtmf_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `advanced_settings` sub block.\n', args=[]),
    new(
      dtmf_settings=null
    ):: std.prune(a={
      dtmf_settings: dtmf_settings,
    }),
  },
  entry_fulfillment:: {
    conditional_cases:: {
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
      new(
        cases=null
      ):: std.prune(a={
        cases: cases,
      }),
    },
    messages:: {
      conversation_success:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
        new(
          metadata=null
        ):: std.prune(a={
          metadata: metadata,
        }),
      },
      live_agent_handoff:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
        new(
          metadata=null
        ):: std.prune(a={
          metadata: metadata,
        }),
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.conversation_success.new](#fn-entry_fulfillmententry_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.live_agent_handoff.new](#fn-entry_fulfillmententry_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.output_audio_text.new](#fn-entry_fulfillmententry_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.play_audio.new](#fn-entry_fulfillmententry_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.telephony_transfer_call.new](#fn-entry_fulfillmententry_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.text.new](#fn-entry_fulfillmententry_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
        new(
          ssml=null,
          text=null
        ):: std.prune(a={
          ssml: ssml,
          text: text,
        }),
      },
      play_audio:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
        new(
          audio_uri
        ):: std.prune(a={
          audio_uri: audio_uri,
        }),
      },
      telephony_transfer_call:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
        new(
          phone_number
        ):: std.prune(a={
          phone_number: phone_number,
        }),
      },
      text:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
        new(
          text=null
        ):: std.prune(a={
          text: text,
        }),
      },
    },
    '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.new` constructs a new object with attributes and blocks configured for the `entry_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.conditional_cases.new](#fn-entry_fulfillmentconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.new](#fn-entry_fulfillmentmessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.set_parameter_actions.new](#fn-entry_fulfillmentset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `entry_fulfillment` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.entry_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
      new(
        parameter=null,
        value=null
      ):: std.prune(a={
        parameter: parameter,
        value: value,
      }),
    },
  },
  event_handlers:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.new` constructs a new object with attributes and blocks configured for the `event_handlers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event` (`string`): The name of the event to handle. When `null`, the `event` field will be omitted from the resulting object.\n  - `target_flow` (`string`): The target flow to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.\n  - `target_page` (`string`): The target page to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.\n  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.new](#fn-event_handlerstrigger_fulfillmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `event_handlers` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
        new(
          cases=null
        ):: std.prune(a={
          cases: cases,
        }),
      },
      messages:: {
        conversation_success:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        live_agent_handoff:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.conversation_success.new](#fn-event_handlersevent_handlerstrigger_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.live_agent_handoff.new](#fn-event_handlersevent_handlerstrigger_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.output_audio_text.new](#fn-event_handlersevent_handlerstrigger_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.play_audio.new](#fn-event_handlersevent_handlerstrigger_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.telephony_transfer_call.new](#fn-event_handlersevent_handlerstrigger_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.text.new](#fn-event_handlersevent_handlerstrigger_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
          new(
            ssml=null,
            text=null
          ):: std.prune(a={
            ssml: ssml,
            text: text,
          }),
        },
        play_audio:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
          new(
            audio_uri
          ):: std.prune(a={
            audio_uri: audio_uri,
          }),
        },
        telephony_transfer_call:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
          new(
            phone_number
          ):: std.prune(a={
            phone_number: phone_number,
          }),
        },
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.conditional_cases.new](#fn-event_handlersevent_handlersconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.new](#fn-event_handlersevent_handlersmessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.set_parameter_actions.new](#fn-event_handlersevent_handlersset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
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
  form:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.new` constructs a new object with attributes and blocks configured for the `form`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameters` (`list[obj]`): Parameters to collect from the user. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.new](#fn-formparametersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `form` sub block.\n', args=[]),
    new(
      parameters=null
    ):: std.prune(a={
      parameters: parameters,
    }),
    parameters:: {
      advanced_settings:: {
        dtmf_settings:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.advanced_settings.dtmf_settings.new` constructs a new object with attributes and blocks configured for the `dtmf_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): If true, incoming audio is processed for DTMF (dual tone multi frequency) events. For example, if the caller presses a button on their telephone keypad and DTMF processing is enabled, Dialogflow will detect the event (e.g. a &#34;3&#34; was pressed) in the incoming audio and pass the event to the bot to drive business logic (e.g. when 3 is pressed, return the account balance). When `null`, the `enabled` field will be omitted from the resulting object.\n  - `finish_digit` (`string`): The digit that terminates a DTMF digit sequence. When `null`, the `finish_digit` field will be omitted from the resulting object.\n  - `max_digits` (`number`): Max length of DTMF digits. When `null`, the `max_digits` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dtmf_settings` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.advanced_settings.new` constructs a new object with attributes and blocks configured for the `advanced_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dtmf_settings` (`list[obj]`): Define behaviors for DTMF (dual tone multi frequency). DTMF settings does not override each other. DTMF settings set at different levels define DTMF detections running in parallel. Exposed at the following levels:\n* Agent level\n* Flow level\n* Page level\n* Parameter level When `null`, the `dtmf_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.advanced_settings.dtmf_settings.new](#fn-formformparametersdtmf_settingsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `advanced_settings` sub block.\n', args=[]),
        new(
          dtmf_settings=null
        ):: std.prune(a={
          dtmf_settings: dtmf_settings,
        }),
      },
      fill_behavior:: {
        initial_prompt_fulfillment:: {
          conditional_cases:: {
            '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
            new(
              cases=null
            ):: std.prune(a={
              cases: cases,
            }),
          },
          messages:: {
            conversation_success:: {
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
              new(
                metadata=null
              ):: std.prune(a={
                metadata: metadata,
              }),
            },
            live_agent_handoff:: {
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
              new(
                metadata=null
              ):: std.prune(a={
                metadata: metadata,
              }),
            },
            '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.conversation_success.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.live_agent_handoff.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.output_audio_text.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.play_audio.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.telephony_transfer_call.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
              new(
                ssml=null,
                text=null
              ):: std.prune(a={
                ssml: ssml,
                text: text,
              }),
            },
            play_audio:: {
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
              new(
                audio_uri
              ):: std.prune(a={
                audio_uri: audio_uri,
              }),
            },
            telephony_transfer_call:: {
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
              new(
                phone_number
              ):: std.prune(a={
                phone_number: phone_number,
              }),
            },
            text:: {
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
              new(
                text=null
              ):: std.prune(a={
                text: text,
              }),
            },
          },
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.new` constructs a new object with attributes and blocks configured for the `initial_prompt_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases.new](#fn-formformparametersfill_behaviorconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.new](#fn-formformparametersfill_behaviormessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.set_parameter_actions.new](#fn-formformparametersfill_behaviorset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `initial_prompt_fulfillment` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
            new(
              parameter=null,
              value=null
            ):: std.prune(a={
              parameter: parameter,
              value: value,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.new` constructs a new object with attributes and blocks configured for the `fill_behavior`\nTerraform sub block.\n\n\n\n**Args**:\n  - `initial_prompt_fulfillment` (`list[obj]`): The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter. When `null`, the `initial_prompt_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.new](#fn-formformparametersinitial_prompt_fulfillmentnew) constructor.\n  - `reprompt_event_handlers` (`list[obj]`): The handlers for parameter-level events, used to provide reprompt for the parameter or transition to a different page/flow. The supported events are:\n* sys.no-match-&lt;N&gt;, where N can be from 1 to 6\n* sys.no-match-default\n* sys.no-input-&lt;N&gt;, where N can be from 1 to 6\n* sys.no-input-default\n* sys.invalid-parameter\n[initialPromptFulfillment][initialPromptFulfillment] provides the first prompt for the parameter.\nIf the user&#39;s response does not fill the parameter, a no-match/no-input event will be triggered, and the fulfillment associated with the sys.no-match-1/sys.no-input-1 handler (if defined) will be called to provide a prompt. The sys.no-match-2/sys.no-input-2 handler (if defined) will respond to the next no-match/no-input event, and so on.\nA sys.no-match-default or sys.no-input-default handler will be used to handle all following no-match/no-input events after all numbered no-match/no-input handlers for the parameter are consumed.\nA sys.invalid-parameter handler can be defined to handle the case where the parameter values have been invalidated by webhook. For example, if the user&#39;s response fill the parameter, however the parameter was invalidated by webhook, the fulfillment associated with the sys.invalid-parameter handler (if defined) will be called to provide a prompt.\nIf the event handler for the corresponding event can&#39;t be found on the parameter, initialPromptFulfillment will be re-prompted. When `null`, the `reprompt_event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.new](#fn-formformparametersreprompt_event_handlersnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `fill_behavior` sub block.\n', args=[]),
        new(
          initial_prompt_fulfillment=null,
          reprompt_event_handlers=null
        ):: std.prune(a={
          initial_prompt_fulfillment: initial_prompt_fulfillment,
          reprompt_event_handlers: reprompt_event_handlers,
        }),
        reprompt_event_handlers:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.new` constructs a new object with attributes and blocks configured for the `reprompt_event_handlers`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event` (`string`): The name of the event to handle. When `null`, the `event` field will be omitted from the resulting object.\n  - `target_flow` (`string`): The target flow to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.\n  - `target_page` (`string`): The target page to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.\n  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.new](#fn-formformparametersfill_behaviortrigger_fulfillmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `reprompt_event_handlers` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
              new(
                cases=null
              ):: std.prune(a={
                cases: cases,
              }),
            },
            messages:: {
              conversation_success:: {
                '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
                new(
                  metadata=null
                ):: std.prune(a={
                  metadata: metadata,
                }),
              },
              live_agent_handoff:: {
                '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
                new(
                  metadata=null
                ):: std.prune(a={
                  metadata: metadata,
                }),
              },
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.conversation_success.new](#fn-formformparametersfill_behaviorreprompt_event_handlerstrigger_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.live_agent_handoff.new](#fn-formformparametersfill_behaviorreprompt_event_handlerstrigger_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.output_audio_text.new](#fn-formformparametersfill_behaviorreprompt_event_handlerstrigger_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.play_audio.new](#fn-formformparametersfill_behaviorreprompt_event_handlerstrigger_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.telephony_transfer_call.new](#fn-formformparametersfill_behaviorreprompt_event_handlerstrigger_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.text.new](#fn-formformparametersfill_behaviorreprompt_event_handlerstrigger_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
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
                '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
                new(
                  ssml=null,
                  text=null
                ):: std.prune(a={
                  ssml: ssml,
                  text: text,
                }),
              },
              play_audio:: {
                '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
                new(
                  audio_uri
                ):: std.prune(a={
                  audio_uri: audio_uri,
                }),
              },
              telephony_transfer_call:: {
                '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
                new(
                  phone_number
                ):: std.prune(a={
                  phone_number: phone_number,
                }),
              },
              text:: {
                '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
                new(
                  text=null
                ):: std.prune(a={
                  text: text,
                }),
              },
            },
            '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.conditional_cases.new](#fn-formformparametersfill_behaviorreprompt_event_handlersconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.messages.new](#fn-formformparametersfill_behaviorreprompt_event_handlersmessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.set_parameter_actions.new](#fn-formformparametersfill_behaviorreprompt_event_handlersset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.fill_behavior.reprompt_event_handlers.trigger_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
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
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.form.parameters.new` constructs a new object with attributes and blocks configured for the `parameters`\nTerraform sub block.\n\n\n\n**Args**:\n  - `default_value` (`string`): The default value of an optional parameter. If the parameter is required, the default value will be ignored. When `null`, the `default_value` field will be omitted from the resulting object.\n  - `display_name` (`string`): The human-readable name of the parameter, unique within the form. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `entity_type` (`string`): The entity type of the parameter.\nFormat: projects/-/locations/-/agents/-/entityTypes/&lt;System Entity Type ID&gt; for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/entityTypes/&lt;Entity Type ID&gt; for developer entity types. When `null`, the `entity_type` field will be omitted from the resulting object.\n  - `is_list` (`bool`): Indicates whether the parameter represents a list of values. When `null`, the `is_list` field will be omitted from the resulting object.\n  - `redact` (`bool`): Indicates whether the parameter content should be redacted in log.\nIf redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. When `null`, the `redact` field will be omitted from the resulting object.\n  - `required` (`bool`): Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.\nRequired parameters must be filled before form filling concludes. When `null`, the `required` field will be omitted from the resulting object.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this parameter. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.advanced_settings.new](#fn-formformadvanced_settingsnew) constructor.\n  - `fill_behavior` (`list[obj]`): Defines fill behavior for the parameter. When `null`, the `fill_behavior` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.new](#fn-formformfill_behaviornew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `parameters` sub block.\n', args=[]),
      new(
        advanced_settings=null,
        default_value=null,
        display_name=null,
        entity_type=null,
        fill_behavior=null,
        is_list=null,
        redact=null,
        required=null
      ):: std.prune(a={
        advanced_settings: advanced_settings,
        default_value: default_value,
        display_name: display_name,
        entity_type: entity_type,
        fill_behavior: fill_behavior,
        is_list: is_list,
        redact: redact,
        required: required,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.dialogflow_cx_page.new` injects a new `google_dialogflow_cx_page` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_page.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_page` using the reference:\n\n    $._ref.google_dialogflow_cx_page.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_page.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The human-readable name of the page, unique within the agent.\n  - `language_code` (`string`): The language of the following fields in page:\n\nPage.entry_fulfillment.messages\nPage.entry_fulfillment.conditional_cases\nPage.event_handlers.trigger_fulfillment.messages\nPage.event_handlers.trigger_fulfillment.conditional_cases\nPage.form.parameters.fill_behavior.initial_prompt_fulfillment.messages\nPage.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases\nPage.form.parameters.fill_behavior.reprompt_event_handlers.messages\nPage.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases\nPage.transition_routes.trigger_fulfillment.messages\nPage.transition_routes.trigger_fulfillment.conditional_cases\nIf not specified, the agent\u0026#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The flow to create a page for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;/flows/\u0026lt;Flow ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `transition_route_groups` (`list`): Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.\nIf multiple transition routes within a page scope refer to the same intent, then the precedence order is: page\u0026#39;s transition route -\u0026gt; page\u0026#39;s transition route group -\u0026gt; flow\u0026#39;s transition routes.\nIf multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.\nFormat:projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;/flows/\u0026lt;Flow ID\u0026gt;/transitionRouteGroups/\u0026lt;TransitionRouteGroup ID\u0026gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-\u0026gt;Flow-\u0026gt;Page-\u0026gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.advanced_settings.new](#fn-advanced_settingsnew) constructor.\n  - `entry_fulfillment` (`list[obj]`): The fulfillment to call when the session is entering the page. When `null`, the `entry_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.new](#fn-entry_fulfillmentnew) constructor.\n  - `event_handlers` (`list[obj]`): Handlers associated with the page to handle events such as webhook errors, no match or no input. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.new](#fn-event_handlersnew) constructor.\n  - `form` (`list[obj]`): The form associated with the page, used for collecting parameters relevant to the page. When `null`, the `form` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.new](#fn-formnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.timeouts.new](#fn-timeoutsnew) constructor.\n  - `transition_routes` (`list[obj]`): A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.\nWhen we are in a certain page, the TransitionRoutes are evalauted in the following order:\nTransitionRoutes defined in the page with intent specified.\nTransitionRoutes defined in the transition route groups with intent specified.\nTransitionRoutes defined in flow with intent specified.\nTransitionRoutes defined in the transition route groups with intent specified.\nTransitionRoutes defined in the page with only condition specified.\nTransitionRoutes defined in the transition route groups with only condition specified. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.new](#fn-transition_routesnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    advanced_settings=null,
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
      advanced_settings=advanced_settings,
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
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_page.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_page`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_page.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The human-readable name of the page, unique within the agent.\n  - `language_code` (`string`): The language of the following fields in page:\n\nPage.entry_fulfillment.messages\nPage.entry_fulfillment.conditional_cases\nPage.event_handlers.trigger_fulfillment.messages\nPage.event_handlers.trigger_fulfillment.conditional_cases\nPage.form.parameters.fill_behavior.initial_prompt_fulfillment.messages\nPage.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases\nPage.form.parameters.fill_behavior.reprompt_event_handlers.messages\nPage.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases\nPage.transition_routes.trigger_fulfillment.messages\nPage.transition_routes.trigger_fulfillment.conditional_cases\nIf not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `parent` (`string`): The flow to create a page for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `transition_route_groups` (`list`): Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.\nIf multiple transition routes within a page scope refer to the same intent, then the precedence order is: page&#39;s transition route -&gt; page&#39;s transition route group -&gt; flow&#39;s transition routes.\nIf multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.\nFormat:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.\n  - `advanced_settings` (`list[obj]`): Hierarchical advanced settings for this page. The settings exposed at the lower level overrides the settings exposed at the higher level.\nHierarchy: Agent-&gt;Flow-&gt;Page-&gt;Fulfillment/Parameter. When `null`, the `advanced_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.advanced_settings.new](#fn-advanced_settingsnew) constructor.\n  - `entry_fulfillment` (`list[obj]`): The fulfillment to call when the session is entering the page. When `null`, the `entry_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.new](#fn-entry_fulfillmentnew) constructor.\n  - `event_handlers` (`list[obj]`): Handlers associated with the page to handle events such as webhook errors, no match or no input. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.new](#fn-event_handlersnew) constructor.\n  - `form` (`list[obj]`): The form associated with the page, used for collecting parameters relevant to the page. When `null`, the `form` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.new](#fn-formnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.timeouts.new](#fn-timeoutsnew) constructor.\n  - `transition_routes` (`list[obj]`): A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.\nWhen we are in a certain page, the TransitionRoutes are evalauted in the following order:\nTransitionRoutes defined in the page with intent specified.\nTransitionRoutes defined in the transition route groups with intent specified.\nTransitionRoutes defined in flow with intent specified.\nTransitionRoutes defined in the transition route groups with intent specified.\nTransitionRoutes defined in the page with only condition specified.\nTransitionRoutes defined in the transition route groups with only condition specified. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.new](#fn-transition_routesnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_page` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    advanced_settings=null,
    entry_fulfillment=null,
    event_handlers=null,
    form=null,
    language_code=null,
    parent=null,
    timeouts=null,
    transition_route_groups=null,
    transition_routes=null
  ):: std.prune(a={
    advanced_settings: advanced_settings,
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_page.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.new` constructs a new object with attributes and blocks configured for the `transition_routes`\nTerraform sub block.\n\n\n\n**Args**:\n  - `condition` (`string`): The condition to evaluate against form parameters or session parameters.\nAt least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. When `null`, the `condition` field will be omitted from the resulting object.\n  - `intent` (`string`): The unique identifier of an Intent.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. When `null`, the `intent` field will be omitted from the resulting object.\n  - `target_flow` (`string`): The target flow to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.\n  - `target_page` (`string`): The target page to transition to.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.\n  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.new](#fn-transition_routestrigger_fulfillmentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `transition_routes` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.conditional_cases.new` constructs a new object with attributes and blocks configured for the `conditional_cases`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cases` (`string`): A JSON encoded list of cascading if-else conditions. Cases are mutually exclusive. The first one with a matching condition is selected, all the rest ignored.\nSee [Case](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/Fulfillment#case) for the schema. When `null`, the `cases` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conditional_cases` sub block.\n', args=[]),
        new(
          cases=null
        ):: std.prune(a={
          cases: cases,
        }),
      },
      messages:: {
        conversation_success:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.conversation_success.new` constructs a new object with attributes and blocks configured for the `conversation_success`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `conversation_success` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        live_agent_handoff:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.live_agent_handoff.new` constructs a new object with attributes and blocks configured for the `live_agent_handoff`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`string`): Custom metadata. Dialogflow doesn&#39;t impose any structure on this. When `null`, the `metadata` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `live_agent_handoff` sub block.\n', args=[]),
          new(
            metadata=null
          ):: std.prune(a={
            metadata: metadata,
          }),
        },
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `channel` (`string`): The channel which the response is associated with. Clients can specify the channel via QueryParameters.channel, and only associated channel response will be returned. When `null`, the `channel` field will be omitted from the resulting object.\n  - `payload` (`string`): A custom, platform-specific payload. When `null`, the `payload` field will be omitted from the resulting object.\n  - `conversation_success` (`list[obj]`): Indicates that the conversation succeeded, i.e., the bot handled the issue that the customer talked to it about.\nDialogflow only uses this to determine which conversations should be counted as successful and doesn&#39;t process the metadata in this message in any way. Note that Dialogflow also considers conversations that get to the conversation end page as successful even if they don&#39;t return ConversationSuccess.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates that the conversation succeeded.\n* In a webhook response when you determine that you handled the customer issue. When `null`, the `conversation_success` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.conversation_success.new](#fn-transition_routestransition_routestrigger_fulfillmentconversation_successnew) constructor.\n  - `live_agent_handoff` (`list[obj]`): Indicates that the conversation should be handed off to a live agent.\nDialogflow only uses this to determine which conversations were handed off to a human agent for measurement purposes. What else to do with this signal is up to you and your handoff procedures.\nYou may set this, for example:\n* In the entryFulfillment of a Page if entering the page indicates something went extremely wrong in the conversation.\n* In a webhook response when you determine that the customer issue can only be handled by a human. When `null`, the `live_agent_handoff` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.live_agent_handoff.new](#fn-transition_routestransition_routestrigger_fulfillmentlive_agent_handoffnew) constructor.\n  - `output_audio_text` (`list[obj]`): A text or ssml response that is preferentially used for TTS output audio synthesis, as described in the comment on the ResponseMessage message. When `null`, the `output_audio_text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.output_audio_text.new](#fn-transition_routestransition_routestrigger_fulfillmentoutput_audio_textnew) constructor.\n  - `play_audio` (`list[obj]`): Specifies an audio clip to be played by the client as part of the response. When `null`, the `play_audio` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.play_audio.new](#fn-transition_routestransition_routestrigger_fulfillmentplay_audionew) constructor.\n  - `telephony_transfer_call` (`list[obj]`): Represents the signal that telles the client to transfer the phone call connected to the agent to a third-party endpoint. When `null`, the `telephony_transfer_call` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.telephony_transfer_call.new](#fn-transition_routestransition_routestrigger_fulfillmenttelephony_transfer_callnew) constructor.\n  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.text.new](#fn-transition_routestransition_routestrigger_fulfillmenttextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `messages` sub block.\n', args=[]),
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
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.output_audio_text.new` constructs a new object with attributes and blocks configured for the `output_audio_text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ssml` (`string`): The SSML text to be synthesized. For more information, see SSML. When `null`, the `ssml` field will be omitted from the resulting object.\n  - `text` (`string`): The raw text to be synthesized. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `output_audio_text` sub block.\n', args=[]),
          new(
            ssml=null,
            text=null
          ):: std.prune(a={
            ssml: ssml,
            text: text,
          }),
        },
        play_audio:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.play_audio.new` constructs a new object with attributes and blocks configured for the `play_audio`\nTerraform sub block.\n\n\n\n**Args**:\n  - `audio_uri` (`string`): URI of the audio clip. Dialogflow does not impose any validation on this value. It is specific to the client that reads it.\n\n**Returns**:\n  - An attribute object that represents the `play_audio` sub block.\n', args=[]),
          new(
            audio_uri
          ):: std.prune(a={
            audio_uri: audio_uri,
          }),
        },
        telephony_transfer_call:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.telephony_transfer_call.new` constructs a new object with attributes and blocks configured for the `telephony_transfer_call`\nTerraform sub block.\n\n\n\n**Args**:\n  - `phone_number` (`string`): Transfer the call to a phone number in E.164 format.\n\n**Returns**:\n  - An attribute object that represents the `telephony_transfer_call` sub block.\n', args=[]),
          new(
            phone_number
          ):: std.prune(a={
            phone_number: phone_number,
          }),
        },
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text=null
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.\n  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.\n  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.\n  - `conditional_cases` (`list[obj]`): Conditional cases for this fulfillment. When `null`, the `conditional_cases` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.conditional_cases.new](#fn-transition_routestransition_routesconditional_casesnew) constructor.\n  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.new](#fn-transition_routestransition_routesmessagesnew) constructor.\n  - `set_parameter_actions` (`list[obj]`): Set parameter values before executing the webhook. When `null`, the `set_parameter_actions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.set_parameter_actions.new](#fn-transition_routestransition_routesset_parameter_actionsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `trigger_fulfillment` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.set_parameter_actions.new` constructs a new object with attributes and blocks configured for the `set_parameter_actions`\nTerraform sub block.\n\n\n\n**Args**:\n  - `parameter` (`string`): Display name of the parameter. When `null`, the `parameter` field will be omitted from the resulting object.\n  - `value` (`string`): The new JSON-encoded value of the parameter. A null value clears the parameter. When `null`, the `value` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `set_parameter_actions` sub block.\n', args=[]),
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
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          advanced_settings: value,
        },
      },
    },
  },
  '#withAdvancedSettingsMixin':: d.fn(help='`google.list[obj].withAdvancedSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the advanced_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `advanced_settings` field.\n', args=[]),
  withAdvancedSettingsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          advanced_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEntryFulfillment':: d.fn(help='`google.list[obj].withEntryFulfillment` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entry_fulfillment field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEntryFulfillmentMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entry_fulfillment` field.\n', args=[]),
  withEntryFulfillment(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          entry_fulfillment: value,
        },
      },
    },
  },
  '#withEntryFulfillmentMixin':: d.fn(help='`google.list[obj].withEntryFulfillmentMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the entry_fulfillment field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEntryFulfillment](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `entry_fulfillment` field.\n', args=[]),
  withEntryFulfillmentMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          entry_fulfillment+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withEventHandlers':: d.fn(help='`google.list[obj].withEventHandlers` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_handlers field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEventHandlersMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_handlers` field.\n', args=[]),
  withEventHandlers(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          event_handlers: value,
        },
      },
    },
  },
  '#withEventHandlersMixin':: d.fn(help='`google.list[obj].withEventHandlersMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the event_handlers field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEventHandlers](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `event_handlers` field.\n', args=[]),
  withEventHandlersMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          event_handlers+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForm':: d.fn(help='`google.list[obj].withForm` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the form field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFormMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `form` field.\n', args=[]),
  withForm(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          form: value,
        },
      },
    },
  },
  '#withFormMixin':: d.fn(help='`google.list[obj].withFormMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the form field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withForm](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `form` field.\n', args=[]),
  withFormMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          form+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLanguageCode':: d.fn(help='`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the language_code field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `language_code` field.\n', args=[]),
  withLanguageCode(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          language_code: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withTransitionRouteGroups':: d.fn(help='`google.list.withTransitionRouteGroups` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the transition_route_groups field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `transition_route_groups` field.\n', args=[]),
  withTransitionRouteGroups(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          transition_route_groups: value,
        },
      },
    },
  },
  '#withTransitionRoutes':: d.fn(help='`google.list[obj].withTransitionRoutes` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transition_routes field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTransitionRoutesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transition_routes` field.\n', args=[]),
  withTransitionRoutes(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          transition_routes: value,
        },
      },
    },
  },
  '#withTransitionRoutesMixin':: d.fn(help='`google.list[obj].withTransitionRoutesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the transition_routes field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTransitionRoutes](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `transition_routes` field.\n', args=[]),
  withTransitionRoutesMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_page+: {
        [resourceLabel]+: {
          transition_routes+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

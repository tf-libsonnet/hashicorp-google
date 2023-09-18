local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dialogflow_cx_test_case', url='', help='`dialogflow_cx_test_case` represents the `google_dialogflow_cx_test_case` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.dialogflow_cx_test_case.new` injects a new `google_dialogflow_cx_test_case` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dialogflow_cx_test_case.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dialogflow_cx_test_case` using the reference:\n\n    $._ref.google_dialogflow_cx_test_case.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dialogflow_cx_test_case.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): The human-readable name of the test case, unique within the agent. Limit of 200 characters.\n  - `notes` (`string`): Additional freeform notes about the test case. Limit of 400 characters. When `null`, the `notes` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create the test case for.\nFormat: projects/\u0026lt;Project ID\u0026gt;/locations/\u0026lt;Location ID\u0026gt;/agents/\u0026lt;Agent ID\u0026gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.\nEach tag should start with \u0026#34;#\u0026#34; and has a limit of 30 characters When `null`, the `tags` field will be omitted from the resulting object.\n  - `test_case_conversation_turns` (`list[obj]`): The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly. When `null`, the `test_case_conversation_turns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.new](#fn-test_case_conversation_turnsnew) constructor.\n  - `test_config` (`list[obj]`): Config for the test case. When `null`, the `test_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_config.new](#fn-test_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    notes=null,
    parent=null,
    tags=null,
    test_case_conversation_turns=null,
    test_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_test_case',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      notes=notes,
      parent=parent,
      tags=tags,
      test_case_conversation_turns=test_case_conversation_turns,
      test_config=test_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dialogflow_cx_test_case.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_test_case`\nTerraform resource.\n\nUnlike [google.dialogflow_cx_test_case.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): The human-readable name of the test case, unique within the agent. Limit of 200 characters.\n  - `notes` (`string`): Additional freeform notes about the test case. Limit of 400 characters. When `null`, the `notes` field will be omitted from the resulting object.\n  - `parent` (`string`): The agent to create the test case for.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.\n  - `tags` (`list`): Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.\nEach tag should start with &#34;#&#34; and has a limit of 30 characters When `null`, the `tags` field will be omitted from the resulting object.\n  - `test_case_conversation_turns` (`list[obj]`): The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly. When `null`, the `test_case_conversation_turns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.new](#fn-test_case_conversation_turnsnew) constructor.\n  - `test_config` (`list[obj]`): Config for the test case. When `null`, the `test_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_config.new](#fn-test_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_test_case` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    notes=null,
    parent=null,
    tags=null,
    test_case_conversation_turns=null,
    test_config=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    notes: notes,
    parent: parent,
    tags: tags,
    test_case_conversation_turns: test_case_conversation_turns,
    test_config: test_config,
    timeouts: timeouts,
  }),
  test_case_conversation_turns:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.new` constructs a new object with attributes and blocks configured for the `test_case_conversation_turns`\nTerraform sub block.\n\n\n\n**Args**:\n  - `user_input` (`list[obj]`): The user input. When `null`, the `user_input` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.new](#fn-test_case_conversation_turnsuser_inputnew) constructor.\n  - `virtual_agent_output` (`list[obj]`): The virtual agent output. When `null`, the `virtual_agent_output` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.new](#fn-test_case_conversation_turnsvirtual_agent_outputnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `test_case_conversation_turns` sub block.\n', args=[]),
    new(
      user_input=null,
      virtual_agent_output=null
    ):: std.prune(a={
      user_input: user_input,
      virtual_agent_output: virtual_agent_output,
    }),
    user_input:: {
      input:: {
        dtmf:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.dtmf.new` constructs a new object with attributes and blocks configured for the `dtmf`\nTerraform sub block.\n\n\n\n**Args**:\n  - `digits` (`string`): The dtmf digits. When `null`, the `digits` field will be omitted from the resulting object.\n  - `finish_digit` (`string`): The finish digit (if any). When `null`, the `finish_digit` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `dtmf` sub block.\n', args=[]),
          new(
            digits=null,
            finish_digit=null
          ):: std.prune(a={
            digits: digits,
            finish_digit: finish_digit,
          }),
        },
        event:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.event.new` constructs a new object with attributes and blocks configured for the `event`\nTerraform sub block.\n\n\n\n**Args**:\n  - `event` (`string`): Name of the event.\n\n**Returns**:\n  - An attribute object that represents the `event` sub block.\n', args=[]),
          new(
            event
          ):: std.prune(a={
            event: event,
          }),
        },
        '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.new` constructs a new object with attributes and blocks configured for the `input`\nTerraform sub block.\n\n\n\n**Args**:\n  - `language_code` (`string`): The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.\nNote that queries in the same session do not necessarily need to specify the same language. When `null`, the `language_code` field will be omitted from the resulting object.\n  - `dtmf` (`list[obj]`): The DTMF event to be handled. When `null`, the `dtmf` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.dtmf.new](#fn-test_case_conversation_turnstest_case_conversation_turnsuser_inputdtmfnew) constructor.\n  - `event` (`list[obj]`): The event to be triggered. When `null`, the `event` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.event.new](#fn-test_case_conversation_turnstest_case_conversation_turnsuser_inputeventnew) constructor.\n  - `text` (`list[obj]`): The natural language text to be processed. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.text.new](#fn-test_case_conversation_turnstest_case_conversation_turnsuser_inputtextnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `input` sub block.\n', args=[]),
        new(
          dtmf=null,
          event=null,
          language_code=null,
          text=null
        ):: std.prune(a={
          dtmf: dtmf,
          event: event,
          language_code: language_code,
          text: text,
        }),
        text:: {
          '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.text.new` constructs a new object with attributes and blocks configured for the `text`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`string`): The natural language text to be processed. Text length must not exceed 256 characters.\n\n**Returns**:\n  - An attribute object that represents the `text` sub block.\n', args=[]),
          new(
            text
          ):: std.prune(a={
            text: text,
          }),
        },
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.new` constructs a new object with attributes and blocks configured for the `user_input`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enable_sentiment_analysis` (`bool`): Whether sentiment analysis is enabled. When `null`, the `enable_sentiment_analysis` field will be omitted from the resulting object.\n  - `injected_parameters` (`string`): Parameters that need to be injected into the conversation during intent detection. When `null`, the `injected_parameters` field will be omitted from the resulting object.\n  - `is_webhook_enabled` (`bool`): If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled. When `null`, the `is_webhook_enabled` field will be omitted from the resulting object.\n  - `input` (`list[obj]`): User input. Supports text input, event input, dtmf input in the test case. When `null`, the `input` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.new](#fn-test_case_conversation_turnstest_case_conversation_turnsinputnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `user_input` sub block.\n', args=[]),
      new(
        enable_sentiment_analysis=null,
        injected_parameters=null,
        input=null,
        is_webhook_enabled=null
      ):: std.prune(a={
        enable_sentiment_analysis: enable_sentiment_analysis,
        injected_parameters: injected_parameters,
        input: input,
        is_webhook_enabled: is_webhook_enabled,
      }),
    },
    virtual_agent_output:: {
      current_page:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.current_page.new` constructs a new object with attributes and blocks configured for the `current_page`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The unique identifier of the page.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `current_page` sub block.\n', args=[]),
        new(
          name=null
        ):: std.prune(a={
          name: name,
        }),
      },
      '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.new` constructs a new object with attributes and blocks configured for the `virtual_agent_output`\nTerraform sub block.\n\n\n\n**Args**:\n  - `session_parameters` (`string`): The session parameters available to the bot at this point. When `null`, the `session_parameters` field will be omitted from the resulting object.\n  - `current_page` (`list[obj]`): The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken. When `null`, the `current_page` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.current_page.new](#fn-test_case_conversation_turnstest_case_conversation_turnscurrent_pagenew) constructor.\n  - `text_responses` (`list[obj]`): The text responses from the agent for the turn. When `null`, the `text_responses` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.text_responses.new](#fn-test_case_conversation_turnstest_case_conversation_turnstext_responsesnew) constructor.\n  - `triggered_intent` (`list[obj]`): The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response. When `null`, the `triggered_intent` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.triggered_intent.new](#fn-test_case_conversation_turnstest_case_conversation_turnstriggered_intentnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `virtual_agent_output` sub block.\n', args=[]),
      new(
        current_page=null,
        session_parameters=null,
        text_responses=null,
        triggered_intent=null
      ):: std.prune(a={
        current_page: current_page,
        session_parameters: session_parameters,
        text_responses: text_responses,
        triggered_intent: triggered_intent,
      }),
      text_responses:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.text_responses.new` constructs a new object with attributes and blocks configured for the `text_responses`\nTerraform sub block.\n\n\n\n**Args**:\n  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `text_responses` sub block.\n', args=[]),
        new(
          text=null
        ):: std.prune(a={
          text: text,
        }),
      },
      triggered_intent:: {
        '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.triggered_intent.new` constructs a new object with attributes and blocks configured for the `triggered_intent`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The unique identifier of the intent.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `triggered_intent` sub block.\n', args=[]),
        new(
          name=null
        ):: std.prune(a={
          name: name,
        }),
      },
    },
  },
  test_config:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.test_config.new` constructs a new object with attributes and blocks configured for the `test_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `flow` (`string`): Flow name to start the test case with.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.\nOnly one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow. When `null`, the `flow` field will be omitted from the resulting object.\n  - `page` (`string`): The page to start the test case with.\nFormat: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.\nOnly one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow. When `null`, the `page` field will be omitted from the resulting object.\n  - `tracking_parameters` (`list`): Session parameters to be compared when calculating differences. When `null`, the `tracking_parameters` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `test_config` sub block.\n', args=[]),
    new(
      flow=null,
      page=null,
      tracking_parameters=null
    ):: std.prune(a={
      flow: flow,
      page: page,
      tracking_parameters: tracking_parameters,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dialogflow_cx_test_case.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withNotes':: d.fn(help='`google.string.withNotes` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the notes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `notes` field.\n', args=[]),
  withNotes(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          notes: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTags':: d.fn(help='`google.list.withTags` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the tags field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `tags` field.\n', args=[]),
  withTags(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          tags: value,
        },
      },
    },
  },
  '#withTestCaseConversationTurns':: d.fn(help='`google.list[obj].withTestCaseConversationTurns` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the test_case_conversation_turns field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTestCaseConversationTurnsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `test_case_conversation_turns` field.\n', args=[]),
  withTestCaseConversationTurns(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          test_case_conversation_turns: value,
        },
      },
    },
  },
  '#withTestCaseConversationTurnsMixin':: d.fn(help='`google.list[obj].withTestCaseConversationTurnsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the test_case_conversation_turns field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTestCaseConversationTurns](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `test_case_conversation_turns` field.\n', args=[]),
  withTestCaseConversationTurnsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          test_case_conversation_turns+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTestConfig':: d.fn(help='`google.list[obj].withTestConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the test_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withTestConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `test_config` field.\n', args=[]),
  withTestConfig(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          test_config: value,
        },
      },
    },
  },
  '#withTestConfigMixin':: d.fn(help='`google.list[obj].withTestConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the test_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withTestConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `test_config` field.\n', args=[]),
  withTestConfigMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          test_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dialogflow_cx_test_case+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

---
permalink: /dialogflow_cx_test_case/
---

# dialogflow_cx_test_case

`dialogflow_cx_test_case` represents the `google_dialogflow_cx_test_case` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withNotes()`](#fn-withnotes)
* [`fn withParent()`](#fn-withparent)
* [`fn withTags()`](#fn-withtags)
* [`fn withTestCaseConversationTurns()`](#fn-withtestcaseconversationturns)
* [`fn withTestCaseConversationTurnsMixin()`](#fn-withtestcaseconversationturnsmixin)
* [`fn withTestConfig()`](#fn-withtestconfig)
* [`fn withTestConfigMixin()`](#fn-withtestconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj test_case_conversation_turns`](#obj-test_case_conversation_turns)
  * [`fn new()`](#fn-test_case_conversation_turnsnew)
  * [`obj test_case_conversation_turns.user_input`](#obj-test_case_conversation_turnsuser_input)
    * [`fn new()`](#fn-test_case_conversation_turnsuser_inputnew)
    * [`obj test_case_conversation_turns.user_input.input`](#obj-test_case_conversation_turnsuser_inputinput)
      * [`fn new()`](#fn-test_case_conversation_turnsuser_inputinputnew)
      * [`obj test_case_conversation_turns.user_input.input.dtmf`](#obj-test_case_conversation_turnsuser_inputinputdtmf)
        * [`fn new()`](#fn-test_case_conversation_turnsuser_inputinputdtmfnew)
      * [`obj test_case_conversation_turns.user_input.input.event`](#obj-test_case_conversation_turnsuser_inputinputevent)
        * [`fn new()`](#fn-test_case_conversation_turnsuser_inputinputeventnew)
      * [`obj test_case_conversation_turns.user_input.input.text`](#obj-test_case_conversation_turnsuser_inputinputtext)
        * [`fn new()`](#fn-test_case_conversation_turnsuser_inputinputtextnew)
  * [`obj test_case_conversation_turns.virtual_agent_output`](#obj-test_case_conversation_turnsvirtual_agent_output)
    * [`fn new()`](#fn-test_case_conversation_turnsvirtual_agent_outputnew)
    * [`obj test_case_conversation_turns.virtual_agent_output.current_page`](#obj-test_case_conversation_turnsvirtual_agent_outputcurrent_page)
      * [`fn new()`](#fn-test_case_conversation_turnsvirtual_agent_outputcurrent_pagenew)
    * [`obj test_case_conversation_turns.virtual_agent_output.text_responses`](#obj-test_case_conversation_turnsvirtual_agent_outputtext_responses)
      * [`fn new()`](#fn-test_case_conversation_turnsvirtual_agent_outputtext_responsesnew)
    * [`obj test_case_conversation_turns.virtual_agent_output.triggered_intent`](#obj-test_case_conversation_turnsvirtual_agent_outputtriggered_intent)
      * [`fn new()`](#fn-test_case_conversation_turnsvirtual_agent_outputtriggered_intentnew)
* [`obj test_config`](#obj-test_config)
  * [`fn new()`](#fn-test_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_test_case.new` injects a new `google_dialogflow_cx_test_case` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_test_case.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_test_case` using the reference:

    $._ref.google_dialogflow_cx_test_case.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_test_case.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  - `notes` (`string`): Additional freeform notes about the test case. Limit of 400 characters. When `null`, the `notes` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create the test case for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `tags` (`list`): Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
Each tag should start with &#34;#&#34; and has a limit of 30 characters When `null`, the `tags` field will be omitted from the resulting object.
  - `test_case_conversation_turns` (`list[obj]`): The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly. When `null`, the `test_case_conversation_turns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.new](#fn-test_case_conversation_turnsnew) constructor.
  - `test_config` (`list[obj]`): Config for the test case. When `null`, the `test_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_config.new](#fn-test_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_test_case.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_test_case`
Terraform resource.

Unlike [google.dialogflow_cx_test_case.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  - `notes` (`string`): Additional freeform notes about the test case. Limit of 400 characters. When `null`, the `notes` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create the test case for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `tags` (`list`): Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
Each tag should start with &#34;#&#34; and has a limit of 30 characters When `null`, the `tags` field will be omitted from the resulting object.
  - `test_case_conversation_turns` (`list[obj]`): The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly. When `null`, the `test_case_conversation_turns` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.new](#fn-test_case_conversation_turnsnew) constructor.
  - `test_config` (`list[obj]`): Config for the test case. When `null`, the `test_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_config.new](#fn-test_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_test_case` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withNotes

```ts
withNotes()
```

`google.string.withNotes` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the notes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `notes` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withTags

```ts
withTags()
```

`google.list.withTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `tags` field.


### fn withTestCaseConversationTurns

```ts
withTestCaseConversationTurns()
```

`google.list[obj].withTestCaseConversationTurns` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the test_case_conversation_turns field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTestCaseConversationTurnsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `test_case_conversation_turns` field.


### fn withTestCaseConversationTurnsMixin

```ts
withTestCaseConversationTurnsMixin()
```

`google.list[obj].withTestCaseConversationTurnsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the test_case_conversation_turns field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTestCaseConversationTurns](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `test_case_conversation_turns` field.


### fn withTestConfig

```ts
withTestConfig()
```

`google.list[obj].withTestConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the test_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTestConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `test_config` field.


### fn withTestConfigMixin

```ts
withTestConfigMixin()
```

`google.list[obj].withTestConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the test_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTestConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `test_config` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will replace the map with the passed in `value`. If you wish to instead merge the
passed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.

**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `timeouts` field.


## obj test_case_conversation_turns



### fn test_case_conversation_turns.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.new` constructs a new object with attributes and blocks configured for the `test_case_conversation_turns`
Terraform sub block.



**Args**:
  - `user_input` (`list[obj]`): The user input. When `null`, the `user_input` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.new](#fn-test_case_conversation_turnsuser_inputnew) constructor.
  - `virtual_agent_output` (`list[obj]`): The virtual agent output. When `null`, the `virtual_agent_output` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.new](#fn-test_case_conversation_turnsvirtual_agent_outputnew) constructor.

**Returns**:
  - An attribute object that represents the `test_case_conversation_turns` sub block.


## obj test_case_conversation_turns.user_input



### fn test_case_conversation_turns.user_input.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.new` constructs a new object with attributes and blocks configured for the `user_input`
Terraform sub block.



**Args**:
  - `enable_sentiment_analysis` (`bool`): Whether sentiment analysis is enabled. When `null`, the `enable_sentiment_analysis` field will be omitted from the resulting object.
  - `injected_parameters` (`string`): Parameters that need to be injected into the conversation during intent detection. When `null`, the `injected_parameters` field will be omitted from the resulting object.
  - `is_webhook_enabled` (`bool`): If webhooks should be allowed to trigger in response to the user utterance. Often if parameters are injected, webhooks should not be enabled. When `null`, the `is_webhook_enabled` field will be omitted from the resulting object.
  - `input` (`list[obj]`): User input. Supports text input, event input, dtmf input in the test case. When `null`, the `input` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.new](#fn-test_case_conversation_turnstest_case_conversation_turnsinputnew) constructor.

**Returns**:
  - An attribute object that represents the `user_input` sub block.


## obj test_case_conversation_turns.user_input.input



### fn test_case_conversation_turns.user_input.input.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.new` constructs a new object with attributes and blocks configured for the `input`
Terraform sub block.



**Args**:
  - `language_code` (`string`): The language of the input. See [Language Support](https://cloud.google.com/dialogflow/cx/docs/reference/language) for a list of the currently supported language codes.
Note that queries in the same session do not necessarily need to specify the same language. When `null`, the `language_code` field will be omitted from the resulting object.
  - `dtmf` (`list[obj]`): The DTMF event to be handled. When `null`, the `dtmf` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.dtmf.new](#fn-test_case_conversation_turnstest_case_conversation_turnsuser_inputdtmfnew) constructor.
  - `event` (`list[obj]`): The event to be triggered. When `null`, the `event` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.event.new](#fn-test_case_conversation_turnstest_case_conversation_turnsuser_inputeventnew) constructor.
  - `text` (`list[obj]`): The natural language text to be processed. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.text.new](#fn-test_case_conversation_turnstest_case_conversation_turnsuser_inputtextnew) constructor.

**Returns**:
  - An attribute object that represents the `input` sub block.


## obj test_case_conversation_turns.user_input.input.dtmf



### fn test_case_conversation_turns.user_input.input.dtmf.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.dtmf.new` constructs a new object with attributes and blocks configured for the `dtmf`
Terraform sub block.



**Args**:
  - `digits` (`string`): The dtmf digits. When `null`, the `digits` field will be omitted from the resulting object.
  - `finish_digit` (`string`): The finish digit (if any). When `null`, the `finish_digit` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `dtmf` sub block.


## obj test_case_conversation_turns.user_input.input.event



### fn test_case_conversation_turns.user_input.input.event.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.event.new` constructs a new object with attributes and blocks configured for the `event`
Terraform sub block.



**Args**:
  - `event` (`string`): Name of the event.

**Returns**:
  - An attribute object that represents the `event` sub block.


## obj test_case_conversation_turns.user_input.input.text



### fn test_case_conversation_turns.user_input.input.text.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.user_input.input.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`string`): The natural language text to be processed. Text length must not exceed 256 characters.

**Returns**:
  - An attribute object that represents the `text` sub block.


## obj test_case_conversation_turns.virtual_agent_output



### fn test_case_conversation_turns.virtual_agent_output.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.new` constructs a new object with attributes and blocks configured for the `virtual_agent_output`
Terraform sub block.



**Args**:
  - `session_parameters` (`string`): The session parameters available to the bot at this point. When `null`, the `session_parameters` field will be omitted from the resulting object.
  - `current_page` (`list[obj]`): The [Page](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.flows.pages#Page) on which the utterance was spoken. When `null`, the `current_page` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.current_page.new](#fn-test_case_conversation_turnstest_case_conversation_turnscurrent_pagenew) constructor.
  - `text_responses` (`list[obj]`): The text responses from the agent for the turn. When `null`, the `text_responses` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.text_responses.new](#fn-test_case_conversation_turnstest_case_conversation_turnstext_responsesnew) constructor.
  - `triggered_intent` (`list[obj]`): The [Intent](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.intents#Intent) that triggered the response. When `null`, the `triggered_intent` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.triggered_intent.new](#fn-test_case_conversation_turnstest_case_conversation_turnstriggered_intentnew) constructor.

**Returns**:
  - An attribute object that represents the `virtual_agent_output` sub block.


## obj test_case_conversation_turns.virtual_agent_output.current_page



### fn test_case_conversation_turns.virtual_agent_output.current_page.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.current_page.new` constructs a new object with attributes and blocks configured for the `current_page`
Terraform sub block.



**Args**:
  - `name` (`string`): The unique identifier of the page.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `current_page` sub block.


## obj test_case_conversation_turns.virtual_agent_output.text_responses



### fn test_case_conversation_turns.virtual_agent_output.text_responses.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.text_responses.new` constructs a new object with attributes and blocks configured for the `text_responses`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text_responses` sub block.


## obj test_case_conversation_turns.virtual_agent_output.triggered_intent



### fn test_case_conversation_turns.virtual_agent_output.triggered_intent.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_case_conversation_turns.virtual_agent_output.triggered_intent.new` constructs a new object with attributes and blocks configured for the `triggered_intent`
Terraform sub block.



**Args**:
  - `name` (`string`): The unique identifier of the intent.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `triggered_intent` sub block.


## obj test_config



### fn test_config.new

```ts
new()
```


`google.dialogflow_cx_test_case.test_config.new` constructs a new object with attributes and blocks configured for the `test_config`
Terraform sub block.



**Args**:
  - `flow` (`string`): Flow name to start the test case with.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;.
Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow. When `null`, the `flow` field will be omitted from the resulting object.
  - `page` (`string`): The page to start the test case with.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;.
Only one of flow and page should be set to indicate the starting point of the test case. If neither is set, the test case will start with start page on the default start flow. When `null`, the `page` field will be omitted from the resulting object.
  - `tracking_parameters` (`list`): Session parameters to be compared when calculating differences. When `null`, the `tracking_parameters` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `test_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_test_case.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

---
permalink: /dialogflow_intent/
---

# dialogflow_intent

`dialogflow_intent` represents the `google_dialogflow_intent` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withDefaultResponsePlatforms()`](#fn-withdefaultresponseplatforms)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEvents()`](#fn-withevents)
* [`fn withInputContextNames()`](#fn-withinputcontextnames)
* [`fn withIsFallback()`](#fn-withisfallback)
* [`fn withMlDisabled()`](#fn-withmldisabled)
* [`fn withParentFollowupIntentName()`](#fn-withparentfollowupintentname)
* [`fn withPriority()`](#fn-withpriority)
* [`fn withProject()`](#fn-withproject)
* [`fn withResetContexts()`](#fn-withresetcontexts)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWebhookState()`](#fn-withwebhookstate)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_intent.new` injects a new `google_dialogflow_intent` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_intent.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_intent` using the reference:

    $._ref.google_dialogflow_intent.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_intent.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The name of the action associated with the intent.
Note: The action name must not contain whitespaces. When `null`, the `action` field will be omitted from the resulting object.
  - `default_response_platforms` (`list`): The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
(i.e. default platform). Possible values: [&#34;FACEBOOK&#34;, &#34;SLACK&#34;, &#34;TELEGRAM&#34;, &#34;KIK&#34;, &#34;SKYPE&#34;, &#34;LINE&#34;, &#34;VIBER&#34;, &#34;ACTIONS_ON_GOOGLE&#34;, &#34;GOOGLE_HANGOUTS&#34;] When `null`, the `default_response_platforms` field will be omitted from the resulting object.
  - `display_name` (`string`): The name of this intent to be displayed on the console.
  - `events` (`list`): The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
the contexts must be present in the active user session for an event to trigger this intent. See the 
[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details. When `null`, the `events` field will be omitted from the resulting object.
  - `input_context_names` (`list`): The list of context names required for this intent to be triggered.
Format: projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;. When `null`, the `input_context_names` field will be omitted from the resulting object.
  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. When `null`, the `is_fallback` field will be omitted from the resulting object.
  - `ml_disabled` (`bool`): Indicates whether Machine Learning is disabled for the intent.
Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
ONLY match mode. Also, auto-markup in the UI is turned off. When `null`, the `ml_disabled` field will be omitted from the resulting object.
  - `parent_followup_intent_name` (`string`): The unique identifier of the parent intent in the chain of followup intents.
Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;. When `null`, the `parent_followup_intent_name` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.
  - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  to the Normal priority in the console.
  - If the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `reset_contexts` (`bool`): Indicates whether to delete all contexts in the current session when this intent is matched. When `null`, the `reset_contexts` field will be omitted from the resulting object.
  - `webhook_state` (`string`): Indicates whether webhooks are enabled for the intent.
* WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
* WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
filling prompt is forwarded to the webhook. Possible values: [&#34;WEBHOOK_STATE_ENABLED&#34;, &#34;WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING&#34;] When `null`, the `webhook_state` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_intent.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_intent.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_intent`
Terraform resource.

Unlike [google.dialogflow_intent.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The name of the action associated with the intent.
Note: The action name must not contain whitespaces. When `null`, the `action` field will be omitted from the resulting object.
  - `default_response_platforms` (`list`): The list of platforms for which the first responses will be copied from the messages in PLATFORM_UNSPECIFIED
(i.e. default platform). Possible values: [&#34;FACEBOOK&#34;, &#34;SLACK&#34;, &#34;TELEGRAM&#34;, &#34;KIK&#34;, &#34;SKYPE&#34;, &#34;LINE&#34;, &#34;VIBER&#34;, &#34;ACTIONS_ON_GOOGLE&#34;, &#34;GOOGLE_HANGOUTS&#34;] When `null`, the `default_response_platforms` field will be omitted from the resulting object.
  - `display_name` (`string`): The name of this intent to be displayed on the console.
  - `events` (`list`): The collection of event names that trigger the intent. If the collection of input contexts is not empty, all of
the contexts must be present in the active user session for an event to trigger this intent. See the 
[events reference](https://cloud.google.com/dialogflow/docs/events-overview) for more details. When `null`, the `events` field will be omitted from the resulting object.
  - `input_context_names` (`list`): The list of context names required for this intent to be triggered.
Format: projects/&lt;Project ID&gt;/agent/sessions/-/contexts/&lt;Context ID&gt;. When `null`, the `input_context_names` field will be omitted from the resulting object.
  - `is_fallback` (`bool`): Indicates whether this is a fallback intent. When `null`, the `is_fallback` field will be omitted from the resulting object.
  - `ml_disabled` (`bool`): Indicates whether Machine Learning is disabled for the intent.
Note: If mlDisabled setting is set to true, then this intent is not taken into account during inference in ML
ONLY match mode. Also, auto-markup in the UI is turned off. When `null`, the `ml_disabled` field will be omitted from the resulting object.
  - `parent_followup_intent_name` (`string`): The unique identifier of the parent intent in the chain of followup intents.
Format: projects/&lt;Project ID&gt;/agent/intents/&lt;Intent ID&gt;. When `null`, the `parent_followup_intent_name` field will be omitted from the resulting object.
  - `priority` (`number`): The priority of this intent. Higher numbers represent higher priorities.
  - If the supplied value is unspecified or 0, the service translates the value to 500,000, which corresponds
  to the Normal priority in the console.
  - If the supplied value is negative, the intent is ignored in runtime detect intent requests. When `null`, the `priority` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `reset_contexts` (`bool`): Indicates whether to delete all contexts in the current session when this intent is matched. When `null`, the `reset_contexts` field will be omitted from the resulting object.
  - `webhook_state` (`string`): Indicates whether webhooks are enabled for the intent.
* WEBHOOK_STATE_ENABLED: Webhook is enabled in the agent and in the intent.
* WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING: Webhook is enabled in the agent and in the intent. Also, each slot
filling prompt is forwarded to the webhook. Possible values: [&#34;WEBHOOK_STATE_ENABLED&#34;, &#34;WEBHOOK_STATE_ENABLED_FOR_SLOT_FILLING&#34;] When `null`, the `webhook_state` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_intent.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_intent` resource into the root Terraform configuration.


### fn withAction

```ts
withAction()
```

`google.string.withAction` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `action` field.


### fn withDefaultResponsePlatforms

```ts
withDefaultResponsePlatforms()
```

`google.list.withDefaultResponsePlatforms` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the default_response_platforms field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `default_response_platforms` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEvents

```ts
withEvents()
```

`google.list.withEvents` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the events field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `events` field.


### fn withInputContextNames

```ts
withInputContextNames()
```

`google.list.withInputContextNames` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the input_context_names field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `input_context_names` field.


### fn withIsFallback

```ts
withIsFallback()
```

`google.bool.withIsFallback` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_fallback field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_fallback` field.


### fn withMlDisabled

```ts
withMlDisabled()
```

`google.bool.withMlDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the ml_disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `ml_disabled` field.


### fn withParentFollowupIntentName

```ts
withParentFollowupIntentName()
```

`google.string.withParentFollowupIntentName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent_followup_intent_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent_followup_intent_name` field.


### fn withPriority

```ts
withPriority()
```

`google.number.withPriority` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the priority field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `priority` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withResetContexts

```ts
withResetContexts()
```

`google.bool.withResetContexts` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the reset_contexts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `reset_contexts` field.


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


### fn withWebhookState

```ts
withWebhookState()
```

`google.string.withWebhookState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the webhook_state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `webhook_state` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_intent.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

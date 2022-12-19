---
permalink: /dialogflow_cx_flow/
---

# dialogflow_cx_flow

`dialogflow_cx_flow` represents the `google_dialogflow_cx_flow` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEventHandlers()`](#fn-witheventhandlers)
* [`fn withEventHandlersMixin()`](#fn-witheventhandlersmixin)
* [`fn withLanguageCode()`](#fn-withlanguagecode)
* [`fn withNluSettings()`](#fn-withnlusettings)
* [`fn withNluSettingsMixin()`](#fn-withnlusettingsmixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTransitionRouteGroups()`](#fn-withtransitionroutegroups)
* [`fn withTransitionRoutes()`](#fn-withtransitionroutes)
* [`fn withTransitionRoutesMixin()`](#fn-withtransitionroutesmixin)
* [`obj event_handlers`](#obj-event_handlers)
  * [`fn new()`](#fn-event_handlersnew)
  * [`obj event_handlers.trigger_fulfillment`](#obj-event_handlerstrigger_fulfillment)
    * [`fn new()`](#fn-event_handlerstrigger_fulfillmentnew)
    * [`obj event_handlers.trigger_fulfillment.messages`](#obj-event_handlerstrigger_fulfillmentmessages)
      * [`fn new()`](#fn-event_handlerstrigger_fulfillmentmessagesnew)
      * [`obj event_handlers.trigger_fulfillment.messages.text`](#obj-event_handlerstrigger_fulfillmentmessagestext)
        * [`fn new()`](#fn-event_handlerstrigger_fulfillmentmessagestextnew)
* [`obj nlu_settings`](#obj-nlu_settings)
  * [`fn new()`](#fn-nlu_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj transition_routes`](#obj-transition_routes)
  * [`fn new()`](#fn-transition_routesnew)
  * [`obj transition_routes.trigger_fulfillment`](#obj-transition_routestrigger_fulfillment)
    * [`fn new()`](#fn-transition_routestrigger_fulfillmentnew)
    * [`obj transition_routes.trigger_fulfillment.messages`](#obj-transition_routestrigger_fulfillmentmessages)
      * [`fn new()`](#fn-transition_routestrigger_fulfillmentmessagesnew)
      * [`obj transition_routes.trigger_fulfillment.messages.text`](#obj-transition_routestrigger_fulfillmentmessagestext)
        * [`fn new()`](#fn-transition_routestrigger_fulfillmentmessagestextnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_flow.new` injects a new `google_dialogflow_cx_flow` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_flow.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_flow` using the reference:

    $._ref.google_dialogflow_cx_flow.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_flow.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the flow.
  - `language_code` (`string`): The language of the following fields in flow:
Flow.event_handlers.trigger_fulfillment.messages
Flow.event_handlers.trigger_fulfillment.conditional_cases
Flow.transition_routes.trigger_fulfillment.messages
Flow.transition_routes.trigger_fulfillment.conditional_cases
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create a flow for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `transition_route_groups` (`list`): A flow&#39;s transition route group serve two purposes:
They are responsible for matching the user&#39;s first utterances in the flow.
They are inherited by every page&#39;s [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
Format:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.
  - `event_handlers` (`list[obj]`): A flow&#39;s event handlers serve two purposes:
They are responsible for handling events (e.g. no match, webhook errors) in the flow.
They are inherited by every page&#39;s [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.new](#fn-dialogflowcxfloweventhandlersnew) constructor.
  - `nlu_settings` (`list[obj]`): NLU related settings of the flow. When `null`, the `nlu_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.nlu_settings.new](#fn-dialogflowcxflownlusettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.timeouts.new](#fn-dialogflowcxflowtimeoutsnew) constructor.
  - `transition_routes` (`list[obj]`): A flow&#39;s transition routes serve two purposes:
They are responsible for matching the user&#39;s first utterances in the flow.
They are inherited by every page&#39;s [transition routes][Page.transition_routes] and can support use cases such as the user saying &#34;help&#34; or &#34;can I talk to a human?&#34;, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.

TransitionRoutes are evalauted in the following order:
  TransitionRoutes with intent specified.
  TransitionRoutes with only condition specified.
  TransitionRoutes with intent specified are inherited by pages in the flow. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.new](#fn-dialogflowcxflowtransitionroutesnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_flow.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_flow`
Terraform resource.

Unlike [google.dialogflow_cx_flow.new](#fn-dialogflowcxflownew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The description of the flow. The maximum length is 500 characters. If exceeded, the request is rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the flow.
  - `language_code` (`string`): The language of the following fields in flow:
Flow.event_handlers.trigger_fulfillment.messages
Flow.event_handlers.trigger_fulfillment.conditional_cases
Flow.transition_routes.trigger_fulfillment.messages
Flow.transition_routes.trigger_fulfillment.conditional_cases
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create a flow for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `transition_route_groups` (`list`): A flow&#39;s transition route group serve two purposes:
They are responsible for matching the user&#39;s first utterances in the flow.
They are inherited by every page&#39;s [transition route groups][Page.transition_route_groups]. Transition route groups defined in the page have higher priority than those defined in the flow.
Format:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.
  - `event_handlers` (`list[obj]`): A flow&#39;s event handlers serve two purposes:
They are responsible for handling events (e.g. no match, webhook errors) in the flow.
They are inherited by every page&#39;s [event handlers][Page.event_handlers], which can be used to handle common events regardless of the current page. Event handlers defined in the page have higher priority than those defined in the flow.
Unlike transitionRoutes, these handlers are evaluated on a first-match basis. The first one that matches the event get executed, with the rest being ignored. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.new](#fn-dialogflowcxfloweventhandlersnew) constructor.
  - `nlu_settings` (`list[obj]`): NLU related settings of the flow. When `null`, the `nlu_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.nlu_settings.new](#fn-dialogflowcxflownlusettingsnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.timeouts.new](#fn-dialogflowcxflowtimeoutsnew) constructor.
  - `transition_routes` (`list[obj]`): A flow&#39;s transition routes serve two purposes:
They are responsible for matching the user&#39;s first utterances in the flow.
They are inherited by every page&#39;s [transition routes][Page.transition_routes] and can support use cases such as the user saying &#34;help&#34; or &#34;can I talk to a human?&#34;, which can be handled in a common way regardless of the current page. Transition routes defined in the page have higher priority than those defined in the flow.

TransitionRoutes are evalauted in the following order:
  TransitionRoutes with intent specified.
  TransitionRoutes with only condition specified.
  TransitionRoutes with intent specified are inherited by pages in the flow. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.new](#fn-dialogflowcxflowtransitionroutesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_flow` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEventHandlers

```ts
withEventHandlers()
```

`google.list[obj].withEventHandlers` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_handlers field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEventHandlersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_handlers` field.


### fn withEventHandlersMixin

```ts
withEventHandlersMixin()
```

`google.list[obj].withEventHandlersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the event_handlers field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEventHandlers](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `event_handlers` field.


### fn withLanguageCode

```ts
withLanguageCode()
```

`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the language_code field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `language_code` field.


### fn withNluSettings

```ts
withNluSettings()
```

`google.list[obj].withNluSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the nlu_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNluSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `nlu_settings` field.


### fn withNluSettingsMixin

```ts
withNluSettingsMixin()
```

`google.list[obj].withNluSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the nlu_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNluSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `nlu_settings` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


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


### fn withTransitionRouteGroups

```ts
withTransitionRouteGroups()
```

`google.list.withTransitionRouteGroups` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the transition_route_groups field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `transition_route_groups` field.


### fn withTransitionRoutes

```ts
withTransitionRoutes()
```

`google.list[obj].withTransitionRoutes` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the transition_routes field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTransitionRoutesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `transition_routes` field.


### fn withTransitionRoutesMixin

```ts
withTransitionRoutesMixin()
```

`google.list[obj].withTransitionRoutesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the transition_routes field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTransitionRoutes](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `transition_routes` field.


## obj event_handlers



### fn event_handlers.new

```ts
new()
```


`google.dialogflow_cx_flow.event_handlers.new` constructs a new object with attributes and blocks configured for the `event_handlers`
Terraform sub block.



**Args**:
  - `event` (`string`): The name of the event to handle. When `null`, the `event` field will be omitted from the resulting object.
  - `target_flow` (`string`): The target flow to transition to.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.
  - `target_page` (`string`): The target page to transition to.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.
  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.new](#fn-eventhandlerstriggerfulfillmentnew) constructor.

**Returns**:
  - An attribute object that represents the `event_handlers` sub block.


## obj event_handlers.trigger_fulfillment



### fn event_handlers.trigger_fulfillment.new

```ts
new()
```


`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`
Terraform sub block.



**Args**:
  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.
  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.
  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.
  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.new](#fn-triggerfulfillmentmessagesnew) constructor.

**Returns**:
  - An attribute object that represents the `trigger_fulfillment` sub block.


## obj event_handlers.trigger_fulfillment.messages



### fn event_handlers.trigger_fulfillment.messages.new

```ts
new()
```


`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`
Terraform sub block.



**Args**:
  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.text.new](#fn-messagestextnew) constructor.

**Returns**:
  - An attribute object that represents the `messages` sub block.


## obj event_handlers.trigger_fulfillment.messages.text



### fn event_handlers.trigger_fulfillment.messages.text.new

```ts
new()
```


`google.dialogflow_cx_flow.event_handlers.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text` sub block.


## obj nlu_settings



### fn nlu_settings.new

```ts
new()
```


`google.dialogflow_cx_flow.nlu_settings.new` constructs a new object with attributes and blocks configured for the `nlu_settings`
Terraform sub block.



**Args**:
  - `classification_threshold` (`number`): To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold.
If the returned score value is less than the threshold value, then a no-match event will be triggered. The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used. When `null`, the `classification_threshold` field will be omitted from the resulting object.
  - `model_training_mode` (`string`): Indicates NLU model training mode.
* MODEL_TRAINING_MODE_AUTOMATIC: NLU model training is automatically triggered when a flow gets modified. User can also manually trigger model training in this mode.
* MODEL_TRAINING_MODE_MANUAL: User needs to manually trigger NLU model training. Best for large flows whose models take long time to train. Possible values: [&#34;MODEL_TRAINING_MODE_AUTOMATIC&#34;, &#34;MODEL_TRAINING_MODE_MANUAL&#34;] When `null`, the `model_training_mode` field will be omitted from the resulting object.
  - `model_type` (`string`): Indicates the type of NLU model.
* MODEL_TYPE_STANDARD: Use standard NLU model.
* MODEL_TYPE_ADVANCED: Use advanced NLU model. Possible values: [&#34;MODEL_TYPE_STANDARD&#34;, &#34;MODEL_TYPE_ADVANCED&#34;] When `null`, the `model_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `nlu_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_flow.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj transition_routes



### fn transition_routes.new

```ts
new()
```


`google.dialogflow_cx_flow.transition_routes.new` constructs a new object with attributes and blocks configured for the `transition_routes`
Terraform sub block.



**Args**:
  - `condition` (`string`): The condition to evaluate against form parameters or session parameters.
At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. When `null`, the `condition` field will be omitted from the resulting object.
  - `intent` (`string`): The unique identifier of an Intent.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/intents/&lt;Intent ID&gt;. Indicates that the transition can only happen when the given intent is matched. At least one of intent or condition must be specified. When both intent and condition are specified, the transition can only happen when both are fulfilled. When `null`, the `intent` field will be omitted from the resulting object.
  - `target_flow` (`string`): The target flow to transition to.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.
  - `target_page` (`string`): The target page to transition to.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.
  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the condition is satisfied. At least one of triggerFulfillment and target must be specified. When both are defined, triggerFulfillment is executed first. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.new](#fn-transitionroutestriggerfulfillmentnew) constructor.

**Returns**:
  - An attribute object that represents the `transition_routes` sub block.


## obj transition_routes.trigger_fulfillment



### fn transition_routes.trigger_fulfillment.new

```ts
new()
```


`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`
Terraform sub block.



**Args**:
  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.
  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.
  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.
  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.new](#fn-triggerfulfillmentmessagesnew) constructor.

**Returns**:
  - An attribute object that represents the `trigger_fulfillment` sub block.


## obj transition_routes.trigger_fulfillment.messages



### fn transition_routes.trigger_fulfillment.messages.new

```ts
new()
```


`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`
Terraform sub block.



**Args**:
  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.text.new](#fn-messagestextnew) constructor.

**Returns**:
  - An attribute object that represents the `messages` sub block.


## obj transition_routes.trigger_fulfillment.messages.text



### fn transition_routes.trigger_fulfillment.messages.text.new

```ts
new()
```


`google.dialogflow_cx_flow.transition_routes.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text` sub block.

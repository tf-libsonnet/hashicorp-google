---
permalink: /dialogflow_cx_page/
---

# dialogflow_cx_page

`dialogflow_cx_page` represents the `google_dialogflow_cx_page` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEntryFulfillment()`](#fn-withentryfulfillment)
* [`fn withEntryFulfillmentMixin()`](#fn-withentryfulfillmentmixin)
* [`fn withEventHandlers()`](#fn-witheventhandlers)
* [`fn withEventHandlersMixin()`](#fn-witheventhandlersmixin)
* [`fn withForm()`](#fn-withform)
* [`fn withFormMixin()`](#fn-withformmixin)
* [`fn withLanguageCode()`](#fn-withlanguagecode)
* [`fn withParent()`](#fn-withparent)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTransitionRouteGroups()`](#fn-withtransitionroutegroups)
* [`fn withTransitionRoutes()`](#fn-withtransitionroutes)
* [`fn withTransitionRoutesMixin()`](#fn-withtransitionroutesmixin)
* [`obj entry_fulfillment`](#obj-entry_fulfillment)
  * [`fn new()`](#fn-entry_fulfillmentnew)
  * [`obj entry_fulfillment.messages`](#obj-entry_fulfillmentmessages)
    * [`fn new()`](#fn-entry_fulfillmentmessagesnew)
    * [`obj entry_fulfillment.messages.text`](#obj-entry_fulfillmentmessagestext)
      * [`fn new()`](#fn-entry_fulfillmentmessagestextnew)
* [`obj event_handlers`](#obj-event_handlers)
  * [`fn new()`](#fn-event_handlersnew)
  * [`obj event_handlers.trigger_fulfillment`](#obj-event_handlerstrigger_fulfillment)
    * [`fn new()`](#fn-event_handlerstrigger_fulfillmentnew)
    * [`obj event_handlers.trigger_fulfillment.messages`](#obj-event_handlerstrigger_fulfillmentmessages)
      * [`fn new()`](#fn-event_handlerstrigger_fulfillmentmessagesnew)
      * [`obj event_handlers.trigger_fulfillment.messages.text`](#obj-event_handlerstrigger_fulfillmentmessagestext)
        * [`fn new()`](#fn-event_handlerstrigger_fulfillmentmessagestextnew)
* [`obj form`](#obj-form)
  * [`fn new()`](#fn-formnew)
  * [`obj form.parameters`](#obj-formparameters)
    * [`fn new()`](#fn-formparametersnew)
    * [`obj form.parameters.fill_behavior`](#obj-formparametersfill_behavior)
      * [`fn new()`](#fn-formparametersfill_behaviornew)
      * [`obj form.parameters.fill_behavior.initial_prompt_fulfillment`](#obj-formparametersfill_behaviorinitial_prompt_fulfillment)
        * [`fn new()`](#fn-formparametersfill_behaviorinitial_prompt_fulfillmentnew)
        * [`obj form.parameters.fill_behavior.initial_prompt_fulfillment.messages`](#obj-formparametersfill_behaviorinitial_prompt_fulfillmentmessages)
          * [`fn new()`](#fn-formparametersfill_behaviorinitial_prompt_fulfillmentmessagesnew)
          * [`obj form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text`](#obj-formparametersfill_behaviorinitial_prompt_fulfillmentmessagestext)
            * [`fn new()`](#fn-formparametersfill_behaviorinitial_prompt_fulfillmentmessagestextnew)
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


`google.dialogflow_cx_page.new` injects a new `google_dialogflow_cx_page` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_page.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_page` using the reference:

    $._ref.google_dialogflow_cx_page.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_page.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The human-readable name of the page, unique within the agent.
  - `language_code` (`string`): The language of the following fields in page:

Page.entry_fulfillment.messages
Page.entry_fulfillment.conditional_cases
Page.event_handlers.trigger_fulfillment.messages
Page.event_handlers.trigger_fulfillment.conditional_cases
Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
Page.transition_routes.trigger_fulfillment.messages
Page.transition_routes.trigger_fulfillment.conditional_cases
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The flow to create a page for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `transition_route_groups` (`list`): Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page&#39;s transition route -&gt; page&#39;s transition route group -&gt; flow&#39;s transition routes.
If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
Format:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.
  - `entry_fulfillment` (`list[obj]`): The fulfillment to call when the session is entering the page. When `null`, the `entry_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.new](#fn-entry_fulfillmentnew) constructor.
  - `event_handlers` (`list[obj]`): Handlers associated with the page to handle events such as webhook errors, no match or no input. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.new](#fn-event_handlersnew) constructor.
  - `form` (`list[obj]`): The form associated with the page, used for collecting parameters relevant to the page. When `null`, the `form` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.new](#fn-formnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.timeouts.new](#fn-timeoutsnew) constructor.
  - `transition_routes` (`list[obj]`): A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
When we are in a certain page, the TransitionRoutes are evalauted in the following order:
TransitionRoutes defined in the page with intent specified.
TransitionRoutes defined in the transition route groups with intent specified.
TransitionRoutes defined in flow with intent specified.
TransitionRoutes defined in the transition route groups with intent specified.
TransitionRoutes defined in the page with only condition specified.
TransitionRoutes defined in the transition route groups with only condition specified. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.new](#fn-transition_routesnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_page.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_page`
Terraform resource.

Unlike [google.dialogflow_cx_page.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The human-readable name of the page, unique within the agent.
  - `language_code` (`string`): The language of the following fields in page:

Page.entry_fulfillment.messages
Page.entry_fulfillment.conditional_cases
Page.event_handlers.trigger_fulfillment.messages
Page.event_handlers.trigger_fulfillment.conditional_cases
Page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages
Page.form.parameters.fill_behavior.initial_prompt_fulfillment.conditional_cases
Page.form.parameters.fill_behavior.reprompt_event_handlers.messages
Page.form.parameters.fill_behavior.reprompt_event_handlers.conditional_cases
Page.transition_routes.trigger_fulfillment.messages
Page.transition_routes.trigger_fulfillment.conditional_cases
If not specified, the agent&#39;s default language is used. Many languages are supported. Note: languages must be enabled in the agent before they can be used. When `null`, the `language_code` field will be omitted from the resulting object.
  - `parent` (`string`): The flow to create a page for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `transition_route_groups` (`list`): Ordered list of TransitionRouteGroups associated with the page. Transition route groups must be unique within a page.
If multiple transition routes within a page scope refer to the same intent, then the precedence order is: page&#39;s transition route -&gt; page&#39;s transition route group -&gt; flow&#39;s transition routes.
If multiple transition route groups within a page contain the same intent, then the first group in the ordered list takes precedence.
Format:projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/transitionRouteGroups/&lt;TransitionRouteGroup ID&gt;. When `null`, the `transition_route_groups` field will be omitted from the resulting object.
  - `entry_fulfillment` (`list[obj]`): The fulfillment to call when the session is entering the page. When `null`, the `entry_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.new](#fn-entry_fulfillmentnew) constructor.
  - `event_handlers` (`list[obj]`): Handlers associated with the page to handle events such as webhook errors, no match or no input. When `null`, the `event_handlers` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.new](#fn-event_handlersnew) constructor.
  - `form` (`list[obj]`): The form associated with the page, used for collecting parameters relevant to the page. When `null`, the `form` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.new](#fn-formnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.timeouts.new](#fn-timeoutsnew) constructor.
  - `transition_routes` (`list[obj]`): A list of transitions for the transition rules of this page. They route the conversation to another page in the same flow, or another flow.
When we are in a certain page, the TransitionRoutes are evalauted in the following order:
TransitionRoutes defined in the page with intent specified.
TransitionRoutes defined in the transition route groups with intent specified.
TransitionRoutes defined in flow with intent specified.
TransitionRoutes defined in the transition route groups with intent specified.
TransitionRoutes defined in the page with only condition specified.
TransitionRoutes defined in the transition route groups with only condition specified. When `null`, the `transition_routes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.new](#fn-transition_routesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_page` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEntryFulfillment

```ts
withEntryFulfillment()
```

`google.list[obj].withEntryFulfillment` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the entry_fulfillment field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEntryFulfillmentMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `entry_fulfillment` field.


### fn withEntryFulfillmentMixin

```ts
withEntryFulfillmentMixin()
```

`google.list[obj].withEntryFulfillmentMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the entry_fulfillment field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEntryFulfillment](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `entry_fulfillment` field.


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


### fn withForm

```ts
withForm()
```

`google.list[obj].withForm` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the form field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFormMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `form` field.


### fn withFormMixin

```ts
withFormMixin()
```

`google.list[obj].withFormMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the form field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withForm](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `form` field.


### fn withLanguageCode

```ts
withLanguageCode()
```

`google.string.withLanguageCode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the language_code field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `language_code` field.


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


## obj entry_fulfillment



### fn entry_fulfillment.new

```ts
new()
```


`google.dialogflow_cx_page.entry_fulfillment.new` constructs a new object with attributes and blocks configured for the `entry_fulfillment`
Terraform sub block.



**Args**:
  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.
  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.
  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.
  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.new](#fn-entry_fulfillmentmessagesnew) constructor.

**Returns**:
  - An attribute object that represents the `entry_fulfillment` sub block.


## obj entry_fulfillment.messages



### fn entry_fulfillment.messages.new

```ts
new()
```


`google.dialogflow_cx_page.entry_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`
Terraform sub block.



**Args**:
  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.entry_fulfillment.messages.text.new](#fn-entry_fulfillmententry_fulfillmenttextnew) constructor.

**Returns**:
  - An attribute object that represents the `messages` sub block.


## obj entry_fulfillment.messages.text



### fn entry_fulfillment.messages.text.new

```ts
new()
```


`google.dialogflow_cx_page.entry_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text` sub block.


## obj event_handlers



### fn event_handlers.new

```ts
new()
```


`google.dialogflow_cx_page.event_handlers.new` constructs a new object with attributes and blocks configured for the `event_handlers`
Terraform sub block.



**Args**:
  - `event` (`string`): The name of the event to handle. When `null`, the `event` field will be omitted from the resulting object.
  - `target_flow` (`string`): The target flow to transition to.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;. When `null`, the `target_flow` field will be omitted from the resulting object.
  - `target_page` (`string`): The target page to transition to.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/flows/&lt;Flow ID&gt;/pages/&lt;Page ID&gt;. When `null`, the `target_page` field will be omitted from the resulting object.
  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.new](#fn-event_handlerstrigger_fulfillmentnew) constructor.

**Returns**:
  - An attribute object that represents the `event_handlers` sub block.


## obj event_handlers.trigger_fulfillment



### fn event_handlers.trigger_fulfillment.new

```ts
new()
```


`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`
Terraform sub block.



**Args**:
  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.
  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.
  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.
  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.new](#fn-event_handlersevent_handlersmessagesnew) constructor.

**Returns**:
  - An attribute object that represents the `trigger_fulfillment` sub block.


## obj event_handlers.trigger_fulfillment.messages



### fn event_handlers.trigger_fulfillment.messages.new

```ts
new()
```


`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`
Terraform sub block.



**Args**:
  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.text.new](#fn-event_handlersevent_handlerstrigger_fulfillmenttextnew) constructor.

**Returns**:
  - An attribute object that represents the `messages` sub block.


## obj event_handlers.trigger_fulfillment.messages.text



### fn event_handlers.trigger_fulfillment.messages.text.new

```ts
new()
```


`google.dialogflow_cx_page.event_handlers.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text` sub block.


## obj form



### fn form.new

```ts
new()
```


`google.dialogflow_cx_page.form.new` constructs a new object with attributes and blocks configured for the `form`
Terraform sub block.



**Args**:
  - `parameters` (`list[obj]`): Parameters to collect from the user. When `null`, the `parameters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.new](#fn-formparametersnew) constructor.

**Returns**:
  - An attribute object that represents the `form` sub block.


## obj form.parameters



### fn form.parameters.new

```ts
new()
```


`google.dialogflow_cx_page.form.parameters.new` constructs a new object with attributes and blocks configured for the `parameters`
Terraform sub block.



**Args**:
  - `display_name` (`string`): The human-readable name of the parameter, unique within the form. When `null`, the `display_name` field will be omitted from the resulting object.
  - `entity_type` (`string`): The entity type of the parameter.
Format: projects/-/locations/-/agents/-/entityTypes/&lt;System Entity Type ID&gt; for system entity types (for example, projects/-/locations/-/agents/-/entityTypes/sys.date), or projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/entityTypes/&lt;Entity Type ID&gt; for developer entity types. When `null`, the `entity_type` field will be omitted from the resulting object.
  - `is_list` (`bool`): Indicates whether the parameter represents a list of values. When `null`, the `is_list` field will be omitted from the resulting object.
  - `redact` (`bool`): Indicates whether the parameter content should be redacted in log.
If redaction is enabled, the parameter content will be replaced by parameter name during logging. Note: the parameter content is subject to redaction if either parameter level redaction or entity type level redaction is enabled. When `null`, the `redact` field will be omitted from the resulting object.
  - `required` (`bool`): Indicates whether the parameter is required. Optional parameters will not trigger prompts; however, they are filled if the user specifies them.
Required parameters must be filled before form filling concludes. When `null`, the `required` field will be omitted from the resulting object.
  - `fill_behavior` (`list[obj]`): Defines fill behavior for the parameter. When `null`, the `fill_behavior` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.new](#fn-formformfill_behaviornew) constructor.

**Returns**:
  - An attribute object that represents the `parameters` sub block.


## obj form.parameters.fill_behavior



### fn form.parameters.fill_behavior.new

```ts
new()
```


`google.dialogflow_cx_page.form.parameters.fill_behavior.new` constructs a new object with attributes and blocks configured for the `fill_behavior`
Terraform sub block.



**Args**:
  - `initial_prompt_fulfillment` (`list[obj]`): The fulfillment to provide the initial prompt that the agent can present to the user in order to fill the parameter. When `null`, the `initial_prompt_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.new](#fn-formformparametersinitial_prompt_fulfillmentnew) constructor.

**Returns**:
  - An attribute object that represents the `fill_behavior` sub block.


## obj form.parameters.fill_behavior.initial_prompt_fulfillment



### fn form.parameters.fill_behavior.initial_prompt_fulfillment.new

```ts
new()
```


`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.new` constructs a new object with attributes and blocks configured for the `initial_prompt_fulfillment`
Terraform sub block.



**Args**:
  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.
  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.
  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.
  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.new](#fn-formformparametersfill_behaviormessagesnew) constructor.

**Returns**:
  - An attribute object that represents the `initial_prompt_fulfillment` sub block.


## obj form.parameters.fill_behavior.initial_prompt_fulfillment.messages



### fn form.parameters.fill_behavior.initial_prompt_fulfillment.messages.new

```ts
new()
```


`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`
Terraform sub block.



**Args**:
  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text.new](#fn-formformparametersfill_behaviorinitial_prompt_fulfillmenttextnew) constructor.

**Returns**:
  - An attribute object that represents the `messages` sub block.


## obj form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text



### fn form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text.new

```ts
new()
```


`google.dialogflow_cx_page.form.parameters.fill_behavior.initial_prompt_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_page.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj transition_routes



### fn transition_routes.new

```ts
new()
```


`google.dialogflow_cx_page.transition_routes.new` constructs a new object with attributes and blocks configured for the `transition_routes`
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
  - `trigger_fulfillment` (`list[obj]`): The fulfillment to call when the event occurs. Handling webhook errors with a fulfillment enabled with webhook could cause infinite loop. It is invalid to specify such fulfillment for a handler handling webhooks. When `null`, the `trigger_fulfillment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.new](#fn-transition_routestrigger_fulfillmentnew) constructor.

**Returns**:
  - An attribute object that represents the `transition_routes` sub block.


## obj transition_routes.trigger_fulfillment



### fn transition_routes.trigger_fulfillment.new

```ts
new()
```


`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.new` constructs a new object with attributes and blocks configured for the `trigger_fulfillment`
Terraform sub block.



**Args**:
  - `return_partial_responses` (`bool`): Whether Dialogflow should return currently queued fulfillment response messages in streaming APIs. If a webhook is specified, it happens before Dialogflow invokes webhook. Warning: 1) This flag only affects streaming API. Responses are still queued and returned once in non-streaming API. 2) The flag can be enabled in any fulfillment but only the first 3 partial responses will be returned. You may only want to apply it to fulfillments that have slow webhooks. When `null`, the `return_partial_responses` field will be omitted from the resulting object.
  - `tag` (`string`): The tag used by the webhook to identify which fulfillment is being called. This field is required if webhook is specified. When `null`, the `tag` field will be omitted from the resulting object.
  - `webhook` (`string`): The webhook to call. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;/webhooks/&lt;Webhook ID&gt;. When `null`, the `webhook` field will be omitted from the resulting object.
  - `messages` (`list[obj]`): The list of rich message responses to present to the user. When `null`, the `messages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.new](#fn-transition_routestransition_routesmessagesnew) constructor.

**Returns**:
  - An attribute object that represents the `trigger_fulfillment` sub block.


## obj transition_routes.trigger_fulfillment.messages



### fn transition_routes.trigger_fulfillment.messages.new

```ts
new()
```


`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.new` constructs a new object with attributes and blocks configured for the `messages`
Terraform sub block.



**Args**:
  - `text` (`list[obj]`): The text response message. When `null`, the `text` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.text.new](#fn-transition_routestransition_routestrigger_fulfillmenttextnew) constructor.

**Returns**:
  - An attribute object that represents the `messages` sub block.


## obj transition_routes.trigger_fulfillment.messages.text



### fn transition_routes.trigger_fulfillment.messages.text.new

```ts
new()
```


`google.dialogflow_cx_page.transition_routes.trigger_fulfillment.messages.text.new` constructs a new object with attributes and blocks configured for the `text`
Terraform sub block.



**Args**:
  - `text` (`list`): A collection of text responses. When `null`, the `text` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `text` sub block.

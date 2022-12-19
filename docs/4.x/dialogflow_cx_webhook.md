---
permalink: /dialogflow_cx_webhook/
---

# dialogflow_cx_webhook

`dialogflow_cx_webhook` represents the `google_dialogflow_cx_webhook` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisabled()`](#fn-withdisabled)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableSpellCorrection()`](#fn-withenablespellcorrection)
* [`fn withEnableStackdriverLogging()`](#fn-withenablestackdriverlogging)
* [`fn withGenericWebService()`](#fn-withgenericwebservice)
* [`fn withGenericWebServiceMixin()`](#fn-withgenericwebservicemixin)
* [`fn withParent()`](#fn-withparent)
* [`fn withSecuritySettings()`](#fn-withsecuritysettings)
* [`fn withServiceDirectory()`](#fn-withservicedirectory)
* [`fn withServiceDirectoryMixin()`](#fn-withservicedirectorymixin)
* [`fn withTimeout()`](#fn-withtimeout)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj generic_web_service`](#obj-generic_web_service)
  * [`fn new()`](#fn-generic_web_servicenew)
* [`obj service_directory`](#obj-service_directory)
  * [`fn new()`](#fn-service_directorynew)
  * [`obj service_directory.generic_web_service`](#obj-service_directorygeneric_web_service)
    * [`fn new()`](#fn-service_directorygeneric_web_servicenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dialogflow_cx_webhook.new` injects a new `google_dialogflow_cx_webhook` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dialogflow_cx_webhook.new('some_id')

You can get the reference to the `id` field of the created `google.dialogflow_cx_webhook` using the reference:

    $._ref.google_dialogflow_cx_webhook.some_id.get('id')

This is the same as directly entering `"${ google_dialogflow_cx_webhook.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `disabled` (`bool`): Indicates whether the webhook is disabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the webhook, unique within the agent.
  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.
  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create a webhook for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.
  - `timeout` (`string`): Webhook execution timeout. When `null`, the `timeout` field will be omitted from the resulting object.
  - `generic_web_service` (`list[obj]`): Configuration for a generic web service. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.generic_web_service.new](#fn-generic_web_servicenew) constructor.
  - `service_directory` (`list[obj]`): Configuration for a Service Directory service. When `null`, the `service_directory` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.service_directory.new](#fn-service_directorynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dialogflow_cx_webhook.newAttrs` constructs a new object with attributes and blocks configured for the `dialogflow_cx_webhook`
Terraform resource.

Unlike [google.dialogflow_cx_webhook.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `disabled` (`bool`): Indicates whether the webhook is disabled. When `null`, the `disabled` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable name of the webhook, unique within the agent.
  - `enable_spell_correction` (`bool`): Indicates if automatic spell correction is enabled in detect intent requests. When `null`, the `enable_spell_correction` field will be omitted from the resulting object.
  - `enable_stackdriver_logging` (`bool`): Determines whether this agent should log conversation queries. When `null`, the `enable_stackdriver_logging` field will be omitted from the resulting object.
  - `parent` (`string`): The agent to create a webhook for.
Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/agents/&lt;Agent ID&gt;. When `null`, the `parent` field will be omitted from the resulting object.
  - `security_settings` (`string`): Name of the SecuritySettings reference for the agent. Format: projects/&lt;Project ID&gt;/locations/&lt;Location ID&gt;/securitySettings/&lt;Security Settings ID&gt;. When `null`, the `security_settings` field will be omitted from the resulting object.
  - `timeout` (`string`): Webhook execution timeout. When `null`, the `timeout` field will be omitted from the resulting object.
  - `generic_web_service` (`list[obj]`): Configuration for a generic web service. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.generic_web_service.new](#fn-generic_web_servicenew) constructor.
  - `service_directory` (`list[obj]`): Configuration for a Service Directory service. When `null`, the `service_directory` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.service_directory.new](#fn-service_directorynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dialogflow_cx_webhook` resource into the root Terraform configuration.


### fn withDisabled

```ts
withDisabled()
```

`google.bool.withDisabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disabled` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnableSpellCorrection

```ts
withEnableSpellCorrection()
```

`google.bool.withEnableSpellCorrection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_spell_correction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_spell_correction` field.


### fn withEnableStackdriverLogging

```ts
withEnableStackdriverLogging()
```

`google.bool.withEnableStackdriverLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_stackdriver_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_stackdriver_logging` field.


### fn withGenericWebService

```ts
withGenericWebService()
```

`google.list[obj].withGenericWebService` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the generic_web_service field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGenericWebServiceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `generic_web_service` field.


### fn withGenericWebServiceMixin

```ts
withGenericWebServiceMixin()
```

`google.list[obj].withGenericWebServiceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the generic_web_service field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGenericWebService](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `generic_web_service` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withSecuritySettings

```ts
withSecuritySettings()
```

`google.string.withSecuritySettings` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the security_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `security_settings` field.


### fn withServiceDirectory

```ts
withServiceDirectory()
```

`google.list[obj].withServiceDirectory` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_directory field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withServiceDirectoryMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_directory` field.


### fn withServiceDirectoryMixin

```ts
withServiceDirectoryMixin()
```

`google.list[obj].withServiceDirectoryMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_directory field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withServiceDirectory](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_directory` field.


### fn withTimeout

```ts
withTimeout()
```

`google.string.withTimeout` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the timeout field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `timeout` field.


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


## obj generic_web_service



### fn generic_web_service.new

```ts
new()
```


`google.dialogflow_cx_webhook.generic_web_service.new` constructs a new object with attributes and blocks configured for the `generic_web_service`
Terraform sub block.



**Args**:
  - `allowed_ca_certs` (`list`): Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. When `null`, the `allowed_ca_certs` field will be omitted from the resulting object.
  - `request_headers` (`obj`): The HTTP request headers to send together with webhook requests. When `null`, the `request_headers` field will be omitted from the resulting object.
  - `uri` (`string`): Whether to use speech adaptation for speech recognition.

**Returns**:
  - An attribute object that represents the `generic_web_service` sub block.


## obj service_directory



### fn service_directory.new

```ts
new()
```


`google.dialogflow_cx_webhook.service_directory.new` constructs a new object with attributes and blocks configured for the `service_directory`
Terraform sub block.



**Args**:
  - `service` (`string`): The name of Service Directory service.
  - `generic_web_service` (`list[obj]`): The name of Service Directory service. When `null`, the `generic_web_service` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dialogflow_cx_webhook.service_directory.generic_web_service.new](#fn-service_directorygeneric_web_servicenew) constructor.

**Returns**:
  - An attribute object that represents the `service_directory` sub block.


## obj service_directory.generic_web_service



### fn service_directory.generic_web_service.new

```ts
new()
```


`google.dialogflow_cx_webhook.service_directory.generic_web_service.new` constructs a new object with attributes and blocks configured for the `generic_web_service`
Terraform sub block.



**Args**:
  - `allowed_ca_certs` (`list`): Specifies a list of allowed custom CA certificates (in DER format) for HTTPS verification. When `null`, the `allowed_ca_certs` field will be omitted from the resulting object.
  - `request_headers` (`obj`): The HTTP request headers to send together with webhook requests. When `null`, the `request_headers` field will be omitted from the resulting object.
  - `uri` (`string`): Whether to use speech adaptation for speech recognition.

**Returns**:
  - An attribute object that represents the `generic_web_service` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dialogflow_cx_webhook.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

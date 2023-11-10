---
permalink: /scc_project_custom_module/
---

# scc_project_custom_module

`scc_project_custom_module` represents the `google_scc_project_custom_module` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCustomConfig()`](#fn-withcustomconfig)
* [`fn withCustomConfigMixin()`](#fn-withcustomconfigmixin)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnablementState()`](#fn-withenablementstate)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj custom_config`](#obj-custom_config)
  * [`fn new()`](#fn-custom_confignew)
  * [`obj custom_config.custom_output`](#obj-custom_configcustom_output)
    * [`fn new()`](#fn-custom_configcustom_outputnew)
    * [`obj custom_config.custom_output.properties`](#obj-custom_configcustom_outputproperties)
      * [`fn new()`](#fn-custom_configcustom_outputpropertiesnew)
      * [`obj custom_config.custom_output.properties.value_expression`](#obj-custom_configcustom_outputpropertiesvalue_expression)
        * [`fn new()`](#fn-custom_configcustom_outputpropertiesvalue_expressionnew)
  * [`obj custom_config.predicate`](#obj-custom_configpredicate)
    * [`fn new()`](#fn-custom_configpredicatenew)
  * [`obj custom_config.resource_selector`](#obj-custom_configresource_selector)
    * [`fn new()`](#fn-custom_configresource_selectornew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.scc_project_custom_module.new` injects a new `google_scc_project_custom_module` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.scc_project_custom_module.new('some_id')

You can get the reference to the `id` field of the created `google.scc_project_custom_module` using the reference:

    $._ref.google_scc_project_custom_module.some_id.get('id')

This is the same as directly entering `"${ google_scc_project_custom_module.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The display name of the Security Health Analytics custom module. This
display name becomes the finding category for all findings that are
returned by this custom module. The display name must be between 1 and
128 characters, start with a lowercase letter, and contain alphanumeric
characters or underscores only.
  - `enablement_state` (`string`): The enablement state of the custom module. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `custom_config` (`list[obj]`): The user specified custom configuration for the module. When `null`, the `custom_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.new](#fn-custom_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.scc_project_custom_module.newAttrs` constructs a new object with attributes and blocks configured for the `scc_project_custom_module`
Terraform resource.

Unlike [google.scc_project_custom_module.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The display name of the Security Health Analytics custom module. This
display name becomes the finding category for all findings that are
returned by this custom module. The display name must be between 1 and
128 characters, start with a lowercase letter, and contain alphanumeric
characters or underscores only.
  - `enablement_state` (`string`): The enablement state of the custom module. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;]
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `custom_config` (`list[obj]`): The user specified custom configuration for the module. When `null`, the `custom_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.new](#fn-custom_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `scc_project_custom_module` resource into the root Terraform configuration.


### fn withCustomConfig

```ts
withCustomConfig()
```

`google.list[obj].withCustomConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the custom_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCustomConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `custom_config` field.


### fn withCustomConfigMixin

```ts
withCustomConfigMixin()
```

`google.list[obj].withCustomConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the custom_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCustomConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `custom_config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnablementState

```ts
withEnablementState()
```

`google.string.withEnablementState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the enablement_state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `enablement_state` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj custom_config



### fn custom_config.new

```ts
new()
```


`google.scc_project_custom_module.custom_config.new` constructs a new object with attributes and blocks configured for the `custom_config`
Terraform sub block.



**Args**:
  - `description` (`string`): Text that describes the vulnerability or misconfiguration that the custom
module detects. This explanation is returned with each finding instance to
help investigators understand the detected issue. The text must be enclosed in quotation marks. When `null`, the `description` field will be omitted from the resulting object.
  - `recommendation` (`string`): An explanation of the recommended steps that security teams can take to resolve
the detected issue. This explanation is returned with each finding generated by
this module in the nextSteps property of the finding JSON.
  - `severity` (`string`): The severity to assign to findings generated by the module. Possible values: [&#34;CRITICAL&#34;, &#34;HIGH&#34;, &#34;MEDIUM&#34;, &#34;LOW&#34;]
  - `custom_output` (`list[obj]`): Custom output properties. When `null`, the `custom_output` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.custom_output.new](#fn-custom_configcustom_outputnew) constructor.
  - `predicate` (`list[obj]`): The CEL expression to evaluate to produce findings. When the expression evaluates
to true against a resource, a finding is generated. When `null`, the `predicate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.predicate.new](#fn-custom_configpredicatenew) constructor.
  - `resource_selector` (`list[obj]`): The resource types that the custom module operates on. Each custom module
can specify up to 5 resource types. When `null`, the `resource_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.resource_selector.new](#fn-custom_configresource_selectornew) constructor.

**Returns**:
  - An attribute object that represents the `custom_config` sub block.


## obj custom_config.custom_output



### fn custom_config.custom_output.new

```ts
new()
```


`google.scc_project_custom_module.custom_config.custom_output.new` constructs a new object with attributes and blocks configured for the `custom_output`
Terraform sub block.



**Args**:
  - `properties` (`list[obj]`): A list of custom output properties to add to the finding. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.custom_output.properties.new](#fn-custom_configcustom_configpropertiesnew) constructor.

**Returns**:
  - An attribute object that represents the `custom_output` sub block.


## obj custom_config.custom_output.properties



### fn custom_config.custom_output.properties.new

```ts
new()
```


`google.scc_project_custom_module.custom_config.custom_output.properties.new` constructs a new object with attributes and blocks configured for the `properties`
Terraform sub block.



**Args**:
  - `name` (`string`): Name of the property for the custom output. When `null`, the `name` field will be omitted from the resulting object.
  - `value_expression` (`list[obj]`): The CEL expression for the custom output. A resource property can be specified
to return the value of the property or a text string enclosed in quotation marks. When `null`, the `value_expression` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.scc_project_custom_module.custom_config.custom_output.properties.value_expression.new](#fn-custom_configcustom_configcustom_outputvalue_expressionnew) constructor.

**Returns**:
  - An attribute object that represents the `properties` sub block.


## obj custom_config.custom_output.properties.value_expression



### fn custom_config.custom_output.properties.value_expression.new

```ts
new()
```


`google.scc_project_custom_module.custom_config.custom_output.properties.value_expression.new` constructs a new object with attributes and blocks configured for the `value_expression`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression. This is a longer text which describes the
expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a
file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. This can
be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `value_expression` sub block.


## obj custom_config.predicate



### fn custom_config.predicate.new

```ts
new()
```


`google.scc_project_custom_module.custom_config.predicate.new` constructs a new object with attributes and blocks configured for the `predicate`
Terraform sub block.



**Args**:
  - `description` (`string`): Description of the expression. This is a longer text which describes the
expression, e.g. when hovered over it in a UI. When `null`, the `description` field will be omitted from the resulting object.
  - `expression` (`string`): Textual representation of an expression in Common Expression Language syntax.
  - `location` (`string`): String indicating the location of the expression for error reporting, e.g. a
file name and a position in the file. When `null`, the `location` field will be omitted from the resulting object.
  - `title` (`string`): Title for the expression, i.e. a short string describing its purpose. This can
be used e.g. in UIs which allow to enter the expression. When `null`, the `title` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `predicate` sub block.


## obj custom_config.resource_selector



### fn custom_config.resource_selector.new

```ts
new()
```


`google.scc_project_custom_module.custom_config.resource_selector.new` constructs a new object with attributes and blocks configured for the `resource_selector`
Terraform sub block.



**Args**:
  - `resource_types` (`list`): The resource types to run the detector on.

**Returns**:
  - An attribute object that represents the `resource_selector` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.scc_project_custom_module.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

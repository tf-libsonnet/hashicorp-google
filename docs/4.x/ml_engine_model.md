---
permalink: /ml_engine_model/
---

# ml_engine_model

`ml_engine_model` represents the `google_ml_engine_model` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDefaultVersion()`](#fn-withdefaultversion)
* [`fn withDefaultVersionMixin()`](#fn-withdefaultversionmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withOnlinePredictionConsoleLogging()`](#fn-withonlinepredictionconsolelogging)
* [`fn withOnlinePredictionLogging()`](#fn-withonlinepredictionlogging)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegions()`](#fn-withregions)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj default_version`](#obj-default_version)
  * [`fn new()`](#fn-default_versionnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.ml_engine_model.new` injects a new `google_ml_engine_model` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.ml_engine_model.new('some_id')

You can get the reference to the `id` field of the created `google.ml_engine_model` using the reference:

    $._ref.google_ml_engine_model.some_id.get('id')

This is the same as directly entering `"${ google_ml_engine_model.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The description specified for the model when it was created. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): One or more labels that you can add, to organize your models. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name specified for the model.
  - `online_prediction_console_logging` (`bool`): If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging When `null`, the `online_prediction_console_logging` field will be omitted from the resulting object.
  - `online_prediction_logging` (`bool`): If true, online prediction access logs are sent to StackDriver Logging. When `null`, the `online_prediction_logging` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `regions` (`list`): The list of regions where the model is going to be deployed.
Currently only one region per model is supported When `null`, the `regions` field will be omitted from the resulting object.
  - `default_version` (`list[obj]`): The default version of the model. This version will be used to handle
prediction requests that do not specify a version. When `null`, the `default_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.default_version.new](#fn-default_versionnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.ml_engine_model.newAttrs` constructs a new object with attributes and blocks configured for the `ml_engine_model`
Terraform resource.

Unlike [google.ml_engine_model.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The description specified for the model when it was created. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): One or more labels that you can add, to organize your models. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name specified for the model.
  - `online_prediction_console_logging` (`bool`): If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging When `null`, the `online_prediction_console_logging` field will be omitted from the resulting object.
  - `online_prediction_logging` (`bool`): If true, online prediction access logs are sent to StackDriver Logging. When `null`, the `online_prediction_logging` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `regions` (`list`): The list of regions where the model is going to be deployed.
Currently only one region per model is supported When `null`, the `regions` field will be omitted from the resulting object.
  - `default_version` (`list[obj]`): The default version of the model. This version will be used to handle
prediction requests that do not specify a version. When `null`, the `default_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.default_version.new](#fn-default_versionnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `ml_engine_model` resource into the root Terraform configuration.


### fn withDefaultVersion

```ts
withDefaultVersion()
```

`google.list[obj].withDefaultVersion` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_version field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDefaultVersionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_version` field.


### fn withDefaultVersionMixin

```ts
withDefaultVersionMixin()
```

`google.list[obj].withDefaultVersionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the default_version field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDefaultVersion](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `default_version` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOnlinePredictionConsoleLogging

```ts
withOnlinePredictionConsoleLogging()
```

`google.bool.withOnlinePredictionConsoleLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the online_prediction_console_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `online_prediction_console_logging` field.


### fn withOnlinePredictionLogging

```ts
withOnlinePredictionLogging()
```

`google.bool.withOnlinePredictionLogging` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the online_prediction_logging field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `online_prediction_logging` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegions

```ts
withRegions()
```

`google.list.withRegions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the regions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `regions` field.


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


## obj default_version



### fn default_version.new

```ts
new()
```


`google.ml_engine_model.default_version.new` constructs a new object with attributes and blocks configured for the `default_version`
Terraform sub block.



**Args**:
  - `name` (`string`): The name specified for the version when it was created.

**Returns**:
  - An attribute object that represents the `default_version` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.ml_engine_model.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

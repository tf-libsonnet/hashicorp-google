---
permalink: /data/monitoring_app_engine_service/
---

# data.monitoring_app_engine_service

`monitoring_app_engine_service` represents the `google_monitoring_app_engine_service` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withModuleId()`](#fn-withmoduleid)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.monitoring_app_engine_service.new` injects a new `data_google_monitoring_app_engine_service` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.monitoring_app_engine_service.new('some_id')

You can get the reference to the `id` field of the created `google.data.monitoring_app_engine_service` using the reference:

    $._ref.data_google_monitoring_app_engine_service.some_id.get('id')

This is the same as directly entering `"${ data_google_monitoring_app_engine_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `module_id` (`string`): The ID of the App Engine module underlying this service. 
Corresponds to the &#39;moduleId&#39; resource label for a &#39;gae_app&#39;
monitored resource(see https://cloud.google.com/monitoring/api/resources#tag_gae_app)
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.monitoring_app_engine_service.newAttrs` constructs a new object with attributes and blocks configured for the `monitoring_app_engine_service`
Terraform data source.

Unlike [google.data.monitoring_app_engine_service.new](#fn-monitoringappengineservicenew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `module_id` (`string`): The ID of the App Engine module underlying this service. 
Corresponds to the &#39;moduleId&#39; resource label for a &#39;gae_app&#39;
monitored resource(see https://cloud.google.com/monitoring/api/resources#tag_gae_app)
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `monitoring_app_engine_service` data source into the root Terraform configuration.


### fn withModuleId

```ts
withModuleId()
```

`google.string.withModuleId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the module_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `module_id` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.

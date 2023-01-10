---
permalink: /data/cloudbuild_trigger/
---

# data.cloudbuild_trigger

`cloudbuild_trigger` represents the `google_cloudbuild_trigger` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTriggerId()`](#fn-withtriggerid)

## Fields

### fn new

```ts
new()
```


`google.data.cloudbuild_trigger.new` injects a new `data_google_cloudbuild_trigger` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.cloudbuild_trigger.new('some_id')

You can get the reference to the `id` field of the created `google.data.cloudbuild_trigger` using the reference:

    $._ref.data_google_cloudbuild_trigger.some_id.get('id')

This is the same as directly entering `"${ data_google_cloudbuild_trigger.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `location` (`string`): The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
If not specified, &#34;global&#34; is used.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `trigger_id` (`string`): The unique identifier for the trigger.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.cloudbuild_trigger.newAttrs` constructs a new object with attributes and blocks configured for the `cloudbuild_trigger`
Terraform data source.

Unlike [google.data.cloudbuild_trigger.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The [Cloud Build location](https://cloud.google.com/build/docs/locations) for the trigger.
If not specified, &#34;global&#34; is used.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `trigger_id` (`string`): The unique identifier for the trigger.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloudbuild_trigger` data source into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTriggerId

```ts
withTriggerId()
```

`google.string.withTriggerId` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the trigger_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `trigger_id` field.

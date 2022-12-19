---
permalink: /data/cloudfunctions2_function/
---

# data.cloudfunctions2_function

`cloudfunctions2_function` represents the `google_cloudfunctions2_function` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.cloudfunctions2_function.new` injects a new `data_google_cloudfunctions2_function` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.cloudfunctions2_function.new('some_id')

You can get the reference to the `id` field of the created `google.data.cloudfunctions2_function` using the reference:

    $._ref.data_google_cloudfunctions2_function.some_id.get('id')

This is the same as directly entering `"${ data_google_cloudfunctions2_function.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `location` (`string`): The location of this cloud function.
  - `name` (`string`): A user-defined name of the function. Function names must
be unique globally and match pattern &#39;projects/*/locations/*/functions/*&#39;.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.cloudfunctions2_function.newAttrs` constructs a new object with attributes and blocks configured for the `cloudfunctions2_function`
Terraform data source.

Unlike [google.data.cloudfunctions2_function.new](#fn-cloudfunctions2functionnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The location of this cloud function.
  - `name` (`string`): A user-defined name of the function. Function names must
be unique globally and match pattern &#39;projects/*/locations/*/functions/*&#39;.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `cloudfunctions2_function` data source into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.cloudfunctions2_function.withLocation` constructs a mixin object that can be merged into the `cloudfunctions2_function`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.cloudfunctions2_function.withName` constructs a mixin object that can be merged into the `cloudfunctions2_function`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.cloudfunctions2_function.withProject` constructs a mixin object that can be merged into the `cloudfunctions2_function`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.

---
permalink: /data/spanner_instance/
---

# data.spanner_instance

`spanner_instance` represents the `google_spanner_instance` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.spanner_instance.new` injects a new `data_google_spanner_instance` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.spanner_instance.new('some_id')

You can get the reference to the `id` field of the created `google.data.spanner_instance` using the reference:

    $._ref.data_google_spanner_instance.some_id.get('id')

This is the same as directly entering `"${ data_google_spanner_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `config` (`string`): The name of the instance&#39;s configuration (similar but not
quite the same as a region) which defines the geographic placement and
replication of your databases in this instance. It determines where your data
is stored. Values are typically of the form &#39;regional-europe-west1&#39; , &#39;us-central&#39; etc.
In order to obtain a valid list please consult the
[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances). When `null`, the `config` field will be omitted from the resulting object.
  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be
unique per project and between 4 and 30 characters in length. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): A unique identifier for the instance, which cannot be changed after
the instance is created. The name must be between 6 and 30 characters
in length.


If not provided, a random string starting with &#39;tf-&#39; will be selected.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.spanner_instance.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_instance`
Terraform data source.

Unlike [google.data.spanner_instance.new](#fn-spannerinstancenew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `config` (`string`): The name of the instance&#39;s configuration (similar but not
quite the same as a region) which defines the geographic placement and
replication of your databases in this instance. It determines where your data
is stored. Values are typically of the form &#39;regional-europe-west1&#39; , &#39;us-central&#39; etc.
In order to obtain a valid list please consult the
[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances). When `null`, the `config` field will be omitted from the resulting object.
  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be
unique per project and between 4 and 30 characters in length. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): A unique identifier for the instance, which cannot be changed after
the instance is created. The name must be between 6 and 30 characters
in length.


If not provided, a random string starting with &#39;tf-&#39; will be selected.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `spanner_instance` data source into the root Terraform configuration.


### fn withConfig

```ts
withConfig()
```

`google.spanner_instance.withConfig` constructs a mixin object that can be merged into the `spanner_instance`
Terraform data source block to set or update the config field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `config` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.spanner_instance.withDisplayName` constructs a mixin object that can be merged into the `spanner_instance`
Terraform data source block to set or update the display_name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withName

```ts
withName()
```

`google.spanner_instance.withName` constructs a mixin object that can be merged into the `spanner_instance`
Terraform data source block to set or update the name field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.spanner_instance.withProject` constructs a mixin object that can be merged into the `spanner_instance`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.

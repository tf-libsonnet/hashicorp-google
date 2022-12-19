---
permalink: /data/dataproc_metastore_service/
---

# data.dataproc_metastore_service

`dataproc_metastore_service` represents the `google_dataproc_metastore_service` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withServiceId()`](#fn-withserviceid)

## Fields

### fn new

```ts
new()
```


`google.data.dataproc_metastore_service.new` injects a new `data_google_dataproc_metastore_service` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.dataproc_metastore_service.new('some_id')

You can get the reference to the `id` field of the created `google.data.dataproc_metastore_service` using the reference:

    $._ref.data_google_dataproc_metastore_service.some_id.get('id')

This is the same as directly entering `"${ data_google_dataproc_metastore_service.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `location` (`string`): The location where the metastore service should reside.
The default value is &#39;global&#39;.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.dataproc_metastore_service.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_metastore_service`
Terraform data source.

Unlike [google.data.dataproc_metastore_service.new](#fn-dataprocmetastoreservicenew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): The location where the metastore service should reside.
The default value is &#39;global&#39;.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_id` (`string`): The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
3 and 63 characters.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dataproc_metastore_service` data source into the root Terraform configuration.


### fn withLocation

```ts
withLocation()
```

`google.dataproc_metastore_service.withLocation` constructs a mixin object that can be merged into the `dataproc_metastore_service`
Terraform data source block to set or update the location field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withProject

```ts
withProject()
```

`google.dataproc_metastore_service.withProject` constructs a mixin object that can be merged into the `dataproc_metastore_service`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withServiceId

```ts
withServiceId()
```

`google.dataproc_metastore_service.withServiceId` constructs a mixin object that can be merged into the `dataproc_metastore_service`
Terraform data source block to set or update the service_id field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `service_id` field.

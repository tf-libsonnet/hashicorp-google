---
permalink: /data/dns_keys/
---

# data.dns_keys

`dns_keys` represents the `google_dns_keys` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withManagedZone()`](#fn-withmanagedzone)
* [`fn withProject()`](#fn-withproject)

## Fields

### fn new

```ts
new()
```


`google.data.dns_keys.new` injects a new `data_google_dns_keys` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.dns_keys.new('some_id')

You can get the reference to the `id` field of the created `google.data.dns_keys` using the reference:

    $._ref.data_google_dns_keys.some_id.get('id')

This is the same as directly entering `"${ data_google_dns_keys.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `managed_zone` (`string`): 
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.dns_keys.newAttrs` constructs a new object with attributes and blocks configured for the `dns_keys`
Terraform data source.

Unlike [google.data.dns_keys.new](#fn-dnskeysnew), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `managed_zone` (`string`): 
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dns_keys` data source into the root Terraform configuration.


### fn withManagedZone

```ts
withManagedZone()
```

`google.string.withManagedZone` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the managed_zone field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `managed_zone` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.

---
permalink: /data/iap_tunnel_instance_iam_policy/
---

# data.iap_tunnel_instance_iam_policy

`iap_tunnel_instance_iam_policy` represents the `google_iap_tunnel_instance_iam_policy` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withProject()`](#fn-withproject)
* [`fn withZone()`](#fn-withzone)

## Fields

### fn new

```ts
new()
```


`google.data.iap_tunnel_instance_iam_policy.new` injects a new `data_google_iap_tunnel_instance_iam_policy` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.iap_tunnel_instance_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google.data.iap_tunnel_instance_iam_policy` using the reference:

    $._ref.data_google_iap_tunnel_instance_iam_policy.some_id.get('id')

This is the same as directly entering `"${ data_google_iap_tunnel_instance_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `instance` (`string`): Set the `instance` field on the resulting data source block.
  - `project` (`string`): Set the `project` field on the resulting data source block. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): Set the `zone` field on the resulting data source block. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.iap_tunnel_instance_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `iap_tunnel_instance_iam_policy`
Terraform data source.

Unlike [google.data.iap_tunnel_instance_iam_policy.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `instance` (`string`): Set the `instance` field on the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `zone` (`string`): Set the `zone` field on the resulting object. When `null`, the `zone` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `iap_tunnel_instance_iam_policy` data source into the root Terraform configuration.


### fn withInstance

```ts
withInstance()
```

`google.string.withInstance` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the instance field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the zone field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.

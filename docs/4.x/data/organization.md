---
permalink: /data/organization/
---

# data.organization

`organization` represents the `google_organization` Terraform data source.



This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDomain()`](#fn-withdomain)
* [`fn withOrganization()`](#fn-withorganization)

## Fields

### fn new

```ts
new()
```


`google.data.organization.new` injects a new `data_google_organization` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.organization.new('some_id')

You can get the reference to the `id` field of the created `google.data.organization` using the reference:

    $._ref.data_google_organization.some_id.get('id')

This is the same as directly entering `"${ data_google_organization.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `domain` (`string`): Set the `domain` field on the resulting data source block. When `null`, the `domain` field will be omitted from the resulting object.
  - `organization` (`string`): Set the `organization` field on the resulting data source block. When `null`, the `organization` field will be omitted from the resulting object.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.organization.newAttrs` constructs a new object with attributes and blocks configured for the `organization`
Terraform data source.

Unlike [google.data.organization.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `domain` (`string`): Set the `domain` field on the resulting object. When `null`, the `domain` field will be omitted from the resulting object.
  - `organization` (`string`): Set the `organization` field on the resulting object. When `null`, the `organization` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `organization` data source into the root Terraform configuration.


### fn withDomain

```ts
withDomain()
```

`google.string.withDomain` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the domain field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain` field.


### fn withOrganization

```ts
withOrganization()
```

`google.string.withOrganization` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the organization field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organization` field.

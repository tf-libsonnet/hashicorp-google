---
permalink: /data/dns_managed_zones/
---

# data.dns_managed_zones

`dns_managed_zones` represents the `google_dns_managed_zones` Terraform data source.

Provides access to all zones for a given project within Google Cloud DNS

This package contains functions and utilities for setting up the data source using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withManagedZones()`](#fn-withmanagedzones)
* [`fn withManagedZonesMixin()`](#fn-withmanagedzonesmixin)
* [`fn withProject()`](#fn-withproject)
* [`obj managed_zones`](#obj-managed_zones)
  * [`fn new()`](#fn-managed_zonesnew)

## Fields

### fn new

```ts
new()
```


`google.data.dns_managed_zones.new` injects a new `data_google_dns_managed_zones` Terraform `data source`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.data.dns_managed_zones.new('some_id')

You can get the reference to the `id` field of the created `google.data.dns_managed_zones` using the reference:

    $._ref.data_google_dns_managed_zones.some_id.get('id')

This is the same as directly entering `"${ data_google_dns_managed_zones.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `dataSrcLabel` (`string`): The name label of the block.
  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.
  - `managed_zones` (`list[obj]`): The list of managed zones in the given project. When `null`, the `managed_zones` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_managed_zones.managed_zones.new](#fn-managed_zonesnew) constructor.

**Returns**:
- A mixin object that injects the new data source into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.data.dns_managed_zones.newAttrs` constructs a new object with attributes and blocks configured for the `dns_managed_zones`
Terraform data source.

Unlike [google.data.dns_managed_zones.new](#fn-new), this function will not inject the `data source`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`): The ID of the project for the Google Cloud. When `null`, the `project` field will be omitted from the resulting object.
  - `managed_zones` (`list[obj]`): The list of managed zones in the given project. When `null`, the `managed_zones` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data.dns_managed_zones.managed_zones.new](#fn-managed_zonesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `dns_managed_zones` data source into the root Terraform configuration.


### fn withManagedZones

```ts
withManagedZones()
```

`google.list[obj].withManagedZones` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the managed_zones field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagedZonesMixin](TODO) function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `managed_zones` field.


### fn withManagedZonesMixin

```ts
withManagedZonesMixin()
```

`google.list[obj].withManagedZonesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform data source block to set or update the managed_zones field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManagedZones](TODO)
function.


**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `managed_zones` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform data source block to set or update the project field.



**Args**:
  - `dataSrcLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


## obj managed_zones



### fn managed_zones.new

```ts
new()
```


`google.dns_managed_zones.managed_zones.new` constructs a new object with attributes and blocks configured for the `managed_zones`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `managed_zones` sub block.

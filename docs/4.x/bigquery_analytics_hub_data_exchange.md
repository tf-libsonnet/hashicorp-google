---
permalink: /bigquery_analytics_hub_data_exchange/
---

# bigquery_analytics_hub_data_exchange

`bigquery_analytics_hub_data_exchange` represents the `google_bigquery_analytics_hub_data_exchange` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataExchangeId()`](#fn-withdataexchangeid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withDocumentation()`](#fn-withdocumentation)
* [`fn withIcon()`](#fn-withicon)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPrimaryContact()`](#fn-withprimarycontact)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_analytics_hub_data_exchange.new` injects a new `google_bigquery_analytics_hub_data_exchange` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_analytics_hub_data_exchange.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_analytics_hub_data_exchange` using the reference:

    $._ref.google_bigquery_analytics_hub_data_exchange.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_analytics_hub_data_exchange.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  - `description` (`string`): Description of the data exchange. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  - `documentation` (`string`): Documentation describing the data exchange. When `null`, the `documentation` field will be omitted from the resulting object.
  - `icon` (`string`): Base64 encoded image representing the data exchange. When `null`, the `icon` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this data exchange.
  - `primary_contact` (`string`): Email or URL of the primary point of contact of the data exchange. When `null`, the `primary_contact` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_data_exchange.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_analytics_hub_data_exchange.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_analytics_hub_data_exchange`
Terraform resource.

Unlike [google.bigquery_analytics_hub_data_exchange.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `data_exchange_id` (`string`): The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  - `description` (`string`): Description of the data exchange. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  - `documentation` (`string`): Documentation describing the data exchange. When `null`, the `documentation` field will be omitted from the resulting object.
  - `icon` (`string`): Base64 encoded image representing the data exchange. When `null`, the `icon` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this data exchange.
  - `primary_contact` (`string`): Email or URL of the primary point of contact of the data exchange. When `null`, the `primary_contact` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_analytics_hub_data_exchange.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_analytics_hub_data_exchange` resource into the root Terraform configuration.


### fn withDataExchangeId

```ts
withDataExchangeId()
```

`google.string.withDataExchangeId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_exchange_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_exchange_id` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withDocumentation

```ts
withDocumentation()
```

`google.string.withDocumentation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the documentation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `documentation` field.


### fn withIcon

```ts
withIcon()
```

`google.string.withIcon` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the icon field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `icon` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPrimaryContact

```ts
withPrimaryContact()
```

`google.string.withPrimaryContact` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the primary_contact field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `primary_contact` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_analytics_hub_data_exchange.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

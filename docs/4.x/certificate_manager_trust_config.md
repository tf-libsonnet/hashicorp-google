---
permalink: /certificate_manager_trust_config/
---

# certificate_manager_trust_config

`certificate_manager_trust_config` represents the `google_certificate_manager_trust_config` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTrustStores()`](#fn-withtruststores)
* [`fn withTrustStoresMixin()`](#fn-withtruststoresmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj trust_stores`](#obj-trust_stores)
  * [`fn new()`](#fn-trust_storesnew)
  * [`obj trust_stores.intermediate_cas`](#obj-trust_storesintermediate_cas)
    * [`fn new()`](#fn-trust_storesintermediate_casnew)
  * [`obj trust_stores.trust_anchors`](#obj-trust_storestrust_anchors)
    * [`fn new()`](#fn-trust_storestrust_anchorsnew)

## Fields

### fn new

```ts
new()
```


`google.certificate_manager_trust_config.new` injects a new `google_certificate_manager_trust_config` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.certificate_manager_trust_config.new('some_id')

You can get the reference to the `id` field of the created `google.certificate_manager_trust_config` using the reference:

    $._ref.google_certificate_manager_trust_config.some_id.get('id')

This is the same as directly entering `"${ google_certificate_manager_trust_config.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): One or more paragraphs of text description of a trust config. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the trust config.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The trust config location.
  - `name` (`string`): A user-defined name of the trust config. Trust config names must be unique globally.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.timeouts.new](#fn-timeoutsnew) constructor.
  - `trust_stores` (`list[obj]`): Set of trust stores to perform validation against.
This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. When `null`, the `trust_stores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.new](#fn-trust_storesnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.certificate_manager_trust_config.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_trust_config`
Terraform resource.

Unlike [google.certificate_manager_trust_config.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): One or more paragraphs of text description of a trust config. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the trust config.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The trust config location.
  - `name` (`string`): A user-defined name of the trust config. Trust config names must be unique globally.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.timeouts.new](#fn-timeoutsnew) constructor.
  - `trust_stores` (`list[obj]`): Set of trust stores to perform validation against.
This field is supported when TrustConfig is configured with Load Balancers, currently not supported for SPIFFE certificate validation. When `null`, the `trust_stores` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.new](#fn-trust_storesnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_trust_config` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


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


### fn withTrustStores

```ts
withTrustStores()
```

`google.list[obj].withTrustStores` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the trust_stores field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTrustStoresMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `trust_stores` field.


### fn withTrustStoresMixin

```ts
withTrustStoresMixin()
```

`google.list[obj].withTrustStoresMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the trust_stores field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTrustStores](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `trust_stores` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.certificate_manager_trust_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj trust_stores



### fn trust_stores.new

```ts
new()
```


`google.certificate_manager_trust_config.trust_stores.new` constructs a new object with attributes and blocks configured for the `trust_stores`
Terraform sub block.



**Args**:
  - `intermediate_cas` (`list[obj]`): Set of intermediate CA certificates used for the path building phase of chain validation.
The field is currently not supported if trust config is used for the workload certificate feature. When `null`, the `intermediate_cas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.intermediate_cas.new](#fn-trust_storesintermediate_casnew) constructor.
  - `trust_anchors` (`list[obj]`): List of Trust Anchors to be used while performing validation against a given TrustStore. When `null`, the `trust_anchors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_trust_config.trust_stores.trust_anchors.new](#fn-trust_storestrust_anchorsnew) constructor.

**Returns**:
  - An attribute object that represents the `trust_stores` sub block.


## obj trust_stores.intermediate_cas



### fn trust_stores.intermediate_cas.new

```ts
new()
```


`google.certificate_manager_trust_config.trust_stores.intermediate_cas.new` constructs a new object with attributes and blocks configured for the `intermediate_cas`
Terraform sub block.



**Args**:
  - `pem_certificate` (`string`): PEM intermediate certificate used for building up paths for validation.
Each certificate provided in PEM format may occupy up to 5kB. When `null`, the `pem_certificate` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `intermediate_cas` sub block.


## obj trust_stores.trust_anchors



### fn trust_stores.trust_anchors.new

```ts
new()
```


`google.certificate_manager_trust_config.trust_stores.trust_anchors.new` constructs a new object with attributes and blocks configured for the `trust_anchors`
Terraform sub block.



**Args**:
  - `pem_certificate` (`string`): PEM root certificate of the PKI used for validation.
Each certificate provided in PEM format may occupy up to 5kB. When `null`, the `pem_certificate` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `trust_anchors` sub block.

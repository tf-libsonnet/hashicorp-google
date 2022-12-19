---
permalink: /cloudiot_device/
---

# cloudiot_device

`cloudiot_device` represents the `google_cloudiot_device` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBlocked()`](#fn-withblocked)
* [`fn withCredentials()`](#fn-withcredentials)
* [`fn withCredentialsMixin()`](#fn-withcredentialsmixin)
* [`fn withGatewayConfig()`](#fn-withgatewayconfig)
* [`fn withGatewayConfigMixin()`](#fn-withgatewayconfigmixin)
* [`fn withLogLevel()`](#fn-withloglevel)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withName()`](#fn-withname)
* [`fn withRegistry()`](#fn-withregistry)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj credentials`](#obj-credentials)
  * [`fn new()`](#fn-credentialsnew)
  * [`obj credentials.public_key`](#obj-credentialspublic_key)
    * [`fn new()`](#fn-credentialspublic_keynew)
* [`obj gateway_config`](#obj-gateway_config)
  * [`fn new()`](#fn-gateway_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloudiot_device.new` injects a new `google_cloudiot_device` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloudiot_device.new('some_id')

You can get the reference to the `id` field of the created `google.cloudiot_device` using the reference:

    $._ref.google_cloudiot_device.some_id.get('id')

This is the same as directly entering `"${ google_cloudiot_device.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `blocked` (`bool`): If a device is blocked, connections or requests from this device will fail. When `null`, the `blocked` field will be omitted from the resulting object.
  - `log_level` (`string`): The logging verbosity for device activity. Possible values: [&#34;NONE&#34;, &#34;ERROR&#34;, &#34;INFO&#34;, &#34;DEBUG&#34;] When `null`, the `log_level` field will be omitted from the resulting object.
  - `metadata` (`obj`): The metadata key-value pairs assigned to the device. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource.
  - `registry` (`string`): The name of the device registry where this device should be created.
  - `credentials` (`list[obj]`): The credentials used to authenticate this device. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.credentials.new](#fn-credentialsnew) constructor.
  - `gateway_config` (`list[obj]`): Gateway-related configuration and state. When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.gateway_config.new](#fn-gateway_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloudiot_device.newAttrs` constructs a new object with attributes and blocks configured for the `cloudiot_device`
Terraform resource.

Unlike [google.cloudiot_device.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `blocked` (`bool`): If a device is blocked, connections or requests from this device will fail. When `null`, the `blocked` field will be omitted from the resulting object.
  - `log_level` (`string`): The logging verbosity for device activity. Possible values: [&#34;NONE&#34;, &#34;ERROR&#34;, &#34;INFO&#34;, &#34;DEBUG&#34;] When `null`, the `log_level` field will be omitted from the resulting object.
  - `metadata` (`obj`): The metadata key-value pairs assigned to the device. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource.
  - `registry` (`string`): The name of the device registry where this device should be created.
  - `credentials` (`list[obj]`): The credentials used to authenticate this device. When `null`, the `credentials` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.credentials.new](#fn-credentialsnew) constructor.
  - `gateway_config` (`list[obj]`): Gateway-related configuration and state. When `null`, the `gateway_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.gateway_config.new](#fn-gateway_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloudiot_device` resource into the root Terraform configuration.


### fn withBlocked

```ts
withBlocked()
```

`google.bool.withBlocked` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the blocked field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `blocked` field.


### fn withCredentials

```ts
withCredentials()
```

`google.list[obj].withCredentials` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the credentials field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withCredentialsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `credentials` field.


### fn withCredentialsMixin

```ts
withCredentialsMixin()
```

`google.list[obj].withCredentialsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the credentials field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCredentials](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `credentials` field.


### fn withGatewayConfig

```ts
withGatewayConfig()
```

`google.list[obj].withGatewayConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGatewayConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway_config` field.


### fn withGatewayConfigMixin

```ts
withGatewayConfigMixin()
```

`google.list[obj].withGatewayConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gateway_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGatewayConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gateway_config` field.


### fn withLogLevel

```ts
withLogLevel()
```

`google.string.withLogLevel` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the log_level field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `log_level` field.


### fn withMetadata

```ts
withMetadata()
```

`google.obj.withMetadata` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the metadata field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `metadata` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withRegistry

```ts
withRegistry()
```

`google.string.withRegistry` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the registry field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `registry` field.


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


## obj credentials



### fn credentials.new

```ts
new()
```


`google.cloudiot_device.credentials.new` constructs a new object with attributes and blocks configured for the `credentials`
Terraform sub block.



**Args**:
  - `expiration_time` (`string`): The time at which this credential becomes invalid. When `null`, the `expiration_time` field will be omitted from the resulting object.
  - `public_key` (`list[obj]`): A public key used to verify the signature of JSON Web Tokens (JWTs). When `null`, the `public_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloudiot_device.credentials.public_key.new](#fn-public_keynew) constructor.

**Returns**:
  - An attribute object that represents the `credentials` sub block.


## obj credentials.public_key



### fn credentials.public_key.new

```ts
new()
```


`google.cloudiot_device.credentials.public_key.new` constructs a new object with attributes and blocks configured for the `public_key`
Terraform sub block.



**Args**:
  - `format` (`string`): The format of the key. Possible values: [&#34;RSA_PEM&#34;, &#34;RSA_X509_PEM&#34;, &#34;ES256_PEM&#34;, &#34;ES256_X509_PEM&#34;]
  - `key` (`string`): The key data.

**Returns**:
  - An attribute object that represents the `public_key` sub block.


## obj gateway_config



### fn gateway_config.new

```ts
new()
```


`google.cloudiot_device.gateway_config.new` constructs a new object with attributes and blocks configured for the `gateway_config`
Terraform sub block.



**Args**:
  - `gateway_auth_method` (`string`): Indicates whether the device is a gateway. Possible values: [&#34;ASSOCIATION_ONLY&#34;, &#34;DEVICE_AUTH_TOKEN_ONLY&#34;, &#34;ASSOCIATION_AND_DEVICE_AUTH_TOKEN&#34;] When `null`, the `gateway_auth_method` field will be omitted from the resulting object.
  - `gateway_type` (`string`): Indicates whether the device is a gateway. Default value: &#34;NON_GATEWAY&#34; Possible values: [&#34;GATEWAY&#34;, &#34;NON_GATEWAY&#34;] When `null`, the `gateway_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `gateway_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.cloudiot_device.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

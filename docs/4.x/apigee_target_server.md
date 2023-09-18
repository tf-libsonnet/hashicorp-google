---
permalink: /apigee_target_server/
---

# apigee_target_server

`apigee_target_server` represents the `google_apigee_target_server` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnvId()`](#fn-withenvid)
* [`fn withHost()`](#fn-withhost)
* [`fn withIsEnabled()`](#fn-withisenabled)
* [`fn withName()`](#fn-withname)
* [`fn withPort()`](#fn-withport)
* [`fn withProtocol()`](#fn-withprotocol)
* [`fn withSSlInfo()`](#fn-withsslinfo)
* [`fn withSSlInfoMixin()`](#fn-withsslinfomixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj s_sl_info`](#obj-s_sl_info)
  * [`fn new()`](#fn-s_sl_infonew)
  * [`obj s_sl_info.common_name`](#obj-s_sl_infocommon_name)
    * [`fn new()`](#fn-s_sl_infocommon_namenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_target_server.new` injects a new `google_apigee_target_server` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_target_server.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_target_server` using the reference:

    $._ref.google_apigee_target_server.some_id.get('id')

This is the same as directly entering `"${ google_apigee_target_server.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description of this TargetServer. When `null`, the `description` field will be omitted from the resulting object.
  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,
in the format &#39;organizations/{{org_name}}/environments/{{env_name}}&#39;.
  - `host` (`string`): The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  - `is_enabled` (`bool`): Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true. When `null`, the `is_enabled` field will be omitted from the resulting object.
  - `name` (`string`): The resource id of this reference. Values must match the regular expression [\w\s-.]&#43;.
  - `port` (`number`): The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  - `protocol` (`string`): Immutable. The protocol used by this TargetServer. Possible values: [&#34;HTTP&#34;, &#34;HTTP2&#34;, &#34;GRPC_TARGET&#34;, &#34;GRPC&#34;, &#34;EXTERNAL_CALLOUT&#34;] When `null`, the `protocol` field will be omitted from the resulting object.
  - `s_sl_info` (`list[obj]`): Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration. When `null`, the `s_sl_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.s_sl_info.new](#fn-s_sl_infonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_target_server.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_target_server`
Terraform resource.

Unlike [google.apigee_target_server.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description of this TargetServer. When `null`, the `description` field will be omitted from the resulting object.
  - `env_id` (`string`): The Apigee environment group associated with the Apigee environment,
in the format &#39;organizations/{{org_name}}/environments/{{env_name}}&#39;.
  - `host` (`string`): The host name this target connects to. Value must be a valid hostname as described by RFC-1123.
  - `is_enabled` (`bool`): Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true. When `null`, the `is_enabled` field will be omitted from the resulting object.
  - `name` (`string`): The resource id of this reference. Values must match the regular expression [\w\s-.]&#43;.
  - `port` (`number`): The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive.
  - `protocol` (`string`): Immutable. The protocol used by this TargetServer. Possible values: [&#34;HTTP&#34;, &#34;HTTP2&#34;, &#34;GRPC_TARGET&#34;, &#34;GRPC&#34;, &#34;EXTERNAL_CALLOUT&#34;] When `null`, the `protocol` field will be omitted from the resulting object.
  - `s_sl_info` (`list[obj]`): Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration. When `null`, the `s_sl_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.s_sl_info.new](#fn-s_sl_infonew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_target_server` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnvId

```ts
withEnvId()
```

`google.string.withEnvId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the env_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `env_id` field.


### fn withHost

```ts
withHost()
```

`google.string.withHost` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the host field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `host` field.


### fn withIsEnabled

```ts
withIsEnabled()
```

`google.bool.withIsEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the is_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `is_enabled` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPort

```ts
withPort()
```

`google.number.withPort` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `port` field.


### fn withProtocol

```ts
withProtocol()
```

`google.string.withProtocol` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `protocol` field.


### fn withSSlInfo

```ts
withSSlInfo()
```

`google.list[obj].withSSlInfo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the s_sl_info field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSSlInfoMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `s_sl_info` field.


### fn withSSlInfoMixin

```ts
withSSlInfoMixin()
```

`google.list[obj].withSSlInfoMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the s_sl_info field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSSlInfo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `s_sl_info` field.


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


## obj s_sl_info



### fn s_sl_info.new

```ts
new()
```


`google.apigee_target_server.s_sl_info.new` constructs a new object with attributes and blocks configured for the `s_sl_info`
Terraform sub block.



**Args**:
  - `ciphers` (`list`): The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3. When `null`, the `ciphers` field will be omitted from the resulting object.
  - `client_auth_enabled` (`bool`): Enables two-way TLS. When `null`, the `client_auth_enabled` field will be omitted from the resulting object.
  - `enabled` (`bool`): Enables TLS. If false, neither one-way nor two-way TLS will be enabled.
  - `ignore_validation_errors` (`bool`): If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails. When `null`, the `ignore_validation_errors` field will be omitted from the resulting object.
  - `key_alias` (`string`): Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert. When `null`, the `key_alias` field will be omitted from the resulting object.
  - `key_store` (`string`): Required if clientAuthEnabled is true. The resource ID of the keystore. When `null`, the `key_store` field will be omitted from the resulting object.
  - `protocols` (`list`): The TLS versioins to be used. When `null`, the `protocols` field will be omitted from the resulting object.
  - `trust_store` (`string`): The resource ID of the truststore. When `null`, the `trust_store` field will be omitted from the resulting object.
  - `common_name` (`list[obj]`): The TLS Common Name of the certificate. When `null`, the `common_name` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_target_server.s_sl_info.common_name.new](#fn-s_sl_infocommon_namenew) constructor.

**Returns**:
  - An attribute object that represents the `s_sl_info` sub block.


## obj s_sl_info.common_name



### fn s_sl_info.common_name.new

```ts
new()
```


`google.apigee_target_server.s_sl_info.common_name.new` constructs a new object with attributes and blocks configured for the `common_name`
Terraform sub block.



**Args**:
  - `value` (`string`): The TLS Common Name string of the certificate. When `null`, the `value` field will be omitted from the resulting object.
  - `wildcard_match` (`bool`): Indicates whether the cert should be matched against as a wildcard cert. When `null`, the `wildcard_match` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `common_name` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_target_server.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

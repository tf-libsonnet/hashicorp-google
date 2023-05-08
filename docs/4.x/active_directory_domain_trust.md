---
permalink: /active_directory_domain_trust/
---

# active_directory_domain_trust

`active_directory_domain_trust` represents the `google_active_directory_domain_trust` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDomain()`](#fn-withdomain)
* [`fn withProject()`](#fn-withproject)
* [`fn withSelectiveAuthentication()`](#fn-withselectiveauthentication)
* [`fn withTargetDnsIpAddresses()`](#fn-withtargetdnsipaddresses)
* [`fn withTargetDomainName()`](#fn-withtargetdomainname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTrustDirection()`](#fn-withtrustdirection)
* [`fn withTrustHandshakeSecret()`](#fn-withtrusthandshakesecret)
* [`fn withTrustType()`](#fn-withtrusttype)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.active_directory_domain_trust.new` injects a new `google_active_directory_domain_trust` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.active_directory_domain_trust.new('some_id')

You can get the reference to the `id` field of the created `google.active_directory_domain_trust` using the reference:

    $._ref.google_active_directory_domain_trust.some_id.get('id')

This is the same as directly entering `"${ google_active_directory_domain_trust.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `domain` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `selective_authentication` (`bool`): Whether the trusted side has forest/domain wide access or selective access to an approved set of resources. When `null`, the `selective_authentication` field will be omitted from the resulting object.
  - `target_dns_ip_addresses` (`list`): The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  - `target_domain_name` (`string`): The fully qualified target domain name which will be in trust with the current domain.
  - `trust_direction` (`string`): The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [&#34;INBOUND&#34;, &#34;OUTBOUND&#34;, &#34;BIDIRECTIONAL&#34;]
  - `trust_handshake_secret` (`string`): The trust secret used for the handshake with the target domain. This will not be stored.
  - `trust_type` (`string`): The type of trust represented by the trust resource. Possible values: [&#34;FOREST&#34;, &#34;EXTERNAL&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain_trust.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.active_directory_domain_trust.newAttrs` constructs a new object with attributes and blocks configured for the `active_directory_domain_trust`
Terraform resource.

Unlike [google.active_directory_domain_trust.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `domain` (`string`): The fully qualified domain name. e.g. mydomain.myorganization.com, with the restrictions,
https://cloud.google.com/managed-microsoft-ad/reference/rest/v1/projects.locations.global.domains.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `selective_authentication` (`bool`): Whether the trusted side has forest/domain wide access or selective access to an approved set of resources. When `null`, the `selective_authentication` field will be omitted from the resulting object.
  - `target_dns_ip_addresses` (`list`): The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  - `target_domain_name` (`string`): The fully qualified target domain name which will be in trust with the current domain.
  - `trust_direction` (`string`): The trust direction, which decides if the current domain is trusted, trusting, or both. Possible values: [&#34;INBOUND&#34;, &#34;OUTBOUND&#34;, &#34;BIDIRECTIONAL&#34;]
  - `trust_handshake_secret` (`string`): The trust secret used for the handshake with the target domain. This will not be stored.
  - `trust_type` (`string`): The type of trust represented by the trust resource. Possible values: [&#34;FOREST&#34;, &#34;EXTERNAL&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.active_directory_domain_trust.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `active_directory_domain_trust` resource into the root Terraform configuration.


### fn withDomain

```ts
withDomain()
```

`google.string.withDomain` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the domain field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `domain` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSelectiveAuthentication

```ts
withSelectiveAuthentication()
```

`google.bool.withSelectiveAuthentication` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the selective_authentication field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `selective_authentication` field.


### fn withTargetDnsIpAddresses

```ts
withTargetDnsIpAddresses()
```

`google.list.withTargetDnsIpAddresses` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the target_dns_ip_addresses field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `target_dns_ip_addresses` field.


### fn withTargetDomainName

```ts
withTargetDomainName()
```

`google.string.withTargetDomainName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target_domain_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_domain_name` field.


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


### fn withTrustDirection

```ts
withTrustDirection()
```

`google.string.withTrustDirection` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the trust_direction field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `trust_direction` field.


### fn withTrustHandshakeSecret

```ts
withTrustHandshakeSecret()
```

`google.string.withTrustHandshakeSecret` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the trust_handshake_secret field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `trust_handshake_secret` field.


### fn withTrustType

```ts
withTrustType()
```

`google.string.withTrustType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the trust_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `trust_type` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.active_directory_domain_trust.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

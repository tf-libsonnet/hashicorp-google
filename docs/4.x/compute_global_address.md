---
permalink: /compute_global_address/
---

# compute_global_address

`compute_global_address` represents the `google_compute_global_address` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAddress()`](#fn-withaddress)
* [`fn withAddressType()`](#fn-withaddresstype)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpVersion()`](#fn-withipversion)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withPrefixLength()`](#fn-withprefixlength)
* [`fn withProject()`](#fn-withproject)
* [`fn withPurpose()`](#fn-withpurpose)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_global_address.new` injects a new `google_compute_global_address` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_global_address.new('some_id')

You can get the reference to the `id` field of the created `google.compute_global_address` using the reference:

    $._ref.google_compute_global_address.some_id.get('id')

This is the same as directly entering `"${ google_compute_global_address.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `address` (`string`): The IP address or beginning of the address range represented by this
resource. This can be supplied as an input to reserve a specific
address or omitted to allow GCP to choose a valid one for you. When `null`, the `address` field will be omitted from the resulting object.
  - `address_type` (`string`): The type of the address to reserve.

* EXTERNAL indicates public/external single IP address.
* INTERNAL indicates internal IP ranges belonging to some network. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;INTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is &#39;IPV4&#39;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The URL of the network in which to reserve the IP range. The IP range
must be in RFC1918 space. The network cannot be deleted if there are
any reserved IP ranges referring to it.

This should only be set when using an Internal address. When `null`, the `network` field will be omitted from the resulting object.
  - `prefix_length` (`number`): The prefix length of the IP range. If not present, it means the
address field is a single IP address.

This field is not applicable to addresses with addressType=EXTERNAL,
or addressType=INTERNAL when purpose=PRIVATE_SERVICE_CONNECT When `null`, the `prefix_length` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `purpose` (`string`): The purpose of the resource. Possible values include:

* VPC_PEERING - for peer networks

* PRIVATE_SERVICE_CONNECT - for ([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html) only) Private Service Connect networks When `null`, the `purpose` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_address.timeouts.new](#fn-computeglobaladdresstimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_global_address.newAttrs` constructs a new object with attributes and blocks configured for the `compute_global_address`
Terraform resource.

Unlike [google.compute_global_address.new](#fn-computeglobaladdressnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `address` (`string`): The IP address or beginning of the address range represented by this
resource. This can be supplied as an input to reserve a specific
address or omitted to allow GCP to choose a valid one for you. When `null`, the `address` field will be omitted from the resulting object.
  - `address_type` (`string`): The type of the address to reserve.

* EXTERNAL indicates public/external single IP address.
* INTERNAL indicates internal IP ranges belonging to some network. Default value: &#34;EXTERNAL&#34; Possible values: [&#34;EXTERNAL&#34;, &#34;INTERNAL&#34;] When `null`, the `address_type` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `ip_version` (`string`): The IP Version that will be used by this address. The default value is &#39;IPV4&#39;. Possible values: [&#34;IPV4&#34;, &#34;IPV6&#34;] When `null`, the `ip_version` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The URL of the network in which to reserve the IP range. The IP range
must be in RFC1918 space. The network cannot be deleted if there are
any reserved IP ranges referring to it.

This should only be set when using an Internal address. When `null`, the `network` field will be omitted from the resulting object.
  - `prefix_length` (`number`): The prefix length of the IP range. If not present, it means the
address field is a single IP address.

This field is not applicable to addresses with addressType=EXTERNAL,
or addressType=INTERNAL when purpose=PRIVATE_SERVICE_CONNECT When `null`, the `prefix_length` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `purpose` (`string`): The purpose of the resource. Possible values include:

* VPC_PEERING - for peer networks

* PRIVATE_SERVICE_CONNECT - for ([Beta](https://terraform.io/docs/providers/google/guides/provider_versions.html) only) Private Service Connect networks When `null`, the `purpose` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_global_address.timeouts.new](#fn-computeglobaladdresstimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_global_address` resource into the root Terraform configuration.


### fn withAddress

```ts
withAddress()
```

`google.compute_global_address.withAddress` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the address field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `address` field.


### fn withAddressType

```ts
withAddressType()
```

`google.compute_global_address.withAddressType` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the address_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `address_type` field.


### fn withDescription

```ts
withDescription()
```

`google.compute_global_address.withDescription` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withIpVersion

```ts
withIpVersion()
```

`google.compute_global_address.withIpVersion` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the ip_version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `ip_version` field.


### fn withName

```ts
withName()
```

`google.compute_global_address.withName` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.compute_global_address.withNetwork` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withPrefixLength

```ts
withPrefixLength()
```

`google.compute_global_address.withPrefixLength` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the prefix_length field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `prefix_length` field.


### fn withProject

```ts
withProject()
```

`google.compute_global_address.withProject` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withPurpose

```ts
withPurpose()
```

`google.compute_global_address.withPurpose` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the purpose field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `purpose` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_global_address.withTimeouts` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_global_address.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_global_address`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_global_address.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_global_address.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

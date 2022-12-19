---
permalink: /compute_ssl_certificate/
---

# compute_ssl_certificate

`compute_ssl_certificate` represents the `google_compute_ssl_certificate` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificate()`](#fn-withcertificate)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withNamePrefix()`](#fn-withnameprefix)
* [`fn withPrivateKey()`](#fn-withprivatekey)
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


`google.compute_ssl_certificate.new` injects a new `google_compute_ssl_certificate` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_ssl_certificate.new('some_id')

You can get the reference to the `id` field of the created `google.compute_ssl_certificate` using the reference:

    $._ref.google_compute_ssl_certificate.some_id.get('id')

This is the same as directly entering `"${ google_compute_ssl_certificate.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `certificate` (`string`): The certificate in PEM format.
The certificate chain must be no greater than 5 certs long.
The chain must include at least one intermediate cert.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `private_key` (`string`): The write-only private key in PEM format.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ssl_certificate.timeouts.new](#fn-computesslcertificatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_ssl_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `compute_ssl_certificate`
Terraform resource.

Unlike [google.compute_ssl_certificate.new](#fn-computesslcertificatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificate` (`string`): The certificate in PEM format.
The certificate chain must be no greater than 5 certs long.
The chain must include at least one intermediate cert.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `private_key` (`string`): The write-only private key in PEM format.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_ssl_certificate.timeouts.new](#fn-computesslcertificatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_ssl_certificate` resource into the root Terraform configuration.


### fn withCertificate

```ts
withCertificate()
```

`google.compute_ssl_certificate.withCertificate` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the certificate field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `certificate` field.


### fn withDescription

```ts
withDescription()
```

`google.compute_ssl_certificate.withDescription` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.compute_ssl_certificate.withName` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNamePrefix

```ts
withNamePrefix()
```

`google.compute_ssl_certificate.withNamePrefix` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the name_prefix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name_prefix` field.


### fn withPrivateKey

```ts
withPrivateKey()
```

`google.compute_ssl_certificate.withPrivateKey` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the private_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `private_key` field.


### fn withProject

```ts
withProject()
```

`google.compute_ssl_certificate.withProject` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_ssl_certificate.withTimeouts` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_ssl_certificate.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_ssl_certificate`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_ssl_certificate.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_ssl_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

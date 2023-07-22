---
permalink: /certificate_manager_certificate/
---

# certificate_manager_certificate

`certificate_manager_certificate` represents the `google_certificate_manager_certificate` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withManaged()`](#fn-withmanaged)
* [`fn withManagedMixin()`](#fn-withmanagedmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withScope()`](#fn-withscope)
* [`fn withSelfManaged()`](#fn-withselfmanaged)
* [`fn withSelfManagedMixin()`](#fn-withselfmanagedmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj managed`](#obj-managed)
  * [`fn new()`](#fn-managednew)
* [`obj self_managed`](#obj-self_managed)
  * [`fn new()`](#fn-self_managednew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.certificate_manager_certificate.new` injects a new `google_certificate_manager_certificate` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.certificate_manager_certificate.new('some_id')

You can get the reference to the `id` field of the created `google.certificate_manager_certificate` using the reference:

    $._ref.google_certificate_manager_certificate.some_id.get('id')

This is the same as directly entering `"${ google_certificate_manager_certificate.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the Certificate resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The Certificate Manager location. If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the certificate. Certificate names must be unique
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `scope` (`string`): The scope of the certificate.

DEFAULT: Certificates with default scope are served from core Google data centers.
If unsure, choose this option.

EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates,
served from non-core Google data centers.
Currently allowed only for managed certificates. When `null`, the `scope` field will be omitted from the resulting object.
  - `managed` (`list[obj]`): Configuration and state of a Managed Certificate.
Certificate Manager provisions and renews Managed Certificates
automatically, for as long as it&#39;s authorized to do so. When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.managed.new](#fn-managednew) constructor.
  - `self_managed` (`list[obj]`): Certificate data for a SelfManaged Certificate.
SelfManaged Certificates are uploaded by the user. Updating such
certificates before they expire remains the user&#39;s responsibility. When `null`, the `self_managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.self_managed.new](#fn-self_managednew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.certificate_manager_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `certificate_manager_certificate`
Terraform resource.

Unlike [google.certificate_manager_certificate.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Set of label tags associated with the Certificate resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The Certificate Manager location. If not specified, &#34;global&#34; is used. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): A user-defined name of the certificate. Certificate names must be unique
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `scope` (`string`): The scope of the certificate.

DEFAULT: Certificates with default scope are served from core Google data centers.
If unsure, choose this option.

EDGE_CACHE: Certificates with scope EDGE_CACHE are special-purposed certificates,
served from non-core Google data centers.
Currently allowed only for managed certificates. When `null`, the `scope` field will be omitted from the resulting object.
  - `managed` (`list[obj]`): Configuration and state of a Managed Certificate.
Certificate Manager provisions and renews Managed Certificates
automatically, for as long as it&#39;s authorized to do so. When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.managed.new](#fn-managednew) constructor.
  - `self_managed` (`list[obj]`): Certificate data for a SelfManaged Certificate.
SelfManaged Certificates are uploaded by the user. Updating such
certificates before they expire remains the user&#39;s responsibility. When `null`, the `self_managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.self_managed.new](#fn-self_managednew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.certificate_manager_certificate.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `certificate_manager_certificate` resource into the root Terraform configuration.


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


### fn withManaged

```ts
withManaged()
```

`google.list[obj].withManaged` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the managed field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagedMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `managed` field.


### fn withManagedMixin

```ts
withManagedMixin()
```

`google.list[obj].withManagedMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the managed field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManaged](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `managed` field.


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


### fn withScope

```ts
withScope()
```

`google.string.withScope` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the scope field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `scope` field.


### fn withSelfManaged

```ts
withSelfManaged()
```

`google.list[obj].withSelfManaged` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the self_managed field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSelfManagedMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `self_managed` field.


### fn withSelfManagedMixin

```ts
withSelfManagedMixin()
```

`google.list[obj].withSelfManagedMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the self_managed field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSelfManaged](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `self_managed` field.


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


## obj managed



### fn managed.new

```ts
new()
```


`google.certificate_manager_certificate.managed.new` constructs a new object with attributes and blocks configured for the `managed`
Terraform sub block.



**Args**:
  - `dns_authorizations` (`list`): Authorizations that will be used for performing domain authorization. Either issuanceConfig or dnsAuthorizations should be specificed, but not both. When `null`, the `dns_authorizations` field will be omitted from the resulting object.
  - `domains` (`list`): The domains for which a managed SSL certificate will be generated.
Wildcard domains are only supported with DNS challenge resolution When `null`, the `domains` field will be omitted from the resulting object.
  - `issuance_config` (`string`): The resource name for a CertificateIssuanceConfig used to configure private PKI certificates in the format projects/*/locations/*/certificateIssuanceConfigs/*.
If this field is not set, the certificates will instead be publicly signed as documented at https://cloud.google.com/load-balancing/docs/ssl-certificates/google-managed-certs#caa.
Either issuanceConfig or dnsAuthorizations should be specificed, but not both. When `null`, the `issuance_config` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `managed` sub block.


## obj self_managed



### fn self_managed.new

```ts
new()
```


`google.certificate_manager_certificate.self_managed.new` constructs a new object with attributes and blocks configured for the `self_managed`
Terraform sub block.



**Args**:
  - `certificate_pem` (`string`): **Deprecated** The certificate chain in PEM-encoded form.

Leaf certificate comes first, followed by intermediate ones if any. When `null`, the `certificate_pem` field will be omitted from the resulting object.
  - `pem_certificate` (`string`): The certificate chain in PEM-encoded form.

Leaf certificate comes first, followed by intermediate ones if any. When `null`, the `pem_certificate` field will be omitted from the resulting object.
  - `pem_private_key` (`string`): The private key of the leaf certificate in PEM-encoded form. When `null`, the `pem_private_key` field will be omitted from the resulting object.
  - `private_key_pem` (`string`): **Deprecated** The private key of the leaf certificate in PEM-encoded form. When `null`, the `private_key_pem` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `self_managed` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.certificate_manager_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

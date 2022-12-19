---
permalink: /compute_managed_ssl_certificate/
---

# compute_managed_ssl_certificate

`compute_managed_ssl_certificate` represents the `google_compute_managed_ssl_certificate` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCertificateId()`](#fn-withcertificateid)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withManaged()`](#fn-withmanaged)
* [`fn withManagedMixin()`](#fn-withmanagedmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj managed`](#obj-managed)
  * [`fn new()`](#fn-managednew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_managed_ssl_certificate.new` injects a new `google_compute_managed_ssl_certificate` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_managed_ssl_certificate.new('some_id')

You can get the reference to the `id` field of the created `google.compute_managed_ssl_certificate` using the reference:

    $._ref.google_compute_managed_ssl_certificate.some_id.get('id')

This is the same as directly entering `"${ google_compute_managed_ssl_certificate.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `certificate_id` (`number`): The unique identifier for the resource. When `null`, the `certificate_id` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): Enum field whose value is always &#39;MANAGED&#39; - used to signal to the API
which type this is. Default value: &#34;MANAGED&#34; Possible values: [&#34;MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `managed` (`list[obj]`): Properties relevant to a managed certificate.  These will be used if the
certificate is managed (as indicated by a value of &#39;MANAGED&#39; in &#39;type&#39;). When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.managed.new](#fn-compute_managed_ssl_certificatemanagednew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.timeouts.new](#fn-compute_managed_ssl_certificatetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_managed_ssl_certificate.newAttrs` constructs a new object with attributes and blocks configured for the `compute_managed_ssl_certificate`
Terraform resource.

Unlike [google.compute_managed_ssl_certificate.new](#fn-compute_managed_ssl_certificatenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `certificate_id` (`number`): The unique identifier for the resource. When `null`, the `certificate_id` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.


These are in the same namespace as the managed SSL certificates. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): Enum field whose value is always &#39;MANAGED&#39; - used to signal to the API
which type this is. Default value: &#34;MANAGED&#34; Possible values: [&#34;MANAGED&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `managed` (`list[obj]`): Properties relevant to a managed certificate.  These will be used if the
certificate is managed (as indicated by a value of &#39;MANAGED&#39; in &#39;type&#39;). When `null`, the `managed` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.managed.new](#fn-compute_managed_ssl_certificatemanagednew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_managed_ssl_certificate.timeouts.new](#fn-compute_managed_ssl_certificatetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_managed_ssl_certificate` resource into the root Terraform configuration.


### fn withCertificateId

```ts
withCertificateId()
```

`google.number.withCertificateId` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the certificate_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `certificate_id` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj managed



### fn managed.new

```ts
new()
```


`google.compute_managed_ssl_certificate.managed.new` constructs a new object with attributes and blocks configured for the `managed`
Terraform sub block.



**Args**:
  - `domains` (`list`): Domains for which a managed SSL certificate will be valid.  Currently,
there can be up to 100 domains in this list.

**Returns**:
  - An attribute object that represents the `managed` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_managed_ssl_certificate.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

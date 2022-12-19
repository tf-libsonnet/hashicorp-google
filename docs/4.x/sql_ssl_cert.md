---
permalink: /sql_ssl_cert/
---

# sql_ssl_cert

`sql_ssl_cert` represents the `google_sql_ssl_cert` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCommonName()`](#fn-withcommonname)
* [`fn withInstance()`](#fn-withinstance)
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


`google.sql_ssl_cert.new` injects a new `google_sql_ssl_cert` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.sql_ssl_cert.new('some_id')

You can get the reference to the `id` field of the created `google.sql_ssl_cert` using the reference:

    $._ref.google_sql_ssl_cert.some_id.get('id')

This is the same as directly entering `"${ google_sql_ssl_cert.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `common_name` (`string`): The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]&#43;. Changing this forces a new resource to be created.
  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_ssl_cert.timeouts.new](#fn-sqlsslcerttimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.sql_ssl_cert.newAttrs` constructs a new object with attributes and blocks configured for the `sql_ssl_cert`
Terraform resource.

Unlike [google.sql_ssl_cert.new](#fn-sqlsslcertnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `common_name` (`string`): The common name to be used in the certificate to identify the client. Constrained to [a-zA-Z.-_ ]&#43;. Changing this forces a new resource to be created.
  - `instance` (`string`): The name of the Cloud SQL instance. Changing this forces a new resource to be created.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.sql_ssl_cert.timeouts.new](#fn-sqlsslcerttimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `sql_ssl_cert` resource into the root Terraform configuration.


### fn withCommonName

```ts
withCommonName()
```

`google.sql_ssl_cert.withCommonName` constructs a mixin object that can be merged into the `sql_ssl_cert`
Terraform resource block to set or update the common_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `common_name` field.


### fn withInstance

```ts
withInstance()
```

`google.sql_ssl_cert.withInstance` constructs a mixin object that can be merged into the `sql_ssl_cert`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `instance` field.


### fn withProject

```ts
withProject()
```

`google.sql_ssl_cert.withProject` constructs a mixin object that can be merged into the `sql_ssl_cert`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.sql_ssl_cert.withTimeouts` constructs a mixin object that can be merged into the `sql_ssl_cert`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.sql_ssl_cert.withTimeoutsMixin` constructs a mixin object that can be merged into the `sql_ssl_cert`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.sql_ssl_cert.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.sql_ssl_cert.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

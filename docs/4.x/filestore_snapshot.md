---
permalink: /filestore_snapshot/
---

# filestore_snapshot

`filestore_snapshot` represents the `google_filestore_snapshot` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInstance()`](#fn-withinstance)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
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


`google.filestore_snapshot.new` injects a new `google_filestore_snapshot` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.filestore_snapshot.new('some_id')

You can get the reference to the `id` field of the created `google.filestore_snapshot` using the reference:

    $._ref.google_filestore_snapshot.some_id.get('id')

This is the same as directly entering `"${ google_filestore_snapshot.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `instance` (`string`): The resource name of the filestore instance.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  - `name` (`string`): The resource name of the snapshot. The name must be unique within the specified instance.

The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_snapshot.timeouts.new](#fn-filestoresnapshottimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.filestore_snapshot.newAttrs` constructs a new object with attributes and blocks configured for the `filestore_snapshot`
Terraform resource.

Unlike [google.filestore_snapshot.new](#fn-filestoresnapshotnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the snapshot with 2048 characters or less. Requests with longer descriptions will be rejected. When `null`, the `description` field will be omitted from the resulting object.
  - `instance` (`string`): The resource name of the filestore instance.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location of the instance. This can be a region for ENTERPRISE tier instances.
  - `name` (`string`): The resource name of the snapshot. The name must be unique within the specified instance.

The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_snapshot.timeouts.new](#fn-filestoresnapshottimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `filestore_snapshot` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.filestore_snapshot.withDescription` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withInstance

```ts
withInstance()
```

`google.filestore_snapshot.withInstance` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the instance field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `instance` field.


### fn withLabels

```ts
withLabels()
```

`google.filestore_snapshot.withLabels` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.filestore_snapshot.withLocation` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `location` field.


### fn withName

```ts
withName()
```

`google.filestore_snapshot.withName` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.filestore_snapshot.withProject` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.filestore_snapshot.withTimeouts` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.filestore_snapshot.withTimeoutsMixin` constructs a mixin object that can be merged into the `filestore_snapshot`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.filestore_snapshot.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.filestore_snapshot.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

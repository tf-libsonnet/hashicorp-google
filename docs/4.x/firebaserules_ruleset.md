---
permalink: /firebaserules_ruleset/
---

# firebaserules_ruleset

`firebaserules_ruleset` represents the `google_firebaserules_ruleset` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withProject()`](#fn-withproject)
* [`fn withSource()`](#fn-withsource)
* [`fn withSourceMixin()`](#fn-withsourcemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj source`](#obj-source)
  * [`fn new()`](#fn-sourcenew)
  * [`obj source.files`](#obj-sourcefiles)
    * [`fn new()`](#fn-sourcefilesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.firebaserules_ruleset.new` injects a new `google_firebaserules_ruleset` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.firebaserules_ruleset.new('some_id')

You can get the reference to the `id` field of the created `google.firebaserules_ruleset` using the reference:

    $._ref.google_firebaserules_ruleset.some_id.get('id')

This is the same as directly entering `"${ google_firebaserules_ruleset.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `source` (`list[obj]`): `Source` for the `Ruleset`. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.source.new](#fn-sourcenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.firebaserules_ruleset.newAttrs` constructs a new object with attributes and blocks configured for the `firebaserules_ruleset`
Terraform resource.

Unlike [google.firebaserules_ruleset.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `source` (`list[obj]`): `Source` for the `Ruleset`. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.source.new](#fn-sourcenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firebaserules_ruleset` resource into the root Terraform configuration.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSource

```ts
withSource()
```

`google.list[obj].withSource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source` field.


### fn withSourceMixin

```ts
withSourceMixin()
```

`google.list[obj].withSourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source` field.


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


## obj source



### fn source.new

```ts
new()
```


`google.firebaserules_ruleset.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `language` (`string`): `Language` of the `Source` bundle. If unspecified, the language will default to `FIREBASE_RULES`. Possible values: LANGUAGE_UNSPECIFIED, FIREBASE_RULES, EVENT_FLOW_TRIGGERS When `null`, the `language` field will be omitted from the resulting object.
  - `files` (`list[obj]`): `File` set constituting the `Source` bundle. When `null`, the `files` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firebaserules_ruleset.source.files.new](#fn-filesnew) constructor.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj source.files



### fn source.files.new

```ts
new()
```


`google.firebaserules_ruleset.source.files.new` constructs a new object with attributes and blocks configured for the `files`
Terraform sub block.



**Args**:
  - `content` (`string`): Textual Content.
  - `fingerprint` (`string`): Fingerprint (e.g. github sha) associated with the `File`. When `null`, the `fingerprint` field will be omitted from the resulting object.
  - `name` (`string`): File name.

**Returns**:
  - An attribute object that represents the `files` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.firebaserules_ruleset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

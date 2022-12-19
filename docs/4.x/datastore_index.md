---
permalink: /datastore_index/
---

# datastore_index

`datastore_index` represents the `google_datastore_index` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAncestor()`](#fn-withancestor)
* [`fn withKind()`](#fn-withkind)
* [`fn withProject()`](#fn-withproject)
* [`fn withProperties()`](#fn-withproperties)
* [`fn withPropertiesMixin()`](#fn-withpropertiesmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj properties`](#obj-properties)
  * [`fn new()`](#fn-propertiesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.datastore_index.new` injects a new `google_datastore_index` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.datastore_index.new('some_id')

You can get the reference to the `id` field of the created `google.datastore_index` using the reference:

    $._ref.google_datastore_index.some_id.get('id')

This is the same as directly entering `"${ google_datastore_index.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `ancestor` (`string`): Policy for including ancestors in the index. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ALL_ANCESTORS&#34;] When `null`, the `ancestor` field will be omitted from the resulting object.
  - `kind` (`string`): The entity kind which the index applies to.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `properties` (`list[obj]`): An ordered list of properties to index on. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.properties.new](#fn-propertiesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.datastore_index.newAttrs` constructs a new object with attributes and blocks configured for the `datastore_index`
Terraform resource.

Unlike [google.datastore_index.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `ancestor` (`string`): Policy for including ancestors in the index. Default value: &#34;NONE&#34; Possible values: [&#34;NONE&#34;, &#34;ALL_ANCESTORS&#34;] When `null`, the `ancestor` field will be omitted from the resulting object.
  - `kind` (`string`): The entity kind which the index applies to.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `properties` (`list[obj]`): An ordered list of properties to index on. When `null`, the `properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.properties.new](#fn-propertiesnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastore_index.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastore_index` resource into the root Terraform configuration.


### fn withAncestor

```ts
withAncestor()
```

`google.string.withAncestor` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ancestor field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ancestor` field.


### fn withKind

```ts
withKind()
```

`google.string.withKind` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kind field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kind` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withProperties

```ts
withProperties()
```

`google.list[obj].withProperties` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the properties field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPropertiesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `properties` field.


### fn withPropertiesMixin

```ts
withPropertiesMixin()
```

`google.list[obj].withPropertiesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the properties field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withProperties](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `properties` field.


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


## obj properties



### fn properties.new

```ts
new()
```


`google.datastore_index.properties.new` constructs a new object with attributes and blocks configured for the `properties`
Terraform sub block.



**Args**:
  - `direction` (`string`): The direction the index should optimize for sorting. Possible values: [&#34;ASCENDING&#34;, &#34;DESCENDING&#34;]
  - `name` (`string`): The property name to index.

**Returns**:
  - An attribute object that represents the `properties` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.datastore_index.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

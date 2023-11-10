---
permalink: /firestore_index/
---

# firestore_index

`firestore_index` represents the `google_firestore_index` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiScope()`](#fn-withapiscope)
* [`fn withCollection()`](#fn-withcollection)
* [`fn withDatabase()`](#fn-withdatabase)
* [`fn withFields()`](#fn-withfields)
* [`fn withFieldsMixin()`](#fn-withfieldsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withQueryScope()`](#fn-withqueryscope)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj fields`](#obj-fields)
  * [`fn new()`](#fn-fieldsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.firestore_index.new` injects a new `google_firestore_index` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.firestore_index.new('some_id')

You can get the reference to the `id` field of the created `google.firestore_index` using the reference:

    $._ref.google_firestore_index.some_id.get('id')

This is the same as directly entering `"${ google_firestore_index.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api_scope` (`string`): The API scope at which a query is run. Default value: &#34;ANY_API&#34; Possible values: [&#34;ANY_API&#34;, &#34;DATASTORE_MODE_API&#34;] When `null`, the `api_scope` field will be omitted from the resulting object.
  - `collection` (`string`): The collection being indexed.
  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `query_scope` (`string`): The scope at which a query is run. Default value: &#34;COLLECTION&#34; Possible values: [&#34;COLLECTION&#34;, &#34;COLLECTION_GROUP&#34;, &#34;COLLECTION_RECURSIVE&#34;] When `null`, the `query_scope` field will be omitted from the resulting object.
  - `fields` (`list[obj]`): The fields supported by this index. The last field entry is always for
the field path &#39;__name__&#39;. If, on creation, &#39;__name__&#39; was not
specified as the last field, it will be added automatically with the
same direction as that of the last field defined. If the final field
in a composite index is not directional, the &#39;__name__&#39; will be
ordered &#39;&#34;ASCENDING&#34;&#39; (unless explicitly specified otherwise). When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.fields.new](#fn-fieldsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.firestore_index.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_index`
Terraform resource.

Unlike [google.firestore_index.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api_scope` (`string`): The API scope at which a query is run. Default value: &#34;ANY_API&#34; Possible values: [&#34;ANY_API&#34;, &#34;DATASTORE_MODE_API&#34;] When `null`, the `api_scope` field will be omitted from the resulting object.
  - `collection` (`string`): The collection being indexed.
  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `query_scope` (`string`): The scope at which a query is run. Default value: &#34;COLLECTION&#34; Possible values: [&#34;COLLECTION&#34;, &#34;COLLECTION_GROUP&#34;, &#34;COLLECTION_RECURSIVE&#34;] When `null`, the `query_scope` field will be omitted from the resulting object.
  - `fields` (`list[obj]`): The fields supported by this index. The last field entry is always for
the field path &#39;__name__&#39;. If, on creation, &#39;__name__&#39; was not
specified as the last field, it will be added automatically with the
same direction as that of the last field defined. If the final field
in a composite index is not directional, the &#39;__name__&#39; will be
ordered &#39;&#34;ASCENDING&#34;&#39; (unless explicitly specified otherwise). When `null`, the `fields` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.fields.new](#fn-fieldsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_index.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_index` resource into the root Terraform configuration.


### fn withApiScope

```ts
withApiScope()
```

`google.string.withApiScope` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_scope field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_scope` field.


### fn withCollection

```ts
withCollection()
```

`google.string.withCollection` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the collection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `collection` field.


### fn withDatabase

```ts
withDatabase()
```

`google.string.withDatabase` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database` field.


### fn withFields

```ts
withFields()
```

`google.list[obj].withFields` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fields field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFieldsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fields` field.


### fn withFieldsMixin

```ts
withFieldsMixin()
```

`google.list[obj].withFieldsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fields field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFields](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fields` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withQueryScope

```ts
withQueryScope()
```

`google.string.withQueryScope` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the query_scope field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `query_scope` field.


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


## obj fields



### fn fields.new

```ts
new()
```


`google.firestore_index.fields.new` constructs a new object with attributes and blocks configured for the `fields`
Terraform sub block.



**Args**:
  - `array_config` (`string`): Indicates that this field supports operations on arrayValues. Only one of &#39;order&#39; and &#39;arrayConfig&#39; can
be specified. Possible values: [&#34;CONTAINS&#34;] When `null`, the `array_config` field will be omitted from the resulting object.
  - `field_path` (`string`): Name of the field. When `null`, the `field_path` field will be omitted from the resulting object.
  - `order` (`string`): Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=.
Only one of &#39;order&#39; and &#39;arrayConfig&#39; can be specified. Possible values: [&#34;ASCENDING&#34;, &#34;DESCENDING&#34;] When `null`, the `order` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fields` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.firestore_index.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

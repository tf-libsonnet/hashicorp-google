---
permalink: /pubsub_schema/
---

# pubsub_schema

`pubsub_schema` represents the `google_pubsub_schema` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDefinition()`](#fn-withdefinition)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.pubsub_schema.new` injects a new `google_pubsub_schema` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.pubsub_schema.new('some_id')

You can get the reference to the `id` field of the created `google.pubsub_schema` using the reference:

    $._ref.google_pubsub_schema.some_id.get('id')

This is the same as directly entering `"${ google_pubsub_schema.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `definition` (`string`): The definition of the schema.
This should contain a string representing the full definition of the schema
that is a valid schema definition of the type specified in type. When `null`, the `definition` field will be omitted from the resulting object.
  - `name` (`string`): The ID to use for the schema, which will become the final component of the schema&#39;s resource name.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the schema definition Default value: &#34;TYPE_UNSPECIFIED&#34; Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;PROTOCOL_BUFFER&#34;, &#34;AVRO&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_schema.timeouts.new](#fn-pubsubschematimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.pubsub_schema.newAttrs` constructs a new object with attributes and blocks configured for the `pubsub_schema`
Terraform resource.

Unlike [google.pubsub_schema.new](#fn-pubsubschemanew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `definition` (`string`): The definition of the schema.
This should contain a string representing the full definition of the schema
that is a valid schema definition of the type specified in type. When `null`, the `definition` field will be omitted from the resulting object.
  - `name` (`string`): The ID to use for the schema, which will become the final component of the schema&#39;s resource name.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the schema definition Default value: &#34;TYPE_UNSPECIFIED&#34; Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;PROTOCOL_BUFFER&#34;, &#34;AVRO&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.pubsub_schema.timeouts.new](#fn-pubsubschematimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `pubsub_schema` resource into the root Terraform configuration.


### fn withDefinition

```ts
withDefinition()
```

`google.string.withDefinition` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the definition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `definition` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.pubsub_schema.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

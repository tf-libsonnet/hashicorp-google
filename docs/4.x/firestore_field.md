---
permalink: /firestore_field/
---

# firestore_field

`firestore_field` represents the `google_firestore_field` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCollection()`](#fn-withcollection)
* [`fn withDatabase()`](#fn-withdatabase)
* [`fn withField()`](#fn-withfield)
* [`fn withIndexConfig()`](#fn-withindexconfig)
* [`fn withIndexConfigMixin()`](#fn-withindexconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withTtlConfig()`](#fn-withttlconfig)
* [`fn withTtlConfigMixin()`](#fn-withttlconfigmixin)
* [`obj index_config`](#obj-index_config)
  * [`fn new()`](#fn-index_confignew)
  * [`obj index_config.indexes`](#obj-index_configindexes)
    * [`fn new()`](#fn-index_configindexesnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj ttl_config`](#obj-ttl_config)
  * [`fn new()`](#fn-ttl_confignew)

## Fields

### fn new

```ts
new()
```


`google.firestore_field.new` injects a new `google_firestore_field` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.firestore_field.new('some_id')

You can get the reference to the `id` field of the created `google.firestore_field` using the reference:

    $._ref.google_firestore_field.some_id.get('id')

This is the same as directly entering `"${ google_firestore_field.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `collection` (`string`): The id of the collection group to configure.
  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.
  - `field` (`string`): The id of the field to configure.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `index_config` (`list[obj]`): The single field index configuration for this field.
Creating an index configuration for this field will override any inherited configuration with the
indexes specified. Configuring the index configuration with an empty block disables all indexes on
the field. When `null`, the `index_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.index_config.new](#fn-index_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.timeouts.new](#fn-timeoutsnew) constructor.
  - `ttl_config` (`list[obj]`): The TTL configuration for this Field. If set to an empty block (i.e. &#39;ttl_config {}&#39;), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource). When `null`, the `ttl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.ttl_config.new](#fn-ttl_confignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.firestore_field.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_field`
Terraform resource.

Unlike [google.firestore_field.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `collection` (`string`): The id of the collection group to configure.
  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.
  - `field` (`string`): The id of the field to configure.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `index_config` (`list[obj]`): The single field index configuration for this field.
Creating an index configuration for this field will override any inherited configuration with the
indexes specified. Configuring the index configuration with an empty block disables all indexes on
the field. When `null`, the `index_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.index_config.new](#fn-index_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.timeouts.new](#fn-timeoutsnew) constructor.
  - `ttl_config` (`list[obj]`): The TTL configuration for this Field. If set to an empty block (i.e. &#39;ttl_config {}&#39;), a TTL policy is configured based on the field. If unset, a TTL policy is not configured (or will be disabled upon updating the resource). When `null`, the `ttl_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.ttl_config.new](#fn-ttl_confignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_field` resource into the root Terraform configuration.


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


### fn withField

```ts
withField()
```

`google.string.withField` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the field field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `field` field.


### fn withIndexConfig

```ts
withIndexConfig()
```

`google.list[obj].withIndexConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the index_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withIndexConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `index_config` field.


### fn withIndexConfigMixin

```ts
withIndexConfigMixin()
```

`google.list[obj].withIndexConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the index_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withIndexConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `index_config` field.


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


### fn withTtlConfig

```ts
withTtlConfig()
```

`google.list[obj].withTtlConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ttl_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTtlConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ttl_config` field.


### fn withTtlConfigMixin

```ts
withTtlConfigMixin()
```

`google.list[obj].withTtlConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ttl_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTtlConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ttl_config` field.


## obj index_config



### fn index_config.new

```ts
new()
```


`google.firestore_field.index_config.new` constructs a new object with attributes and blocks configured for the `index_config`
Terraform sub block.



**Args**:
  - `indexes` (`list[obj]`): The indexes to configure on the field. Order or array contains must be specified. When `null`, the `indexes` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_field.index_config.indexes.new](#fn-index_configindexesnew) constructor.

**Returns**:
  - An attribute object that represents the `index_config` sub block.


## obj index_config.indexes



### fn index_config.indexes.new

```ts
new()
```


`google.firestore_field.index_config.indexes.new` constructs a new object with attributes and blocks configured for the `indexes`
Terraform sub block.



**Args**:
  - `array_config` (`string`): Indicates that this field supports operations on arrayValues. Only one of &#39;order&#39; and &#39;arrayConfig&#39; can
be specified. Possible values: [&#34;CONTAINS&#34;] When `null`, the `array_config` field will be omitted from the resulting object.
  - `order` (`string`): Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=, !=.
Only one of &#39;order&#39; and &#39;arrayConfig&#39; can be specified. Possible values: [&#34;ASCENDING&#34;, &#34;DESCENDING&#34;] When `null`, the `order` field will be omitted from the resulting object.
  - `query_scope` (`string`): The scope at which a query is run. Collection scoped queries require you specify
the collection at query time. Collection group scope allows queries across all
collections with the same id. Default value: &#34;COLLECTION&#34; Possible values: [&#34;COLLECTION&#34;, &#34;COLLECTION_GROUP&#34;] When `null`, the `query_scope` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `indexes` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.firestore_field.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj ttl_config



### fn ttl_config.new

```ts
new()
```


`google.firestore_field.ttl_config.new` constructs a new object with attributes and blocks configured for the `ttl_config`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `ttl_config` sub block.

---
permalink: /bigtable_gc_policy/
---

# bigtable_gc_policy

`bigtable_gc_policy` represents the `google_bigtable_gc_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withColumnFamily()`](#fn-withcolumnfamily)
* [`fn withDeletionPolicy()`](#fn-withdeletionpolicy)
* [`fn withGcRules()`](#fn-withgcrules)
* [`fn withInstanceName()`](#fn-withinstancename)
* [`fn withMaxAge()`](#fn-withmaxage)
* [`fn withMaxAgeMixin()`](#fn-withmaxagemixin)
* [`fn withMaxVersion()`](#fn-withmaxversion)
* [`fn withMaxVersionMixin()`](#fn-withmaxversionmixin)
* [`fn withMode()`](#fn-withmode)
* [`fn withProject()`](#fn-withproject)
* [`fn withTable()`](#fn-withtable)
* [`obj max_age`](#obj-max_age)
  * [`fn new()`](#fn-max_agenew)
* [`obj max_version`](#obj-max_version)
  * [`fn new()`](#fn-max_versionnew)

## Fields

### fn new

```ts
new()
```


`google.bigtable_gc_policy.new` injects a new `google_bigtable_gc_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigtable_gc_policy.new('some_id')

You can get the reference to the `id` field of the created `google.bigtable_gc_policy` using the reference:

    $._ref.google_bigtable_gc_policy.some_id.get('id')

This is the same as directly entering `"${ google_bigtable_gc_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `column_family` (`string`): The name of the column family.
  - `deletion_policy` (`string`): The deletion policy for the GC policy. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted
				in a replicated instance. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `gc_rules` (`string`): Serialized JSON string for garbage collection policy. Conflicts with &#34;mode&#34;, &#34;max_age&#34; and &#34;max_version&#34;. When `null`, the `gc_rules` field will be omitted from the resulting object.
  - `instance_name` (`string`): The name of the Bigtable instance.
  - `mode` (`string`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. If multiple policies are set, you should choose between UNION OR INTERSECTION. When `null`, the `mode` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `table` (`string`): The name of the table.
  - `max_age` (`list[obj]`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all cells older than the given age. When `null`, the `max_age` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_age.new](#fn-bigtablegcpolicymaxagenew) constructor.
  - `max_version` (`list[obj]`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all versions of a cell except for the most recent. When `null`, the `max_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_version.new](#fn-bigtablegcpolicymaxversionnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigtable_gc_policy.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_gc_policy`
Terraform resource.

Unlike [google.bigtable_gc_policy.new](#fn-bigtablegcpolicynew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `column_family` (`string`): The name of the column family.
  - `deletion_policy` (`string`): The deletion policy for the GC policy. Setting ABANDON allows the resource
				to be abandoned rather than deleted. This is useful for GC policy as it cannot be deleted
				in a replicated instance. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.
  - `gc_rules` (`string`): Serialized JSON string for garbage collection policy. Conflicts with &#34;mode&#34;, &#34;max_age&#34; and &#34;max_version&#34;. When `null`, the `gc_rules` field will be omitted from the resulting object.
  - `instance_name` (`string`): The name of the Bigtable instance.
  - `mode` (`string`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. If multiple policies are set, you should choose between UNION OR INTERSECTION. When `null`, the `mode` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `table` (`string`): The name of the table.
  - `max_age` (`list[obj]`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all cells older than the given age. When `null`, the `max_age` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_age.new](#fn-bigtablegcpolicymaxagenew) constructor.
  - `max_version` (`list[obj]`): NOTE: &#39;gc_rules&#39; is more flexible, and should be preferred over this field for new resources. This field may be deprecated in the future. GC policy that applies to all versions of a cell except for the most recent. When `null`, the `max_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_gc_policy.max_version.new](#fn-bigtablegcpolicymaxversionnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_gc_policy` resource into the root Terraform configuration.


### fn withColumnFamily

```ts
withColumnFamily()
```

`google.string.withColumnFamily` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the column_family field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `column_family` field.


### fn withDeletionPolicy

```ts
withDeletionPolicy()
```

`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deletion_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deletion_policy` field.


### fn withGcRules

```ts
withGcRules()
```

`google.string.withGcRules` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the gc_rules field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `gc_rules` field.


### fn withInstanceName

```ts
withInstanceName()
```

`google.string.withInstanceName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_name` field.


### fn withMaxAge

```ts
withMaxAge()
```

`google.list[obj].withMaxAge` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_age field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaxAgeMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_age` field.


### fn withMaxAgeMixin

```ts
withMaxAgeMixin()
```

`google.list[obj].withMaxAgeMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_age field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaxAge](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_age` field.


### fn withMaxVersion

```ts
withMaxVersion()
```

`google.list[obj].withMaxVersion` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_version field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaxVersionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_version` field.


### fn withMaxVersionMixin

```ts
withMaxVersionMixin()
```

`google.list[obj].withMaxVersionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_version field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaxVersion](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_version` field.


### fn withMode

```ts
withMode()
```

`google.string.withMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `mode` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTable

```ts
withTable()
```

`google.string.withTable` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the table field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `table` field.


## obj max_age



### fn max_age.new

```ts
new()
```


`google.bigtable_gc_policy.max_age.new` constructs a new object with attributes and blocks configured for the `max_age`
Terraform sub block.



**Args**:
  - `days` (`number`): Number of days before applying GC policy. When `null`, the `days` field will be omitted from the resulting object.
  - `duration` (`string`): Duration before applying GC policy When `null`, the `duration` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `max_age` sub block.


## obj max_version



### fn max_version.new

```ts
new()
```


`google.bigtable_gc_policy.max_version.new` constructs a new object with attributes and blocks configured for the `max_version`
Terraform sub block.



**Args**:
  - `number` (`number`): Number of version before applying the GC policy.

**Returns**:
  - An attribute object that represents the `max_version` sub block.

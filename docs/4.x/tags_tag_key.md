---
permalink: /tags_tag_key/
---

# tags_tag_key

`tags_tag_key` represents the `google_tags_tag_key` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withParent()`](#fn-withparent)
* [`fn withPurpose()`](#fn-withpurpose)
* [`fn withPurposeData()`](#fn-withpurposedata)
* [`fn withShortName()`](#fn-withshortname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.tags_tag_key.new` injects a new `google_tags_tag_key` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.tags_tag_key.new('some_id')

You can get the reference to the `id` field of the created `google.tags_tag_key` using the reference:

    $._ref.google_tags_tag_key.some_id.get('id')

This is the same as directly entering `"${ google_tags_tag_key.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): User-assigned description of the TagKey. Must not exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `parent` (`string`): Input only. The resource name of the new TagKey&#39;s parent. Must be of the form organizations/{org_id}.
  - `purpose` (`string`): Optional. A purpose cannot be changed once set.

A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. Possible values: [&#34;GCE_FIREWALL&#34;] When `null`, the `purpose` field will be omitted from the resulting object.
  - `purpose_data` (`obj`): Optional. Purpose data cannot be changed once set.

Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: &#39;network = &#34;&lt;project-name&gt;/&lt;vpc-name&gt;&#34;&#39;. When `null`, the `purpose_data` field will be omitted from the resulting object.
  - `short_name` (`string`): Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.

The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tags_tag_key.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.tags_tag_key.newAttrs` constructs a new object with attributes and blocks configured for the `tags_tag_key`
Terraform resource.

Unlike [google.tags_tag_key.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): User-assigned description of the TagKey. Must not exceed 256 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `parent` (`string`): Input only. The resource name of the new TagKey&#39;s parent. Must be of the form organizations/{org_id}.
  - `purpose` (`string`): Optional. A purpose cannot be changed once set.

A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. Possible values: [&#34;GCE_FIREWALL&#34;] When `null`, the `purpose` field will be omitted from the resulting object.
  - `purpose_data` (`obj`): Optional. Purpose data cannot be changed once set.

Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: &#39;network = &#34;&lt;project-name&gt;/&lt;vpc-name&gt;&#34;&#39;. When `null`, the `purpose_data` field will be omitted from the resulting object.
  - `short_name` (`string`): Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.

The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.tags_tag_key.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `tags_tag_key` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withPurpose

```ts
withPurpose()
```

`google.string.withPurpose` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the purpose field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `purpose` field.


### fn withPurposeData

```ts
withPurposeData()
```

`google.obj.withPurposeData` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the purpose_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `purpose_data` field.


### fn withShortName

```ts
withShortName()
```

`google.string.withShortName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the short_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `short_name` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.tags_tag_key.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

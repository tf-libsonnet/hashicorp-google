---
permalink: /vertex_ai_dataset/
---

# vertex_ai_dataset

`vertex_ai_dataset` represents the `google_vertex_ai_dataset` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEncryptionSpec()`](#fn-withencryptionspec)
* [`fn withEncryptionSpecMixin()`](#fn-withencryptionspecmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMetadataSchemaUri()`](#fn-withmetadataschemauri)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj encryption_spec`](#obj-encryption_spec)
  * [`fn new()`](#fn-encryption_specnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vertex_ai_dataset.new` injects a new `google_vertex_ai_dataset` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vertex_ai_dataset.new('some_id')

You can get the reference to the `id` field of the created `google.vertex_ai_dataset` using the reference:

    $._ref.google_vertex_ai_dataset.some_id.get('id')

This is the same as directly entering `"${ google_vertex_ai_dataset.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Workflow. When `null`, the `labels` field will be omitted from the resulting object.
  - `metadata_schema_uri` (`string`): Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the dataset. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_dataset.encryption_spec.new](#fn-vertexaidatasetencryptionspecnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_dataset.timeouts.new](#fn-vertexaidatasettimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vertex_ai_dataset.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_dataset`
Terraform resource.

Unlike [google.vertex_ai_dataset.new](#fn-vertexaidatasetnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters.
  - `labels` (`obj`): A set of key/value label pairs to assign to this Workflow. When `null`, the `labels` field will be omitted from the resulting object.
  - `metadata_schema_uri` (`string`): Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region of the dataset. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.
  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_dataset.encryption_spec.new](#fn-vertexaidatasetencryptionspecnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_dataset.timeouts.new](#fn-vertexaidatasettimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_dataset` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.vertex_ai_dataset.withDisplayName` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `display_name` field.


### fn withEncryptionSpec

```ts
withEncryptionSpec()
```

`google.vertex_ai_dataset.withEncryptionSpec` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the encryption_spec field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `encryption_spec` field.


### fn withEncryptionSpecMixin

```ts
withEncryptionSpecMixin()
```

`google.vertex_ai_dataset.withEncryptionSpecMixin` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the encryption_spec field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.vertex_ai_dataset.withEncryptionSpec](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `encryption_spec` field.


### fn withLabels

```ts
withLabels()
```

`google.vertex_ai_dataset.withLabels` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withMetadataSchemaUri

```ts
withMetadataSchemaUri()
```

`google.vertex_ai_dataset.withMetadataSchemaUri` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the metadata_schema_uri field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `metadata_schema_uri` field.


### fn withProject

```ts
withProject()
```

`google.vertex_ai_dataset.withProject` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.vertex_ai_dataset.withRegion` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `region` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.vertex_ai_dataset.withTimeouts` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.vertex_ai_dataset.withTimeoutsMixin` constructs a mixin object that can be merged into the `vertex_ai_dataset`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.vertex_ai_dataset.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj encryption_spec



### fn encryption_spec.new

```ts
new()
```


`google.vertex_ai_dataset.encryption_spec.new` constructs a new object with attributes and blocks configured for the `encryption_spec`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_spec` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vertex_ai_dataset.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

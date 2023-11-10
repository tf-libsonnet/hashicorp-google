---
permalink: /alloydb_backup/
---

# alloydb_backup

`alloydb_backup` represents the `google_alloydb_backup` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withBackupId()`](#fn-withbackupid)
* [`fn withClusterName()`](#fn-withclustername)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEncryptionConfig()`](#fn-withencryptionconfig)
* [`fn withEncryptionConfigMixin()`](#fn-withencryptionconfigmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj encryption_config`](#obj-encryption_config)
  * [`fn new()`](#fn-encryption_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.alloydb_backup.new` injects a new `google_alloydb_backup` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.alloydb_backup.new('some_id')

You can get the reference to the `id` field of the created `google.alloydb_backup` using the reference:

    $._ref.google_alloydb_backup.some_id.get('id')

This is the same as directly entering `"${ google_alloydb_backup.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `backup_id` (`string`): The ID of the alloydb backup.
  - `cluster_name` (`string`): The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  - `description` (`string`): User-provided description of the backup. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User-settable and human-readable display name for the Backup. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the alloydb backup. An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the alloydb backup should reside.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The backup type, which suggests the trigger for the backup. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;ON_DEMAND&#34;, &#34;AUTOMATED&#34;, &#34;CONTINUOUS&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.encryption_config.new](#fn-encryption_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.alloydb_backup.newAttrs` constructs a new object with attributes and blocks configured for the `alloydb_backup`
Terraform resource.

Unlike [google.alloydb_backup.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
Please refer to the field &#39;effective_annotations&#39; for all of the annotations present on the resource. When `null`, the `annotations` field will be omitted from the resulting object.
  - `backup_id` (`string`): The ID of the alloydb backup.
  - `cluster_name` (`string`): The full resource name of the backup source cluster (e.g., projects/{project}/locations/{location}/clusters/{clusterId}).
  - `description` (`string`): User-provided description of the backup. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): User-settable and human-readable display name for the Backup. When `null`, the `display_name` field will be omitted from the resulting object.
  - `labels` (`obj`): User-defined labels for the alloydb backup. An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location where the alloydb backup should reside.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The backup type, which suggests the trigger for the backup. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;ON_DEMAND&#34;, &#34;AUTOMATED&#34;, &#34;CONTINUOUS&#34;] When `null`, the `type` field will be omitted from the resulting object.
  - `encryption_config` (`list[obj]`): EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key). When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.encryption_config.new](#fn-encryption_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.alloydb_backup.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `alloydb_backup` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withBackupId

```ts
withBackupId()
```

`google.string.withBackupId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the backup_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `backup_id` field.


### fn withClusterName

```ts
withClusterName()
```

`google.string.withClusterName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_name` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEncryptionConfig

```ts
withEncryptionConfig()
```

`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withEncryptionConfigMixin

```ts
withEncryptionConfigMixin()
```

`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


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


## obj encryption_config



### fn encryption_config.new

```ts
new()
```


`google.alloydb_backup.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): The fully-qualified resource name of the KMS key. Each Cloud KMS key is regionalized and has the following format: projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME]. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.alloydb_backup.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

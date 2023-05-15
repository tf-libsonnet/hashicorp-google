---
permalink: /compute_snapshot/
---

# compute_snapshot

`compute_snapshot` represents the `google_compute_snapshot` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withChainName()`](#fn-withchainname)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSnapshotEncryptionKey()`](#fn-withsnapshotencryptionkey)
* [`fn withSnapshotEncryptionKeyMixin()`](#fn-withsnapshotencryptionkeymixin)
* [`fn withSourceDisk()`](#fn-withsourcedisk)
* [`fn withSourceDiskEncryptionKey()`](#fn-withsourcediskencryptionkey)
* [`fn withSourceDiskEncryptionKeyMixin()`](#fn-withsourcediskencryptionkeymixin)
* [`fn withStorageLocations()`](#fn-withstoragelocations)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj snapshot_encryption_key`](#obj-snapshot_encryption_key)
  * [`fn new()`](#fn-snapshot_encryption_keynew)
* [`obj source_disk_encryption_key`](#obj-source_disk_encryption_key)
  * [`fn new()`](#fn-source_disk_encryption_keynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_snapshot.new` injects a new `google_compute_snapshot` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_snapshot.new('some_id')

You can get the reference to the `id` field of the created `google.compute_snapshot` using the reference:

    $._ref.google_compute_snapshot.some_id.get('id')

This is the same as directly entering `"${ google_compute_snapshot.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `chain_name` (`string`): Creates the new snapshot in the snapshot chain labeled with the
specified name. The chain name must be 1-63 characters long and
comply with RFC1035. This is an uncommon option only for advanced
service owners who needs to create separate snapshot chains, for
example, for chargeback tracking.  When you describe your snapshot
resource, this field is visible only if it has a non-empty value. When `null`, the `chain_name` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this Snapshot. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `source_disk` (`string`): A reference to the disk used to create this snapshot.
  - `storage_locations` (`list`): Cloud Storage bucket storage location of the snapshot (regional or multi-regional). When `null`, the `storage_locations` field will be omitted from the resulting object.
  - `zone` (`string`): A reference to the zone where the disk is hosted. When `null`, the `zone` field will be omitted from the resulting object.
  - `snapshot_encryption_key` (`list[obj]`): Encrypts the snapshot using a customer-supplied encryption key.

After you encrypt a snapshot using a customer-supplied key, you must
provide the same key if you use the snapshot later. For example, you
must provide the encryption key when you create a disk from the
encrypted snapshot in a future request.

Customer-supplied encryption keys do not protect access to metadata of
the snapshot.

If you do not provide an encryption key when creating the snapshot,
then the snapshot will be encrypted using an automatically generated
key and you do not need to provide a key to use the snapshot later. When `null`, the `snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.snapshot_encryption_key.new](#fn-snapshot_encryption_keynew) constructor.
  - `source_disk_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. When `null`, the `source_disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.source_disk_encryption_key.new](#fn-source_disk_encryption_keynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_snapshot.newAttrs` constructs a new object with attributes and blocks configured for the `compute_snapshot`
Terraform resource.

Unlike [google.compute_snapshot.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `chain_name` (`string`): Creates the new snapshot in the snapshot chain labeled with the
specified name. The chain name must be 1-63 characters long and
comply with RFC1035. This is an uncommon option only for advanced
service owners who needs to create separate snapshot chains, for
example, for chargeback tracking.  When you describe your snapshot
resource, this field is visible only if it has a non-empty value. When `null`, the `chain_name` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this Snapshot. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `source_disk` (`string`): A reference to the disk used to create this snapshot.
  - `storage_locations` (`list`): Cloud Storage bucket storage location of the snapshot (regional or multi-regional). When `null`, the `storage_locations` field will be omitted from the resulting object.
  - `zone` (`string`): A reference to the zone where the disk is hosted. When `null`, the `zone` field will be omitted from the resulting object.
  - `snapshot_encryption_key` (`list[obj]`): Encrypts the snapshot using a customer-supplied encryption key.

After you encrypt a snapshot using a customer-supplied key, you must
provide the same key if you use the snapshot later. For example, you
must provide the encryption key when you create a disk from the
encrypted snapshot in a future request.

Customer-supplied encryption keys do not protect access to metadata of
the snapshot.

If you do not provide an encryption key when creating the snapshot,
then the snapshot will be encrypted using an automatically generated
key and you do not need to provide a key to use the snapshot later. When `null`, the `snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.snapshot_encryption_key.new](#fn-snapshot_encryption_keynew) constructor.
  - `source_disk_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. When `null`, the `source_disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.source_disk_encryption_key.new](#fn-source_disk_encryption_keynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_snapshot.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_snapshot` resource into the root Terraform configuration.


### fn withChainName

```ts
withChainName()
```

`google.string.withChainName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the chain_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `chain_name` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withSnapshotEncryptionKey

```ts
withSnapshotEncryptionKey()
```

`google.list[obj].withSnapshotEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the snapshot_encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSnapshotEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `snapshot_encryption_key` field.


### fn withSnapshotEncryptionKeyMixin

```ts
withSnapshotEncryptionKeyMixin()
```

`google.list[obj].withSnapshotEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the snapshot_encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSnapshotEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `snapshot_encryption_key` field.


### fn withSourceDisk

```ts
withSourceDisk()
```

`google.string.withSourceDisk` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_disk` field.


### fn withSourceDiskEncryptionKey

```ts
withSourceDiskEncryptionKey()
```

`google.list[obj].withSourceDiskEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_disk_encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceDiskEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_disk_encryption_key` field.


### fn withSourceDiskEncryptionKeyMixin

```ts
withSourceDiskEncryptionKeyMixin()
```

`google.list[obj].withSourceDiskEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_disk_encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceDiskEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_disk_encryption_key` field.


### fn withStorageLocations

```ts
withStorageLocations()
```

`google.list.withStorageLocations` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the storage_locations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `storage_locations` field.


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


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj snapshot_encryption_key



### fn snapshot_encryption_key.new

```ts
new()
```


`google.compute_snapshot.snapshot_encryption_key.new` constructs a new object with attributes and blocks configured for the `snapshot_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The name of the encryption key that is stored in Google Cloud KMS. When `null`, the `kms_key_self_link` field will be omitted from the resulting object.
  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.
  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `snapshot_encryption_key` sub block.


## obj source_disk_encryption_key



### fn source_disk_encryption_key.new

```ts
new()
```


`google.compute_snapshot.source_disk_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_disk_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.
  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source_disk_encryption_key` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_snapshot.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

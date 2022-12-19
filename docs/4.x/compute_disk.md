---
permalink: /compute_disk/
---

# compute_disk

`compute_disk` represents the `google_compute_disk` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDiskEncryptionKey()`](#fn-withdiskencryptionkey)
* [`fn withDiskEncryptionKeyMixin()`](#fn-withdiskencryptionkeymixin)
* [`fn withImage()`](#fn-withimage)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withPhysicalBlockSizeBytes()`](#fn-withphysicalblocksizebytes)
* [`fn withProject()`](#fn-withproject)
* [`fn withProvisionedIops()`](#fn-withprovisionediops)
* [`fn withSize()`](#fn-withsize)
* [`fn withSnapshot()`](#fn-withsnapshot)
* [`fn withSourceDisk()`](#fn-withsourcedisk)
* [`fn withSourceImageEncryptionKey()`](#fn-withsourceimageencryptionkey)
* [`fn withSourceImageEncryptionKeyMixin()`](#fn-withsourceimageencryptionkeymixin)
* [`fn withSourceSnapshotEncryptionKey()`](#fn-withsourcesnapshotencryptionkey)
* [`fn withSourceSnapshotEncryptionKeyMixin()`](#fn-withsourcesnapshotencryptionkeymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`fn withZone()`](#fn-withzone)
* [`obj disk_encryption_key`](#obj-disk_encryption_key)
  * [`fn new()`](#fn-disk_encryption_keynew)
* [`obj source_image_encryption_key`](#obj-source_image_encryption_key)
  * [`fn new()`](#fn-source_image_encryption_keynew)
* [`obj source_snapshot_encryption_key`](#obj-source_snapshot_encryption_key)
  * [`fn new()`](#fn-source_snapshot_encryption_keynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_disk.new` injects a new `google_compute_disk` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_disk.new('some_id')

You can get the reference to the `id` field of the created `google.compute_disk` using the reference:

    $._ref.google_compute_disk.some_id.get('id')

This is the same as directly entering `"${ google_compute_disk.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `image` (`string`): The image from which to initialize this disk. This can be
one of: the image&#39;s &#39;self_link&#39;, &#39;projects/{project}/global/images/{image}&#39;,
&#39;projects/{project}/global/images/family/{family}&#39;, &#39;global/images/{image}&#39;,
&#39;global/images/family/{family}&#39;, &#39;family/{family}&#39;, &#39;{project}/{family}&#39;,
&#39;{project}/{image}&#39;, &#39;{family}&#39;, or &#39;{image}&#39;. If referred by family, the
images names must include the family name. If they don&#39;t, use the
[google_compute_image data source](/docs/providers/google/d/compute_image.html).
For instance, the image &#39;centos-6-v20180104&#39; includes its family name &#39;centos-6&#39;.
These images can be referred by family name here. When `null`, the `image` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this disk.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `physical_block_size_bytes` (`number`): Physical block size of the persistent disk, in bytes. If not present
in a request, a default value is used. Currently supported sizes
are 4096 and 16384, other sizes may be added in the future.
If an unsupported value is requested, the error message will list
the supported values for the caller&#39;s project. When `null`, the `physical_block_size_bytes` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `provisioned_iops` (`number`): Indicates how many IOPS must be provisioned for the disk. When `null`, the `provisioned_iops` field will be omitted from the resulting object.
  - `size` (`number`): Size of the persistent disk, specified in GB. You can specify this
field when creating a persistent disk using the &#39;image&#39; or
&#39;snapshot&#39; parameter, or specify it alone to create an empty
persistent disk.

If you specify this field along with &#39;image&#39; or &#39;snapshot&#39;,
the value must not be less than the size of the image
or the size of the snapshot.

~&gt;**NOTE** If you change the size, Terraform updates the disk size
if upsizing is detected but recreates the disk if downsizing is requested.
You can add &#39;lifecycle.prevent_destroy&#39; in the config to prevent destroying
and recreating. When `null`, the `size` field will be omitted from the resulting object.
  - `snapshot` (`string`): The source snapshot used to create this disk. You can provide this as
a partial or full URL to the resource. If the snapshot is in another
project than this disk, you must supply a full URL. For example, the
following are valid values:

* &#39;https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot&#39;
* &#39;projects/project/global/snapshots/snapshot&#39;
* &#39;global/snapshots/snapshot&#39;
* &#39;snapshot&#39; When `null`, the `snapshot` field will be omitted from the resulting object.
  - `source_disk` (`string`): The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
For example, the following are valid values:

* https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
* https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
* projects/{project}/zones/{zone}/disks/{disk}
* projects/{project}/regions/{region}/disks/{disk}
* zones/{zone}/disks/{disk}
* regions/{region}/disks/{disk} When `null`, the `source_disk` field will be omitted from the resulting object.
  - `type` (`string`): URL of the disk type resource describing which disk type to use to
create the disk. Provide this when creating the disk. When `null`, the `type` field will be omitted from the resulting object.
  - `zone` (`string`): A reference to the zone where the disk resides. When `null`, the `zone` field will be omitted from the resulting object.
  - `disk_encryption_key` (`list[obj]`): Encrypts the disk using a customer-supplied encryption key.

After you encrypt a disk with a customer-supplied key, you must
provide the same key if you use the disk later (e.g. to create a disk
snapshot or an image, or to attach the disk to a virtual machine).

Customer-supplied encryption keys do not protect access to metadata of
the disk.

If you do not provide an encryption key when creating the disk, then
the disk will be encrypted using an automatically generated key and
you do not need to provide a key to use the disk later. When `null`, the `disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.disk_encryption_key.new](#fn-computediskdiskencryptionkeynew) constructor.
  - `source_image_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source image. Required if
the source image is protected by a customer-supplied encryption key. When `null`, the `source_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_image_encryption_key.new](#fn-computedisksourceimageencryptionkeynew) constructor.
  - `source_snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. When `null`, the `source_snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_snapshot_encryption_key.new](#fn-computedisksourcesnapshotencryptionkeynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.timeouts.new](#fn-computedisktimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_disk.newAttrs` constructs a new object with attributes and blocks configured for the `compute_disk`
Terraform resource.

Unlike [google.compute_disk.new](#fn-computedisknew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `image` (`string`): The image from which to initialize this disk. This can be
one of: the image&#39;s &#39;self_link&#39;, &#39;projects/{project}/global/images/{image}&#39;,
&#39;projects/{project}/global/images/family/{family}&#39;, &#39;global/images/{image}&#39;,
&#39;global/images/family/{family}&#39;, &#39;family/{family}&#39;, &#39;{project}/{family}&#39;,
&#39;{project}/{image}&#39;, &#39;{family}&#39;, or &#39;{image}&#39;. If referred by family, the
images names must include the family name. If they don&#39;t, use the
[google_compute_image data source](/docs/providers/google/d/compute_image.html).
For instance, the image &#39;centos-6-v20180104&#39; includes its family name &#39;centos-6&#39;.
These images can be referred by family name here. When `null`, the `image` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this disk.  A list of key-&gt;value pairs. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `physical_block_size_bytes` (`number`): Physical block size of the persistent disk, in bytes. If not present
in a request, a default value is used. Currently supported sizes
are 4096 and 16384, other sizes may be added in the future.
If an unsupported value is requested, the error message will list
the supported values for the caller&#39;s project. When `null`, the `physical_block_size_bytes` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `provisioned_iops` (`number`): Indicates how many IOPS must be provisioned for the disk. When `null`, the `provisioned_iops` field will be omitted from the resulting object.
  - `size` (`number`): Size of the persistent disk, specified in GB. You can specify this
field when creating a persistent disk using the &#39;image&#39; or
&#39;snapshot&#39; parameter, or specify it alone to create an empty
persistent disk.

If you specify this field along with &#39;image&#39; or &#39;snapshot&#39;,
the value must not be less than the size of the image
or the size of the snapshot.

~&gt;**NOTE** If you change the size, Terraform updates the disk size
if upsizing is detected but recreates the disk if downsizing is requested.
You can add &#39;lifecycle.prevent_destroy&#39; in the config to prevent destroying
and recreating. When `null`, the `size` field will be omitted from the resulting object.
  - `snapshot` (`string`): The source snapshot used to create this disk. You can provide this as
a partial or full URL to the resource. If the snapshot is in another
project than this disk, you must supply a full URL. For example, the
following are valid values:

* &#39;https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot&#39;
* &#39;projects/project/global/snapshots/snapshot&#39;
* &#39;global/snapshots/snapshot&#39;
* &#39;snapshot&#39; When `null`, the `snapshot` field will be omitted from the resulting object.
  - `source_disk` (`string`): The source disk used to create this disk. You can provide this as a partial or full URL to the resource.
For example, the following are valid values:

* https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
* https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
* projects/{project}/zones/{zone}/disks/{disk}
* projects/{project}/regions/{region}/disks/{disk}
* zones/{zone}/disks/{disk}
* regions/{region}/disks/{disk} When `null`, the `source_disk` field will be omitted from the resulting object.
  - `type` (`string`): URL of the disk type resource describing which disk type to use to
create the disk. Provide this when creating the disk. When `null`, the `type` field will be omitted from the resulting object.
  - `zone` (`string`): A reference to the zone where the disk resides. When `null`, the `zone` field will be omitted from the resulting object.
  - `disk_encryption_key` (`list[obj]`): Encrypts the disk using a customer-supplied encryption key.

After you encrypt a disk with a customer-supplied key, you must
provide the same key if you use the disk later (e.g. to create a disk
snapshot or an image, or to attach the disk to a virtual machine).

Customer-supplied encryption keys do not protect access to metadata of
the disk.

If you do not provide an encryption key when creating the disk, then
the disk will be encrypted using an automatically generated key and
you do not need to provide a key to use the disk later. When `null`, the `disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.disk_encryption_key.new](#fn-computediskdiskencryptionkeynew) constructor.
  - `source_image_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source image. Required if
the source image is protected by a customer-supplied encryption key. When `null`, the `source_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_image_encryption_key.new](#fn-computedisksourceimageencryptionkeynew) constructor.
  - `source_snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. Required
if the source snapshot is protected by a customer-supplied encryption
key. When `null`, the `source_snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.source_snapshot_encryption_key.new](#fn-computedisksourcesnapshotencryptionkeynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk.timeouts.new](#fn-computedisktimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_disk` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDiskEncryptionKey

```ts
withDiskEncryptionKey()
```

`google.list[obj].withDiskEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the disk_encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDiskEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `disk_encryption_key` field.


### fn withDiskEncryptionKeyMixin

```ts
withDiskEncryptionKeyMixin()
```

`google.list[obj].withDiskEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the disk_encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDiskEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `disk_encryption_key` field.


### fn withImage

```ts
withImage()
```

`google.string.withImage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the image field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `image` field.


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


### fn withPhysicalBlockSizeBytes

```ts
withPhysicalBlockSizeBytes()
```

`google.number.withPhysicalBlockSizeBytes` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the physical_block_size_bytes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `physical_block_size_bytes` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withProvisionedIops

```ts
withProvisionedIops()
```

`google.number.withProvisionedIops` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the provisioned_iops field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `provisioned_iops` field.


### fn withSize

```ts
withSize()
```

`google.number.withSize` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the size field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `size` field.


### fn withSnapshot

```ts
withSnapshot()
```

`google.string.withSnapshot` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the snapshot field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `snapshot` field.


### fn withSourceDisk

```ts
withSourceDisk()
```

`google.string.withSourceDisk` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_disk` field.


### fn withSourceImageEncryptionKey

```ts
withSourceImageEncryptionKey()
```

`google.list[obj].withSourceImageEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_image_encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceImageEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_image_encryption_key` field.


### fn withSourceImageEncryptionKeyMixin

```ts
withSourceImageEncryptionKeyMixin()
```

`google.list[obj].withSourceImageEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_image_encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceImageEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_image_encryption_key` field.


### fn withSourceSnapshotEncryptionKey

```ts
withSourceSnapshotEncryptionKey()
```

`google.list[obj].withSourceSnapshotEncryptionKey` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_snapshot_encryption_key field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceSnapshotEncryptionKeyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_snapshot_encryption_key` field.


### fn withSourceSnapshotEncryptionKeyMixin

```ts
withSourceSnapshotEncryptionKeyMixin()
```

`google.list[obj].withSourceSnapshotEncryptionKeyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source_snapshot_encryption_key field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSourceSnapshotEncryptionKey](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source_snapshot_encryption_key` field.


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


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj disk_encryption_key



### fn disk_encryption_key.new

```ts
new()
```


`google.compute_disk.disk_encryption_key.new` constructs a new object with attributes and blocks configured for the `disk_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
in the cloud console. Your project&#39;s Compute Engine System service account
(&#39;service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com&#39;) must have
&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.
See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys When `null`, the `kms_key_self_link` field will be omitted from the resulting object.
  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.
  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disk_encryption_key` sub block.


## obj source_image_encryption_key



### fn source_image_encryption_key.new

```ts
new()
```


`google.compute_disk.source_image_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_image_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
in the cloud console. Your project&#39;s Compute Engine System service account
(&#39;service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com&#39;) must have
&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.
See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys When `null`, the `kms_key_self_link` field will be omitted from the resulting object.
  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.
  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source_image_encryption_key` sub block.


## obj source_snapshot_encryption_key



### fn source_snapshot_encryption_key.new

```ts
new()
```


`google.compute_disk.source_snapshot_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_snapshot_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The self link of the encryption key used to encrypt the disk. Also called KmsKeyName
in the cloud console. Your project&#39;s Compute Engine System service account
(&#39;service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com&#39;) must have
&#39;roles/cloudkms.cryptoKeyEncrypterDecrypter&#39; to use this feature.
See https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys When `null`, the `kms_key_self_link` field will be omitted from the resulting object.
  - `kms_key_service_account` (`string`): The service account used for the encryption request for the given KMS key.
If absent, the Compute Engine Service Agent service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.
  - `raw_key` (`string`): Specifies a 256-bit customer-supplied encryption key, encoded in
RFC 4648 base64 to either encrypt or decrypt this resource. When `null`, the `raw_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source_snapshot_encryption_key` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_disk.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

---
permalink: /compute_image/
---

# compute_image

`compute_image` represents the `google_compute_image` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDiskSizeGb()`](#fn-withdisksizegb)
* [`fn withFamily()`](#fn-withfamily)
* [`fn withGuestOsFeatures()`](#fn-withguestosfeatures)
* [`fn withGuestOsFeaturesMixin()`](#fn-withguestosfeaturesmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLicenses()`](#fn-withlicenses)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRawDisk()`](#fn-withrawdisk)
* [`fn withRawDiskMixin()`](#fn-withrawdiskmixin)
* [`fn withSourceDisk()`](#fn-withsourcedisk)
* [`fn withSourceImage()`](#fn-withsourceimage)
* [`fn withSourceSnapshot()`](#fn-withsourcesnapshot)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj guest_os_features`](#obj-guest_os_features)
  * [`fn new()`](#fn-guest_os_featuresnew)
* [`obj raw_disk`](#obj-raw_disk)
  * [`fn new()`](#fn-raw_disknew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_image.new` injects a new `google_compute_image` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_image.new('some_id')

You can get the reference to the `id` field of the created `google.compute_image` using the reference:

    $._ref.google_compute_image.some_id.get('id')

This is the same as directly entering `"${ google_compute_image.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): Size of the image when restored onto a persistent disk (in GB). When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `family` (`string`): The name of the image family to which this image belongs. You can
create disks by specifying an image family instead of a specific
image name. The image family always returns its latest image that is
not deprecated. The name of the image family must comply with
RFC1035. When `null`, the `family` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this Image. When `null`, the `labels` field will be omitted from the resulting object.
  - `licenses` (`list`): Any applicable license URI. When `null`, the `licenses` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_disk` (`string`): The source disk to create this image based on.
You must provide either this property or the
rawDisk.source property but not both to create an image. When `null`, the `source_disk` field will be omitted from the resulting object.
  - `source_image` (`string`): URL of the source image used to create this image. In order to create an image, you must provide the full or partial
URL of one of the following:

* The selfLink URL
* This property
* The rawDisk.source URL
* The sourceDisk URL When `null`, the `source_image` field will be omitted from the resulting object.
  - `source_snapshot` (`string`): URL of the source snapshot used to create this image.

In order to create an image, you must provide the full or partial URL of one of the following:

* The selfLink URL
* This property
* The sourceImage URL
* The rawDisk.source URL
* The sourceDisk URL When `null`, the `source_snapshot` field will be omitted from the resulting object.
  - `guest_os_features` (`list[obj]`): A list of features to enable on the guest operating system.
Applicable only for bootable images. When `null`, the `guest_os_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.guest_os_features.new](#fn-computeimageguestosfeaturesnew) constructor.
  - `raw_disk` (`list[obj]`): The parameters of the raw disk image. When `null`, the `raw_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.raw_disk.new](#fn-computeimagerawdisknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.timeouts.new](#fn-computeimagetimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_image.newAttrs` constructs a new object with attributes and blocks configured for the `compute_image`
Terraform resource.

Unlike [google.compute_image.new](#fn-computeimagenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): Size of the image when restored onto a persistent disk (in GB). When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `family` (`string`): The name of the image family to which this image belongs. You can
create disks by specifying an image family instead of a specific
image name. The image family always returns its latest image that is
not deprecated. The name of the image family must comply with
RFC1035. When `null`, the `family` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this Image. When `null`, the `labels` field will be omitted from the resulting object.
  - `licenses` (`list`): Any applicable license URI. When `null`, the `licenses` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and
match the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `source_disk` (`string`): The source disk to create this image based on.
You must provide either this property or the
rawDisk.source property but not both to create an image. When `null`, the `source_disk` field will be omitted from the resulting object.
  - `source_image` (`string`): URL of the source image used to create this image. In order to create an image, you must provide the full or partial
URL of one of the following:

* The selfLink URL
* This property
* The rawDisk.source URL
* The sourceDisk URL When `null`, the `source_image` field will be omitted from the resulting object.
  - `source_snapshot` (`string`): URL of the source snapshot used to create this image.

In order to create an image, you must provide the full or partial URL of one of the following:

* The selfLink URL
* This property
* The sourceImage URL
* The rawDisk.source URL
* The sourceDisk URL When `null`, the `source_snapshot` field will be omitted from the resulting object.
  - `guest_os_features` (`list[obj]`): A list of features to enable on the guest operating system.
Applicable only for bootable images. When `null`, the `guest_os_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.guest_os_features.new](#fn-computeimageguestosfeaturesnew) constructor.
  - `raw_disk` (`list[obj]`): The parameters of the raw disk image. When `null`, the `raw_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.raw_disk.new](#fn-computeimagerawdisknew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_image.timeouts.new](#fn-computeimagetimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_image` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.compute_image.withDescription` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withDiskSizeGb

```ts
withDiskSizeGb()
```

`google.compute_image.withDiskSizeGb` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the disk_size_gb field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `disk_size_gb` field.


### fn withFamily

```ts
withFamily()
```

`google.compute_image.withFamily` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the family field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `family` field.


### fn withGuestOsFeatures

```ts
withGuestOsFeatures()
```

`google.compute_image.withGuestOsFeatures` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the guest_os_features field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `guest_os_features` field.


### fn withGuestOsFeaturesMixin

```ts
withGuestOsFeaturesMixin()
```

`google.compute_image.withGuestOsFeaturesMixin` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the guest_os_features field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_image.withGuestOsFeatures](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `guest_os_features` field.


### fn withLabels

```ts
withLabels()
```

`google.compute_image.withLabels` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `labels` field.


### fn withLicenses

```ts
withLicenses()
```

`google.compute_image.withLicenses` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the licenses field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `licenses` field.


### fn withName

```ts
withName()
```

`google.compute_image.withName` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.compute_image.withProject` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRawDisk

```ts
withRawDisk()
```

`google.compute_image.withRawDisk` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the raw_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `raw_disk` field.


### fn withRawDiskMixin

```ts
withRawDiskMixin()
```

`google.compute_image.withRawDiskMixin` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the raw_disk field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_image.withRawDisk](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `raw_disk` field.


### fn withSourceDisk

```ts
withSourceDisk()
```

`google.compute_image.withSourceDisk` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the source_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `source_disk` field.


### fn withSourceImage

```ts
withSourceImage()
```

`google.compute_image.withSourceImage` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the source_image field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `source_image` field.


### fn withSourceSnapshot

```ts
withSourceSnapshot()
```

`google.compute_image.withSourceSnapshot` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the source_snapshot field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `source_snapshot` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_image.withTimeouts` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_image.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_image`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_image.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj guest_os_features



### fn guest_os_features.new

```ts
new()
```


`google.compute_image.guest_os_features.new` constructs a new object with attributes and blocks configured for the `guest_os_features`
Terraform sub block.



**Args**:
  - `type` (`string`): The type of supported feature. Read [Enabling guest operating system features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features) to see a list of available options. Possible values: [&#34;MULTI_IP_SUBNET&#34;, &#34;SECURE_BOOT&#34;, &#34;SEV_CAPABLE&#34;, &#34;UEFI_COMPATIBLE&#34;, &#34;VIRTIO_SCSI_MULTIQUEUE&#34;, &#34;WINDOWS&#34;, &#34;GVNIC&#34;]

**Returns**:
  - An attribute object that represents the `guest_os_features` sub block.


## obj raw_disk



### fn raw_disk.new

```ts
new()
```


`google.compute_image.raw_disk.new` constructs a new object with attributes and blocks configured for the `raw_disk`
Terraform sub block.



**Args**:
  - `container_type` (`string`): The format used to encode and transmit the block device, which
should be TAR. This is just a container and transmission format
and not a runtime format. Provided by the client when the disk
image is created. Default value: &#34;TAR&#34; Possible values: [&#34;TAR&#34;] When `null`, the `container_type` field will be omitted from the resulting object.
  - `sha1` (`string`): An optional SHA1 checksum of the disk image before unpackaging.
This is provided by the client when the disk image is created. When `null`, the `sha1` field will be omitted from the resulting object.
  - `source` (`string`): The full Google Cloud Storage URL where disk storage is stored
You must provide either this property or the sourceDisk property
but not both.

**Returns**:
  - An attribute object that represents the `raw_disk` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_image.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

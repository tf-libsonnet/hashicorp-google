---
permalink: /filestore_instance/
---

# filestore_instance

`filestore_instance` represents the `google_filestore_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFileShares()`](#fn-withfileshares)
* [`fn withFileSharesMixin()`](#fn-withfilesharesmixin)
* [`fn withKmsKeyName()`](#fn-withkmskeyname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetworks()`](#fn-withnetworks)
* [`fn withNetworksMixin()`](#fn-withnetworksmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withTier()`](#fn-withtier)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj file_shares`](#obj-file_shares)
  * [`fn new()`](#fn-file_sharesnew)
  * [`obj file_shares.nfs_export_options`](#obj-file_sharesnfs_export_options)
    * [`fn new()`](#fn-file_sharesnfs_export_optionsnew)
* [`obj networks`](#obj-networks)
  * [`fn new()`](#fn-networksnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.filestore_instance.new` injects a new `google_filestore_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.filestore_instance.new('some_id')

You can get the reference to the `id` field of the created `google.filestore_instance` using the reference:

    $._ref.google_filestore_instance.some_id.get('id')

This is the same as directly entering `"${ google_filestore_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A description of the instance. When `null`, the `description` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): KMS key name used for data encryption. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location of the instance. This can be a region for ENTERPRISE tier instances. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the instance.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `tier` (`string`): The service tier of the instance.
Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD and ENTERPRISE
  - `zone` (`string`): The name of the Filestore zone of the instance. When `null`, the `zone` field will be omitted from the resulting object.
  - `file_shares` (`list[obj]`): File system shares on the instance. For this version, only a
single file share is supported. When `null`, the `file_shares` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.file_shares.new](#fn-file_sharesnew) constructor.
  - `networks` (`list[obj]`): VPC networks to which the instance is connected. For this version,
only a single network is supported. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.filestore_instance.newAttrs` constructs a new object with attributes and blocks configured for the `filestore_instance`
Terraform resource.

Unlike [google.filestore_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A description of the instance. When `null`, the `description` field will be omitted from the resulting object.
  - `kms_key_name` (`string`): KMS key name used for data encryption. When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location of the instance. This can be a region for ENTERPRISE tier instances. When `null`, the `location` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the instance.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `tier` (`string`): The service tier of the instance.
Possible values include: STANDARD, PREMIUM, BASIC_HDD, BASIC_SSD, HIGH_SCALE_SSD and ENTERPRISE
  - `zone` (`string`): The name of the Filestore zone of the instance. When `null`, the `zone` field will be omitted from the resulting object.
  - `file_shares` (`list[obj]`): File system shares on the instance. For this version, only a
single file share is supported. When `null`, the `file_shares` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.file_shares.new](#fn-file_sharesnew) constructor.
  - `networks` (`list[obj]`): VPC networks to which the instance is connected. For this version,
only a single network is supported. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `filestore_instance` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFileShares

```ts
withFileShares()
```

`google.list[obj].withFileShares` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the file_shares field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFileSharesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `file_shares` field.


### fn withFileSharesMixin

```ts
withFileSharesMixin()
```

`google.list[obj].withFileSharesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the file_shares field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFileShares](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `file_shares` field.


### fn withKmsKeyName

```ts
withKmsKeyName()
```

`google.string.withKmsKeyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key_name` field.


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


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworks

```ts
withNetworks()
```

`google.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworksMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withNetworksMixin

```ts
withNetworksMixin()
```

`google.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworks](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTier

```ts
withTier()
```

`google.string.withTier` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the tier field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `tier` field.


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


## obj file_shares



### fn file_shares.new

```ts
new()
```


`google.filestore_instance.file_shares.new` constructs a new object with attributes and blocks configured for the `file_shares`
Terraform sub block.



**Args**:
  - `capacity_gb` (`number`): File share capacity in GiB. This must be at least 1024 GiB
for the standard tier, or 2560 GiB for the premium tier.
  - `name` (`string`): The name of the fileshare (16 characters or less)
  - `nfs_export_options` (`list[obj]`): Nfs Export Options. There is a limit of 10 export options per file share. When `null`, the `nfs_export_options` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.filestore_instance.file_shares.nfs_export_options.new](#fn-file_sharesnfs_export_optionsnew) constructor.

**Returns**:
  - An attribute object that represents the `file_shares` sub block.


## obj file_shares.nfs_export_options



### fn file_shares.nfs_export_options.new

```ts
new()
```


`google.filestore_instance.file_shares.nfs_export_options.new` constructs a new object with attributes and blocks configured for the `nfs_export_options`
Terraform sub block.



**Args**:
  - `access_mode` (`string`): Either READ_ONLY, for allowing only read requests on the exported directory,
or READ_WRITE, for allowing both read and write requests. The default is READ_WRITE. Default value: &#34;READ_WRITE&#34; Possible values: [&#34;READ_ONLY&#34;, &#34;READ_WRITE&#34;] When `null`, the `access_mode` field will be omitted from the resulting object.
  - `anon_gid` (`number`): An integer representing the anonymous group id with a default value of 65534.
Anon_gid may only be set with squashMode of ROOT_SQUASH. An error will be returned
if this field is specified for other squashMode settings. When `null`, the `anon_gid` field will be omitted from the resulting object.
  - `anon_uid` (`number`): An integer representing the anonymous user id with a default value of 65534.
Anon_uid may only be set with squashMode of ROOT_SQUASH. An error will be returned
if this field is specified for other squashMode settings. When `null`, the `anon_uid` field will be omitted from the resulting object.
  - `ip_ranges` (`list`): List of either IPv4 addresses, or ranges in CIDR notation which may mount the file share.
Overlapping IP ranges are not allowed, both within and across NfsExportOptions. An error will be returned.
The limit is 64 IP ranges/addresses for each FileShareConfig among all NfsExportOptions. When `null`, the `ip_ranges` field will be omitted from the resulting object.
  - `squash_mode` (`string`): Either NO_ROOT_SQUASH, for allowing root access on the exported directory, or ROOT_SQUASH,
for not allowing root access. The default is NO_ROOT_SQUASH. Default value: &#34;NO_ROOT_SQUASH&#34; Possible values: [&#34;NO_ROOT_SQUASH&#34;, &#34;ROOT_SQUASH&#34;] When `null`, the `squash_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `nfs_export_options` sub block.


## obj networks



### fn networks.new

```ts
new()
```


`google.filestore_instance.networks.new` constructs a new object with attributes and blocks configured for the `networks`
Terraform sub block.



**Args**:
  - `connect_mode` (`string`): The network connect mode of the Filestore instance.
If not provided, the connect mode defaults to
DIRECT_PEERING. Default value: &#34;DIRECT_PEERING&#34; Possible values: [&#34;DIRECT_PEERING&#34;, &#34;PRIVATE_SERVICE_ACCESS&#34;] When `null`, the `connect_mode` field will be omitted from the resulting object.
  - `modes` (`list`): IP versions for which the instance has
IP addresses assigned. Possible values: [&#34;ADDRESS_MODE_UNSPECIFIED&#34;, &#34;MODE_IPV4&#34;, &#34;MODE_IPV6&#34;]
  - `network` (`string`): The name of the GCE VPC network to which the
instance is connected.
  - `reserved_ip_range` (`string`): A /29 CIDR block that identifies the range of IP
addresses reserved for this instance. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `networks` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.filestore_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

---
permalink: /notebooks_instance/
---

# notebooks_instance

`notebooks_instance` represents the `google_notebooks_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAcceleratorConfig()`](#fn-withacceleratorconfig)
* [`fn withAcceleratorConfigMixin()`](#fn-withacceleratorconfigmixin)
* [`fn withBootDiskSizeGb()`](#fn-withbootdisksizegb)
* [`fn withBootDiskType()`](#fn-withbootdisktype)
* [`fn withContainerImage()`](#fn-withcontainerimage)
* [`fn withContainerImageMixin()`](#fn-withcontainerimagemixin)
* [`fn withCreateTime()`](#fn-withcreatetime)
* [`fn withCustomGpuDriverPath()`](#fn-withcustomgpudriverpath)
* [`fn withDataDiskSizeGb()`](#fn-withdatadisksizegb)
* [`fn withDataDiskType()`](#fn-withdatadisktype)
* [`fn withDiskEncryption()`](#fn-withdiskencryption)
* [`fn withInstallGpuDriver()`](#fn-withinstallgpudriver)
* [`fn withInstanceOwners()`](#fn-withinstanceowners)
* [`fn withKmsKey()`](#fn-withkmskey)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMachineType()`](#fn-withmachinetype)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNicType()`](#fn-withnictype)
* [`fn withNoProxyAccess()`](#fn-withnoproxyaccess)
* [`fn withNoPublicIp()`](#fn-withnopublicip)
* [`fn withNoRemoveDataDisk()`](#fn-withnoremovedatadisk)
* [`fn withPostStartupScript()`](#fn-withpoststartupscript)
* [`fn withProject()`](#fn-withproject)
* [`fn withReservationAffinity()`](#fn-withreservationaffinity)
* [`fn withReservationAffinityMixin()`](#fn-withreservationaffinitymixin)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withServiceAccountScopes()`](#fn-withserviceaccountscopes)
* [`fn withShieldedInstanceConfig()`](#fn-withshieldedinstanceconfig)
* [`fn withShieldedInstanceConfigMixin()`](#fn-withshieldedinstanceconfigmixin)
* [`fn withSubnet()`](#fn-withsubnet)
* [`fn withTags()`](#fn-withtags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUpdateTime()`](#fn-withupdatetime)
* [`fn withVmImage()`](#fn-withvmimage)
* [`fn withVmImageMixin()`](#fn-withvmimagemixin)
* [`obj accelerator_config`](#obj-accelerator_config)
  * [`fn new()`](#fn-accelerator_confignew)
* [`obj container_image`](#obj-container_image)
  * [`fn new()`](#fn-container_imagenew)
* [`obj reservation_affinity`](#obj-reservation_affinity)
  * [`fn new()`](#fn-reservation_affinitynew)
* [`obj shielded_instance_config`](#obj-shielded_instance_config)
  * [`fn new()`](#fn-shielded_instance_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vm_image`](#obj-vm_image)
  * [`fn new()`](#fn-vm_imagenew)

## Fields

### fn new

```ts
new()
```


`google.notebooks_instance.new` injects a new `google_notebooks_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.notebooks_instance.new('some_id')

You can get the reference to the `id` field of the created `google.notebooks_instance` using the reference:

    $._ref.google_notebooks_instance.some_id.get('id')

This is the same as directly entering `"${ google_notebooks_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `boot_disk_size_gb` (`number`): The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
If not specified, this defaults to 100. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [&#34;DISK_TYPE_UNSPECIFIED&#34;, &#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `create_time` (`string`): Instance creation time When `null`, the `create_time` field will be omitted from the resulting object.
  - `custom_gpu_driver_path` (`string`): Specify a custom Cloud Storage path where the GPU driver is stored.
If not specified, we&#39;ll automatically choose from official GPU drivers. When `null`, the `custom_gpu_driver_path` field will be omitted from the resulting object.
  - `data_disk_size_gb` (`number`): The size of the data disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB).
You can choose the size of the data disk based on how big your notebooks and data are.
If not specified, this defaults to 100. When `null`, the `data_disk_size_gb` field will be omitted from the resulting object.
  - `data_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [&#34;DISK_TYPE_UNSPECIFIED&#34;, &#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `data_disk_type` field will be omitted from the resulting object.
  - `disk_encryption` (`string`): Disk encryption method used on the boot and data disks, defaults to GMEK. Possible values: [&#34;DISK_ENCRYPTION_UNSPECIFIED&#34;, &#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.
  - `install_gpu_driver` (`bool`): Whether the end user authorizes Google Cloud to install GPU driver
on this instance. If this field is empty or set to false, the GPU driver
won&#39;t be installed. Only applicable to instances with GPUs. When `null`, the `install_gpu_driver` field will be omitted from the resulting object.
  - `instance_owners` (`list`): The list of owners of this instance after creation.
Format: alias@example.com.
Currently supports one owner only.
If not specified, all of the service account users of
your VM instance&#39;s service account can use the instance. When `null`, the `instance_owners` field will be omitted from the resulting object.
  - `kms_key` (`string`): The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id} When `null`, the `kms_key` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this instance. These can be later modified by the setLabels method.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): A reference to the zone where the machine resides.
  - `machine_type` (`string`): A reference to a machine type which defines VM kind.
  - `metadata` (`obj`): Custom metadata to apply to this instance.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): The name specified for the Notebook instance.
  - `network` (`string`): The name of the VPC that this instance is in.
Format: projects/{project_id}/global/networks/{network_id} When `null`, the `network` field will be omitted from the resulting object.
  - `nic_type` (`string`): The type of vNIC driver. Possible values: [&#34;UNSPECIFIED_NIC_TYPE&#34;, &#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.
  - `no_proxy_access` (`bool`): The notebook instance will not register with the proxy.. When `null`, the `no_proxy_access` field will be omitted from the resulting object.
  - `no_public_ip` (`bool`): No public IP will be assigned to this instance. When `null`, the `no_public_ip` field will be omitted from the resulting object.
  - `no_remove_data_disk` (`bool`): If true, the data disk will not be auto deleted when deleting the instance. When `null`, the `no_remove_data_disk` field will be omitted from the resulting object.
  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a
notebook instance fully boots up. The path must be a URL
or Cloud Storage path (gs://path-to-file/file-name). When `null`, the `post_startup_script` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): The service account on this instance, giving access to other
Google Cloud services. You can use any service account within
the same project, but you must have the service account user
permission to use the instance. If not specified,
the Compute Engine default service account is used. When `null`, the `service_account` field will be omitted from the resulting object.
  - `service_account_scopes` (`list`): Optional. The URIs of service account scopes to be included in Compute Engine instances.
If not specified, the following scopes are defined:
- https://www.googleapis.com/auth/cloud-platform
- https://www.googleapis.com/auth/userinfo.email When `null`, the `service_account_scopes` field will be omitted from the resulting object.
  - `subnet` (`string`): The name of the subnet that this instance is in.
Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id} When `null`, the `subnet` field will be omitted from the resulting object.
  - `tags` (`list`): The Compute Engine tags to add to instance. When `null`, the `tags` field will be omitted from the resulting object.
  - `update_time` (`string`): Instance update time. When `null`, the `update_time` field will be omitted from the resulting object.
  - `accelerator_config` (`list[obj]`): The hardware accelerator used on this instance. If you use accelerators,
make sure that your configuration has enough vCPUs and memory to support the
machineType you have selected. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.accelerator_config.new](#fn-notebooksinstanceacceleratorconfignew) constructor.
  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.container_image.new](#fn-notebooksinstancecontainerimagenew) constructor.
  - `reservation_affinity` (`list[obj]`): Reservation Affinity for consuming Zonal reservation. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.reservation_affinity.new](#fn-notebooksinstancereservationaffinitynew) constructor.
  - `shielded_instance_config` (`list[obj]`): A set of Shielded Instance options. Check [Images using supported Shielded VM features]
Not all combinations are valid When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.shielded_instance_config.new](#fn-notebooksinstanceshieldedinstanceconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.timeouts.new](#fn-notebooksinstancetimeoutsnew) constructor.
  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.vm_image.new](#fn-notebooksinstancevmimagenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.notebooks_instance.newAttrs` constructs a new object with attributes and blocks configured for the `notebooks_instance`
Terraform resource.

Unlike [google.notebooks_instance.new](#fn-notebooksinstancenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `boot_disk_size_gb` (`number`): The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). The minimum recommended value is 100 GB.
If not specified, this defaults to 100. When `null`, the `boot_disk_size_gb` field will be omitted from the resulting object.
  - `boot_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [&#34;DISK_TYPE_UNSPECIFIED&#34;, &#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `boot_disk_type` field will be omitted from the resulting object.
  - `create_time` (`string`): Instance creation time When `null`, the `create_time` field will be omitted from the resulting object.
  - `custom_gpu_driver_path` (`string`): Specify a custom Cloud Storage path where the GPU driver is stored.
If not specified, we&#39;ll automatically choose from official GPU drivers. When `null`, the `custom_gpu_driver_path` field will be omitted from the resulting object.
  - `data_disk_size_gb` (`number`): The size of the data disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB).
You can choose the size of the data disk based on how big your notebooks and data are.
If not specified, this defaults to 100. When `null`, the `data_disk_size_gb` field will be omitted from the resulting object.
  - `data_disk_type` (`string`): Possible disk types for notebook instances. Possible values: [&#34;DISK_TYPE_UNSPECIFIED&#34;, &#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `data_disk_type` field will be omitted from the resulting object.
  - `disk_encryption` (`string`): Disk encryption method used on the boot and data disks, defaults to GMEK. Possible values: [&#34;DISK_ENCRYPTION_UNSPECIFIED&#34;, &#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.
  - `install_gpu_driver` (`bool`): Whether the end user authorizes Google Cloud to install GPU driver
on this instance. If this field is empty or set to false, the GPU driver
won&#39;t be installed. Only applicable to instances with GPUs. When `null`, the `install_gpu_driver` field will be omitted from the resulting object.
  - `instance_owners` (`list`): The list of owners of this instance after creation.
Format: alias@example.com.
Currently supports one owner only.
If not specified, all of the service account users of
your VM instance&#39;s service account can use the instance. When `null`, the `instance_owners` field will be omitted from the resulting object.
  - `kms_key` (`string`): The KMS key used to encrypt the disks, only applicable if diskEncryption is CMEK.
Format: projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id} When `null`, the `kms_key` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this instance. These can be later modified by the setLabels method.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): A reference to the zone where the machine resides.
  - `machine_type` (`string`): A reference to a machine type which defines VM kind.
  - `metadata` (`obj`): Custom metadata to apply to this instance.
An object containing a list of &#34;key&#34;: value pairs. Example: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }. When `null`, the `metadata` field will be omitted from the resulting object.
  - `name` (`string`): The name specified for the Notebook instance.
  - `network` (`string`): The name of the VPC that this instance is in.
Format: projects/{project_id}/global/networks/{network_id} When `null`, the `network` field will be omitted from the resulting object.
  - `nic_type` (`string`): The type of vNIC driver. Possible values: [&#34;UNSPECIFIED_NIC_TYPE&#34;, &#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.
  - `no_proxy_access` (`bool`): The notebook instance will not register with the proxy.. When `null`, the `no_proxy_access` field will be omitted from the resulting object.
  - `no_public_ip` (`bool`): No public IP will be assigned to this instance. When `null`, the `no_public_ip` field will be omitted from the resulting object.
  - `no_remove_data_disk` (`bool`): If true, the data disk will not be auto deleted when deleting the instance. When `null`, the `no_remove_data_disk` field will be omitted from the resulting object.
  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a
notebook instance fully boots up. The path must be a URL
or Cloud Storage path (gs://path-to-file/file-name). When `null`, the `post_startup_script` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `service_account` (`string`): The service account on this instance, giving access to other
Google Cloud services. You can use any service account within
the same project, but you must have the service account user
permission to use the instance. If not specified,
the Compute Engine default service account is used. When `null`, the `service_account` field will be omitted from the resulting object.
  - `service_account_scopes` (`list`): Optional. The URIs of service account scopes to be included in Compute Engine instances.
If not specified, the following scopes are defined:
- https://www.googleapis.com/auth/cloud-platform
- https://www.googleapis.com/auth/userinfo.email When `null`, the `service_account_scopes` field will be omitted from the resulting object.
  - `subnet` (`string`): The name of the subnet that this instance is in.
Format: projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id} When `null`, the `subnet` field will be omitted from the resulting object.
  - `tags` (`list`): The Compute Engine tags to add to instance. When `null`, the `tags` field will be omitted from the resulting object.
  - `update_time` (`string`): Instance update time. When `null`, the `update_time` field will be omitted from the resulting object.
  - `accelerator_config` (`list[obj]`): The hardware accelerator used on this instance. If you use accelerators,
make sure that your configuration has enough vCPUs and memory to support the
machineType you have selected. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.accelerator_config.new](#fn-notebooksinstanceacceleratorconfignew) constructor.
  - `container_image` (`list[obj]`): Use a container image to start the notebook instance. When `null`, the `container_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.container_image.new](#fn-notebooksinstancecontainerimagenew) constructor.
  - `reservation_affinity` (`list[obj]`): Reservation Affinity for consuming Zonal reservation. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.reservation_affinity.new](#fn-notebooksinstancereservationaffinitynew) constructor.
  - `shielded_instance_config` (`list[obj]`): A set of Shielded Instance options. Check [Images using supported Shielded VM features]
Not all combinations are valid When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.shielded_instance_config.new](#fn-notebooksinstanceshieldedinstanceconfignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.timeouts.new](#fn-notebooksinstancetimeoutsnew) constructor.
  - `vm_image` (`list[obj]`): Use a Compute Engine VM image to start the notebook instance. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_instance.vm_image.new](#fn-notebooksinstancevmimagenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notebooks_instance` resource into the root Terraform configuration.


### fn withAcceleratorConfig

```ts
withAcceleratorConfig()
```

`google.list[obj].withAcceleratorConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the accelerator_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAcceleratorConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.


### fn withAcceleratorConfigMixin

```ts
withAcceleratorConfigMixin()
```

`google.list[obj].withAcceleratorConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the accelerator_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAcceleratorConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `accelerator_config` field.


### fn withBootDiskSizeGb

```ts
withBootDiskSizeGb()
```

`google.number.withBootDiskSizeGb` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the boot_disk_size_gb field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `boot_disk_size_gb` field.


### fn withBootDiskType

```ts
withBootDiskType()
```

`google.string.withBootDiskType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the boot_disk_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `boot_disk_type` field.


### fn withContainerImage

```ts
withContainerImage()
```

`google.list[obj].withContainerImage` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the container_image field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withContainerImageMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `container_image` field.


### fn withContainerImageMixin

```ts
withContainerImageMixin()
```

`google.list[obj].withContainerImageMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the container_image field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withContainerImage](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `container_image` field.


### fn withCreateTime

```ts
withCreateTime()
```

`google.string.withCreateTime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the create_time field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `create_time` field.


### fn withCustomGpuDriverPath

```ts
withCustomGpuDriverPath()
```

`google.string.withCustomGpuDriverPath` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the custom_gpu_driver_path field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `custom_gpu_driver_path` field.


### fn withDataDiskSizeGb

```ts
withDataDiskSizeGb()
```

`google.number.withDataDiskSizeGb` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the data_disk_size_gb field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `data_disk_size_gb` field.


### fn withDataDiskType

```ts
withDataDiskType()
```

`google.string.withDataDiskType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_disk_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_disk_type` field.


### fn withDiskEncryption

```ts
withDiskEncryption()
```

`google.string.withDiskEncryption` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the disk_encryption field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `disk_encryption` field.


### fn withInstallGpuDriver

```ts
withInstallGpuDriver()
```

`google.bool.withInstallGpuDriver` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the install_gpu_driver field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `install_gpu_driver` field.


### fn withInstanceOwners

```ts
withInstanceOwners()
```

`google.list.withInstanceOwners` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the instance_owners field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `instance_owners` field.


### fn withKmsKey

```ts
withKmsKey()
```

`google.string.withKmsKey` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the kms_key field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `kms_key` field.


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


### fn withMachineType

```ts
withMachineType()
```

`google.string.withMachineType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the machine_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `machine_type` field.


### fn withMetadata

```ts
withMetadata()
```

`google.obj.withMetadata` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the metadata field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `metadata` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withNicType

```ts
withNicType()
```

`google.string.withNicType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the nic_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `nic_type` field.


### fn withNoProxyAccess

```ts
withNoProxyAccess()
```

`google.bool.withNoProxyAccess` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the no_proxy_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `no_proxy_access` field.


### fn withNoPublicIp

```ts
withNoPublicIp()
```

`google.bool.withNoPublicIp` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the no_public_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `no_public_ip` field.


### fn withNoRemoveDataDisk

```ts
withNoRemoveDataDisk()
```

`google.bool.withNoRemoveDataDisk` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the no_remove_data_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `no_remove_data_disk` field.


### fn withPostStartupScript

```ts
withPostStartupScript()
```

`google.string.withPostStartupScript` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the post_startup_script field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `post_startup_script` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withReservationAffinity

```ts
withReservationAffinity()
```

`google.list[obj].withReservationAffinity` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the reservation_affinity field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withReservationAffinityMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.


### fn withReservationAffinityMixin

```ts
withReservationAffinityMixin()
```

`google.list[obj].withReservationAffinityMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the reservation_affinity field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withReservationAffinity](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `reservation_affinity` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account` field.


### fn withServiceAccountScopes

```ts
withServiceAccountScopes()
```

`google.list.withServiceAccountScopes` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the service_account_scopes field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `service_account_scopes` field.


### fn withShieldedInstanceConfig

```ts
withShieldedInstanceConfig()
```

`google.list[obj].withShieldedInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the shielded_instance_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withShieldedInstanceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.


### fn withShieldedInstanceConfigMixin

```ts
withShieldedInstanceConfigMixin()
```

`google.list[obj].withShieldedInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the shielded_instance_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withShieldedInstanceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `shielded_instance_config` field.


### fn withSubnet

```ts
withSubnet()
```

`google.string.withSubnet` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnet field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnet` field.


### fn withTags

```ts
withTags()
```

`google.list.withTags` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `tags` field.


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


### fn withUpdateTime

```ts
withUpdateTime()
```

`google.string.withUpdateTime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the update_time field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `update_time` field.


### fn withVmImage

```ts
withVmImage()
```

`google.list[obj].withVmImage` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vm_image field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVmImageMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vm_image` field.


### fn withVmImageMixin

```ts
withVmImageMixin()
```

`google.list[obj].withVmImageMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vm_image field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVmImage](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vm_image` field.


## obj accelerator_config



### fn accelerator_config.new

```ts
new()
```


`google.notebooks_instance.accelerator_config.new` constructs a new object with attributes and blocks configured for the `accelerator_config`
Terraform sub block.



**Args**:
  - `core_count` (`number`): Count of cores of this accelerator.
  - `type` (`string`): Type of this accelerator. Possible values: [&#34;ACCELERATOR_TYPE_UNSPECIFIED&#34;, &#34;NVIDIA_TESLA_K80&#34;, &#34;NVIDIA_TESLA_P100&#34;, &#34;NVIDIA_TESLA_V100&#34;, &#34;NVIDIA_TESLA_P4&#34;, &#34;NVIDIA_TESLA_T4&#34;, &#34;NVIDIA_TESLA_T4_VWS&#34;, &#34;NVIDIA_TESLA_P100_VWS&#34;, &#34;NVIDIA_TESLA_P4_VWS&#34;, &#34;NVIDIA_TESLA_A100&#34;, &#34;TPU_V2&#34;, &#34;TPU_V3&#34;]

**Returns**:
  - An attribute object that represents the `accelerator_config` sub block.


## obj container_image



### fn container_image.new

```ts
new()
```


`google.notebooks_instance.container_image.new` constructs a new object with attributes and blocks configured for the `container_image`
Terraform sub block.



**Args**:
  - `repository` (`string`): The path to the container image repository.
For example: gcr.io/{project_id}/{imageName}
  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `container_image` sub block.


## obj reservation_affinity



### fn reservation_affinity.new

```ts
new()
```


`google.notebooks_instance.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `consume_reservation_type` (`string`): The type of Compute Reservation. Possible values: [&#34;NO_RESERVATION&#34;, &#34;ANY_RESERVATION&#34;, &#34;SPECIFIC_RESERVATION&#34;]
  - `key` (`string`): Corresponds to the label key of reservation resource. When `null`, the `key` field will be omitted from the resulting object.
  - `values` (`list`): Corresponds to the label values of reservation resource. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj shielded_instance_config



### fn shielded_instance_config.new

```ts
new()
```


`google.notebooks_instance.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled. Enables monitoring and attestation of the
boot integrity of the instance. The attestation is performed against the integrity policy baseline.
This baseline is initially derived from the implicitly trusted boot image when the instance is created.
Enabled by default. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled. Secure Boot helps ensure that the system only runs
authentic software by verifying the digital signature of all boot components, and halting the boot process
if signature verification fails.
Disabled by default. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Defines whether the instance has the vTPM enabled.
Enabled by default. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.notebooks_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vm_image



### fn vm_image.new

```ts
new()
```


`google.notebooks_instance.vm_image.new` constructs a new object with attributes and blocks configured for the `vm_image`
Terraform sub block.



**Args**:
  - `image_family` (`string`): Use this VM image family to find the image; the newest image in this family will be used. When `null`, the `image_family` field will be omitted from the resulting object.
  - `image_name` (`string`): Use VM image name to find the image. When `null`, the `image_name` field will be omitted from the resulting object.
  - `project` (`string`): The name of the Google Cloud project that this VM image belongs to.
Format: projects/{project_id}

**Returns**:
  - An attribute object that represents the `vm_image` sub block.

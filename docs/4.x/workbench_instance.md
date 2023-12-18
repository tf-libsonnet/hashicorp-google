---
permalink: /workbench_instance/
---

# workbench_instance

`workbench_instance` represents the `google_workbench_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisableProxyAccess()`](#fn-withdisableproxyaccess)
* [`fn withGceSetup()`](#fn-withgcesetup)
* [`fn withGceSetupMixin()`](#fn-withgcesetupmixin)
* [`fn withInstanceId()`](#fn-withinstanceid)
* [`fn withInstanceOwners()`](#fn-withinstanceowners)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj gce_setup`](#obj-gce_setup)
  * [`fn new()`](#fn-gce_setupnew)
  * [`obj gce_setup.accelerator_configs`](#obj-gce_setupaccelerator_configs)
    * [`fn new()`](#fn-gce_setupaccelerator_configsnew)
  * [`obj gce_setup.boot_disk`](#obj-gce_setupboot_disk)
    * [`fn new()`](#fn-gce_setupboot_disknew)
  * [`obj gce_setup.data_disks`](#obj-gce_setupdata_disks)
    * [`fn new()`](#fn-gce_setupdata_disksnew)
  * [`obj gce_setup.network_interfaces`](#obj-gce_setupnetwork_interfaces)
    * [`fn new()`](#fn-gce_setupnetwork_interfacesnew)
  * [`obj gce_setup.service_accounts`](#obj-gce_setupservice_accounts)
    * [`fn new()`](#fn-gce_setupservice_accountsnew)
  * [`obj gce_setup.vm_image`](#obj-gce_setupvm_image)
    * [`fn new()`](#fn-gce_setupvm_imagenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.workbench_instance.new` injects a new `google_workbench_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.workbench_instance.new('some_id')

You can get the reference to the `id` field of the created `google.workbench_instance` using the reference:

    $._ref.google_workbench_instance.some_id.get('id')

This is the same as directly entering `"${ google_workbench_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `disable_proxy_access` (`bool`): Optional. If true, the workbench instance will not register with the proxy. When `null`, the `disable_proxy_access` field will be omitted from the resulting object.
  - `instance_id` (`string`): Required. User-defined unique ID of this instance. When `null`, the `instance_id` field will be omitted from the resulting object.
  - `instance_owners` (`list`): &#39;Optional. Input only. The owner of this instance after creation. Format:
&#39;alias@example.com&#39; Currently supports one owner only. If not specified, all of
the service account users of your VM instance&#39;&#39;s service account can use the instance.&#39; When `null`, the `instance_owners` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels to apply to this instance. These can be later modified
by the UpdateInstance method.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Part of &#39;parent&#39;. See documentation of &#39;projectsId&#39;.
  - `name` (`string`): The name of this workbench instance. Format: &#39;projects/{project_id}/locations/{location}/instances/{instance_id}&#39;
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `gce_setup` (`list[obj]`): The definition of how to configure a VM instance outside of Resources and Identity. When `null`, the `gce_setup` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.new](#fn-gce_setupnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.workbench_instance.newAttrs` constructs a new object with attributes and blocks configured for the `workbench_instance`
Terraform resource.

Unlike [google.workbench_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `disable_proxy_access` (`bool`): Optional. If true, the workbench instance will not register with the proxy. When `null`, the `disable_proxy_access` field will be omitted from the resulting object.
  - `instance_id` (`string`): Required. User-defined unique ID of this instance. When `null`, the `instance_id` field will be omitted from the resulting object.
  - `instance_owners` (`list`): &#39;Optional. Input only. The owner of this instance after creation. Format:
&#39;alias@example.com&#39; Currently supports one owner only. If not specified, all of
the service account users of your VM instance&#39;&#39;s service account can use the instance.&#39; When `null`, the `instance_owners` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels to apply to this instance. These can be later modified
by the UpdateInstance method.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Part of &#39;parent&#39;. See documentation of &#39;projectsId&#39;.
  - `name` (`string`): The name of this workbench instance. Format: &#39;projects/{project_id}/locations/{location}/instances/{instance_id}&#39;
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `gce_setup` (`list[obj]`): The definition of how to configure a VM instance outside of Resources and Identity. When `null`, the `gce_setup` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.new](#fn-gce_setupnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `workbench_instance` resource into the root Terraform configuration.


### fn withDisableProxyAccess

```ts
withDisableProxyAccess()
```

`google.bool.withDisableProxyAccess` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the disable_proxy_access field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `disable_proxy_access` field.


### fn withGceSetup

```ts
withGceSetup()
```

`google.list[obj].withGceSetup` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gce_setup field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGceSetupMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gce_setup` field.


### fn withGceSetupMixin

```ts
withGceSetupMixin()
```

`google.list[obj].withGceSetupMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gce_setup field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGceSetup](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gce_setup` field.


### fn withInstanceId

```ts
withInstanceId()
```

`google.string.withInstanceId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_id` field.


### fn withInstanceOwners

```ts
withInstanceOwners()
```

`google.list.withInstanceOwners` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the instance_owners field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `instance_owners` field.


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


## obj gce_setup



### fn gce_setup.new

```ts
new()
```


`google.workbench_instance.gce_setup.new` constructs a new object with attributes and blocks configured for the `gce_setup`
Terraform sub block.



**Args**:
  - `disable_public_ip` (`bool`): Optional. If true, no external IP will be assigned to this VM instance. When `null`, the `disable_public_ip` field will be omitted from the resulting object.
  - `enable_ip_forwarding` (`bool`): Optional. Flag to enable ip forwarding or not, default false/off.
https://cloud.google.com/vpc/docs/using-routes#canipforward When `null`, the `enable_ip_forwarding` field will be omitted from the resulting object.
  - `machine_type` (`string`): Optional. The machine type of the VM instance. https://cloud.google.com/compute/docs/machine-resource When `null`, the `machine_type` field will be omitted from the resulting object.
  - `metadata` (`obj`): Optional. Custom metadata to apply to this instance. When `null`, the `metadata` field will be omitted from the resulting object.
  - `tags` (`list`): Optional. The Compute Engine tags to add to instance (see [Tagging
instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)). When `null`, the `tags` field will be omitted from the resulting object.
  - `accelerator_configs` (`list[obj]`): The hardware accelerators used on this instance. If you use accelerators, make sure that your configuration has
[enough vCPUs and memory to support the &#39;machine_type&#39; you have selected](https://cloud.google.com/compute/docs/gpus/#gpus-list).
Currently supports only one accelerator configuration. When `null`, the `accelerator_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.accelerator_configs.new](#fn-gce_setupaccelerator_configsnew) constructor.
  - `boot_disk` (`list[obj]`): The definition of a boot disk. When `null`, the `boot_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.boot_disk.new](#fn-gce_setupboot_disknew) constructor.
  - `data_disks` (`list[obj]`): Data disks attached to the VM instance. Currently supports only one data disk. When `null`, the `data_disks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.data_disks.new](#fn-gce_setupdata_disksnew) constructor.
  - `network_interfaces` (`list[obj]`): The network interfaces for the VM. Supports only one interface. When `null`, the `network_interfaces` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.network_interfaces.new](#fn-gce_setupnetwork_interfacesnew) constructor.
  - `service_accounts` (`list[obj]`): The service account that serves as an identity for the VM instance. Currently supports only one service account. When `null`, the `service_accounts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.service_accounts.new](#fn-gce_setupservice_accountsnew) constructor.
  - `vm_image` (`list[obj]`): Definition of a custom Compute Engine virtual machine image for starting
a workbench instance with the environment installed directly on the VM. When `null`, the `vm_image` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.workbench_instance.gce_setup.vm_image.new](#fn-gce_setupvm_imagenew) constructor.

**Returns**:
  - An attribute object that represents the `gce_setup` sub block.


## obj gce_setup.accelerator_configs



### fn gce_setup.accelerator_configs.new

```ts
new()
```


`google.workbench_instance.gce_setup.accelerator_configs.new` constructs a new object with attributes and blocks configured for the `accelerator_configs`
Terraform sub block.



**Args**:
  - `core_count` (`string`): Optional. Count of cores of this accelerator. When `null`, the `core_count` field will be omitted from the resulting object.
  - `type` (`string`): Optional. Type of this accelerator. Possible values: [&#34;NVIDIA_TESLA_P100&#34;, &#34;NVIDIA_TESLA_V100&#34;, &#34;NVIDIA_TESLA_P4&#34;, &#34;NVIDIA_TESLA_T4&#34;, &#34;NVIDIA_TESLA_A100&#34;, &#34;NVIDIA_A100_80GB&#34;, &#34;NVIDIA_L4&#34;, &#34;NVIDIA_TESLA_T4_VWS&#34;, &#34;NVIDIA_TESLA_P100_VWS&#34;, &#34;NVIDIA_TESLA_P4_VWS&#34;] When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `accelerator_configs` sub block.


## obj gce_setup.boot_disk



### fn gce_setup.boot_disk.new

```ts
new()
```


`google.workbench_instance.gce_setup.boot_disk.new` constructs a new object with attributes and blocks configured for the `boot_disk`
Terraform sub block.



**Args**:
  - `disk_encryption` (`string`): Optional. Input only. Disk encryption method used on the boot and
data disks, defaults to GMEK. Possible values: [&#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.
  - `disk_size_gb` (`string`): Optional. The size of the boot disk in GB attached to this instance,
up to a maximum of 64000 GB (64 TB). If not specified, this defaults to the
recommended value of 150GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): Optional. Indicates the type of the disk. Possible values: [&#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `disk_type` field will be omitted from the resulting object.
  - `kms_key` (`string`): &#39;Optional. Input only. The KMS key used to encrypt the disks, only
applicable if disk_encryption is CMEK. Format: &#39;projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}&#39;
Learn more about using your own encryption keys.&#39; When `null`, the `kms_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `boot_disk` sub block.


## obj gce_setup.data_disks



### fn gce_setup.data_disks.new

```ts
new()
```


`google.workbench_instance.gce_setup.data_disks.new` constructs a new object with attributes and blocks configured for the `data_disks`
Terraform sub block.



**Args**:
  - `disk_encryption` (`string`): Optional. Input only. Disk encryption method used on the boot
and data disks, defaults to GMEK. Possible values: [&#34;GMEK&#34;, &#34;CMEK&#34;] When `null`, the `disk_encryption` field will be omitted from the resulting object.
  - `disk_size_gb` (`string`): Optional. The size of the disk in GB attached to this VM instance,
up to a maximum of 64000 GB (64 TB). If not specified, this defaults to
100. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): Optional. Input only. Indicates the type of the disk. Possible values: [&#34;PD_STANDARD&#34;, &#34;PD_SSD&#34;, &#34;PD_BALANCED&#34;, &#34;PD_EXTREME&#34;] When `null`, the `disk_type` field will be omitted from the resulting object.
  - `kms_key` (`string`): &#39;Optional. Input only. The KMS key used to encrypt the disks,
only applicable if disk_encryption is CMEK. Format: &#39;projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}&#39;
Learn more about using your own encryption keys.&#39; When `null`, the `kms_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `data_disks` sub block.


## obj gce_setup.network_interfaces



### fn gce_setup.network_interfaces.new

```ts
new()
```


`google.workbench_instance.gce_setup.network_interfaces.new` constructs a new object with attributes and blocks configured for the `network_interfaces`
Terraform sub block.



**Args**:
  - `network` (`string`): Optional. The name of the VPC that this VM instance is in. When `null`, the `network` field will be omitted from the resulting object.
  - `nic_type` (`string`): Optional. The type of vNIC to be used on this interface. This
may be gVNIC or VirtioNet. Possible values: [&#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.
  - `subnet` (`string`): Optional. The name of the subnet that this VM instance is in. When `null`, the `subnet` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `network_interfaces` sub block.


## obj gce_setup.service_accounts



### fn gce_setup.service_accounts.new

```ts
new()
```


`google.workbench_instance.gce_setup.service_accounts.new` constructs a new object with attributes and blocks configured for the `service_accounts`
Terraform sub block.



**Args**:
  - `email` (`string`): Optional. Email address of the service account. When `null`, the `email` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `service_accounts` sub block.


## obj gce_setup.vm_image



### fn gce_setup.vm_image.new

```ts
new()
```


`google.workbench_instance.gce_setup.vm_image.new` constructs a new object with attributes and blocks configured for the `vm_image`
Terraform sub block.



**Args**:
  - `family` (`string`): Optional. Use this VM image family to find the image; the newest
image in this family will be used. When `null`, the `family` field will be omitted from the resulting object.
  - `name` (`string`): Optional. Use VM image name to find the image. When `null`, the `name` field will be omitted from the resulting object.
  - `project` (`string`): The name of the Google Cloud project that this VM image belongs to.
Format: {project_id} When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vm_image` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.workbench_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

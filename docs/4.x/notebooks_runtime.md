---
permalink: /notebooks_runtime/
---

# notebooks_runtime

`notebooks_runtime` represents the `google_notebooks_runtime` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAccessConfig()`](#fn-withaccessconfig)
* [`fn withAccessConfigMixin()`](#fn-withaccessconfigmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSoftwareConfig()`](#fn-withsoftwareconfig)
* [`fn withSoftwareConfigMixin()`](#fn-withsoftwareconfigmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVirtualMachine()`](#fn-withvirtualmachine)
* [`fn withVirtualMachineMixin()`](#fn-withvirtualmachinemixin)
* [`obj access_config`](#obj-access_config)
  * [`fn new()`](#fn-access_confignew)
* [`obj software_config`](#obj-software_config)
  * [`fn new()`](#fn-software_confignew)
  * [`obj software_config.kernels`](#obj-software_configkernels)
    * [`fn new()`](#fn-software_configkernelsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj virtual_machine`](#obj-virtual_machine)
  * [`fn new()`](#fn-virtual_machinenew)
  * [`obj virtual_machine.virtual_machine_config`](#obj-virtual_machinevirtual_machine_config)
    * [`fn new()`](#fn-virtual_machinevirtual_machine_confignew)
    * [`obj virtual_machine.virtual_machine_config.accelerator_config`](#obj-virtual_machinevirtual_machine_configaccelerator_config)
      * [`fn new()`](#fn-virtual_machinevirtual_machine_configaccelerator_confignew)
    * [`obj virtual_machine.virtual_machine_config.container_images`](#obj-virtual_machinevirtual_machine_configcontainer_images)
      * [`fn new()`](#fn-virtual_machinevirtual_machine_configcontainer_imagesnew)
    * [`obj virtual_machine.virtual_machine_config.data_disk`](#obj-virtual_machinevirtual_machine_configdata_disk)
      * [`fn new()`](#fn-virtual_machinevirtual_machine_configdata_disknew)
      * [`obj virtual_machine.virtual_machine_config.data_disk.initialize_params`](#obj-virtual_machinevirtual_machine_configdata_diskinitialize_params)
        * [`fn new()`](#fn-virtual_machinevirtual_machine_configdata_diskinitialize_paramsnew)
    * [`obj virtual_machine.virtual_machine_config.encryption_config`](#obj-virtual_machinevirtual_machine_configencryption_config)
      * [`fn new()`](#fn-virtual_machinevirtual_machine_configencryption_confignew)
    * [`obj virtual_machine.virtual_machine_config.shielded_instance_config`](#obj-virtual_machinevirtual_machine_configshielded_instance_config)
      * [`fn new()`](#fn-virtual_machinevirtual_machine_configshielded_instance_confignew)

## Fields

### fn new

```ts
new()
```


`google.notebooks_runtime.new` injects a new `google_notebooks_runtime` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.notebooks_runtime.new('some_id')

You can get the reference to the `id` field of the created `google.notebooks_runtime` using the reference:

    $._ref.google_notebooks_runtime.some_id.get('id')

This is the same as directly entering `"${ google_notebooks_runtime.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `location` (`string`): A reference to the zone where the machine resides.
  - `name` (`string`): The name specified for the Notebook runtime.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `access_config` (`list[obj]`): The config settings for accessing runtime. When `null`, the `access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.access_config.new](#fn-access_confignew) constructor.
  - `software_config` (`list[obj]`): The config settings for software inside the runtime. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.software_config.new](#fn-software_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_machine` (`list[obj]`): Use a Compute Engine VM image to start the managed notebook instance. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.new](#fn-virtual_machinenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.notebooks_runtime.newAttrs` constructs a new object with attributes and blocks configured for the `notebooks_runtime`
Terraform resource.

Unlike [google.notebooks_runtime.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `location` (`string`): A reference to the zone where the machine resides.
  - `name` (`string`): The name specified for the Notebook runtime.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `access_config` (`list[obj]`): The config settings for accessing runtime. When `null`, the `access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.access_config.new](#fn-access_confignew) constructor.
  - `software_config` (`list[obj]`): The config settings for software inside the runtime. When `null`, the `software_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.software_config.new](#fn-software_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.timeouts.new](#fn-timeoutsnew) constructor.
  - `virtual_machine` (`list[obj]`): Use a Compute Engine VM image to start the managed notebook instance. When `null`, the `virtual_machine` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.new](#fn-virtual_machinenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `notebooks_runtime` resource into the root Terraform configuration.


### fn withAccessConfig

```ts
withAccessConfig()
```

`google.list[obj].withAccessConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the access_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAccessConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `access_config` field.


### fn withAccessConfigMixin

```ts
withAccessConfigMixin()
```

`google.list[obj].withAccessConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the access_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAccessConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `access_config` field.


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


### fn withSoftwareConfig

```ts
withSoftwareConfig()
```

`google.list[obj].withSoftwareConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the software_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSoftwareConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `software_config` field.


### fn withSoftwareConfigMixin

```ts
withSoftwareConfigMixin()
```

`google.list[obj].withSoftwareConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the software_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSoftwareConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `software_config` field.


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


### fn withVirtualMachine

```ts
withVirtualMachine()
```

`google.list[obj].withVirtualMachine` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_machine field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVirtualMachineMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.


### fn withVirtualMachineMixin

```ts
withVirtualMachineMixin()
```

`google.list[obj].withVirtualMachineMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the virtual_machine field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVirtualMachine](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `virtual_machine` field.


## obj access_config



### fn access_config.new

```ts
new()
```


`google.notebooks_runtime.access_config.new` constructs a new object with attributes and blocks configured for the `access_config`
Terraform sub block.



**Args**:
  - `access_type` (`string`): The type of access mode this instance. For valid values, see
&#39;https://cloud.google.com/vertex-ai/docs/workbench/reference/
rest/v1/projects.locations.runtimes#RuntimeAccessType&#39;. When `null`, the `access_type` field will be omitted from the resulting object.
  - `runtime_owner` (`string`): The owner of this runtime after creation. Format: &#39;alias@example.com&#39;.
Currently supports one owner only. When `null`, the `runtime_owner` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `access_config` sub block.


## obj software_config



### fn software_config.new

```ts
new()
```


`google.notebooks_runtime.software_config.new` constructs a new object with attributes and blocks configured for the `software_config`
Terraform sub block.



**Args**:
  - `custom_gpu_driver_path` (`string`): Specify a custom Cloud Storage path where the GPU driver is stored.
If not specified, we&#39;ll automatically choose from official GPU drivers. When `null`, the `custom_gpu_driver_path` field will be omitted from the resulting object.
  - `enable_health_monitoring` (`bool`): Verifies core internal services are running. Default: True. When `null`, the `enable_health_monitoring` field will be omitted from the resulting object.
  - `idle_shutdown` (`bool`): Runtime will automatically shutdown after idle_shutdown_time.
Default: True When `null`, the `idle_shutdown` field will be omitted from the resulting object.
  - `idle_shutdown_timeout` (`number`): Time in minutes to wait before shuting down runtime.
Default: 180 minutes When `null`, the `idle_shutdown_timeout` field will be omitted from the resulting object.
  - `install_gpu_driver` (`bool`): Install Nvidia Driver automatically. When `null`, the `install_gpu_driver` field will be omitted from the resulting object.
  - `notebook_upgrade_schedule` (`string`): Cron expression in UTC timezone for schedule instance auto upgrade.
Please follow the [cron format](https://en.wikipedia.org/wiki/Cron). When `null`, the `notebook_upgrade_schedule` field will be omitted from the resulting object.
  - `post_startup_script` (`string`): Path to a Bash script that automatically runs after a notebook instance
fully boots up. The path must be a URL or
Cloud Storage path (gs://path-to-file/file-name). When `null`, the `post_startup_script` field will be omitted from the resulting object.
  - `post_startup_script_behavior` (`string`): Behavior for the post startup script. Possible values: [&#34;POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED&#34;, &#34;RUN_EVERY_START&#34;, &#34;DOWNLOAD_AND_RUN_EVERY_START&#34;] When `null`, the `post_startup_script_behavior` field will be omitted from the resulting object.
  - `kernels` (`list[obj]`): Use a list of container images to use as Kernels in the notebook instance. When `null`, the `kernels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.software_config.kernels.new](#fn-software_configkernelsnew) constructor.

**Returns**:
  - An attribute object that represents the `software_config` sub block.


## obj software_config.kernels



### fn software_config.kernels.new

```ts
new()
```


`google.notebooks_runtime.software_config.kernels.new` constructs a new object with attributes and blocks configured for the `kernels`
Terraform sub block.



**Args**:
  - `repository` (`string`): The path to the container image repository.
For example: gcr.io/{project_id}/{imageName}
  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `kernels` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.notebooks_runtime.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj virtual_machine



### fn virtual_machine.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.new` constructs a new object with attributes and blocks configured for the `virtual_machine`
Terraform sub block.



**Args**:
  - `virtual_machine_config` (`list[obj]`): Virtual Machine configuration settings. When `null`, the `virtual_machine_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.new](#fn-virtual_machinevirtual_machine_confignew) constructor.

**Returns**:
  - An attribute object that represents the `virtual_machine` sub block.


## obj virtual_machine.virtual_machine_config



### fn virtual_machine.virtual_machine_config.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.new` constructs a new object with attributes and blocks configured for the `virtual_machine_config`
Terraform sub block.



**Args**:
  - `internal_ip_only` (`bool`): If true, runtime will only have internal IP addresses. By default,
runtimes are not restricted to internal IP addresses, and will
have ephemeral external IP addresses assigned to each vm. This
&#39;internal_ip_only&#39; restriction can only be enabled for subnetwork
enabled networks, and all dependencies must be configured to be
accessible without external IP addresses. When `null`, the `internal_ip_only` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels to associate with this runtime. Label **keys** must
contain 1 to 63 characters, and must conform to [RFC 1035]
(https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
empty, but, if present, must contain 1 to 63 characters, and must
conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
more than 32 labels can be associated with a cluster. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The Compute Engine machine type used for runtimes.
  - `metadata` (`obj`): The Compute Engine metadata entries to add to virtual machine.
(see [Project and instance metadata](https://cloud.google.com
/compute/docs/storing-retrieving-metadata#project_and_instance
_metadata)). When `null`, the `metadata` field will be omitted from the resulting object.
  - `network` (`string`): The Compute Engine network to be used for machine communications.
Cannot be specified with subnetwork. If neither &#39;network&#39; nor
&#39;subnet&#39; is specified, the &#34;default&#34; network of the project is
used, if it exists. A full URL or partial URI. Examples:
  * &#39;https://www.googleapis.com/compute/v1/projects/[project_id]/
  regions/global/default&#39;
  * &#39;projects/[project_id]/regions/global/default&#39;
Runtimes are managed resources inside Google Infrastructure.
Runtimes support the following network configurations:
  * Google Managed Network (Network &amp; subnet are empty)
  * Consumer Project VPC (network &amp; subnet are required). Requires
  configuring Private Service Access.
  * Shared VPC (network &amp; subnet are required). Requires
  configuring Private Service Access. When `null`, the `network` field will be omitted from the resulting object.
  - `nic_type` (`string`): The type of vNIC to be used on this interface. This may be gVNIC
or VirtioNet. Possible values: [&#34;UNSPECIFIED_NIC_TYPE&#34;, &#34;VIRTIO_NET&#34;, &#34;GVNIC&#34;] When `null`, the `nic_type` field will be omitted from the resulting object.
  - `reserved_ip_range` (`string`): Reserved IP Range name is used for VPC Peering. The
subnetwork allocation will use the range *name* if it&#39;s assigned. When `null`, the `reserved_ip_range` field will be omitted from the resulting object.
  - `subnet` (`string`): The Compute Engine subnetwork to be used for machine
communications. Cannot be specified with network. A full URL or
partial URI are valid. Examples:
  * &#39;https://www.googleapis.com/compute/v1/projects/[project_id]/
  regions/us-east1/subnetworks/sub0&#39;
  * &#39;projects/[project_id]/regions/us-east1/subnetworks/sub0&#39; When `null`, the `subnet` field will be omitted from the resulting object.
  - `tags` (`list`): The Compute Engine tags to add to runtime (see [Tagging instances]
(https://cloud.google.com/compute/docs/
label-or-tag-resources#tags)). When `null`, the `tags` field will be omitted from the resulting object.
  - `accelerator_config` (`list[obj]`): The Compute Engine accelerator configuration for this runtime. When `null`, the `accelerator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.accelerator_config.new](#fn-virtual_machinevirtual_machineaccelerator_confignew) constructor.
  - `container_images` (`list[obj]`): Use a list of container images to start the notebook instance. When `null`, the `container_images` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.container_images.new](#fn-virtual_machinevirtual_machinecontainer_imagesnew) constructor.
  - `data_disk` (`list[obj]`): Data disk option configuration settings. When `null`, the `data_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.new](#fn-virtual_machinevirtual_machinedata_disknew) constructor.
  - `encryption_config` (`list[obj]`): Encryption settings for virtual machine data disk. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.encryption_config.new](#fn-virtual_machinevirtual_machineencryption_confignew) constructor.
  - `shielded_instance_config` (`list[obj]`): Shielded VM Instance configuration settings. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.shielded_instance_config.new](#fn-virtual_machinevirtual_machineshielded_instance_confignew) constructor.

**Returns**:
  - An attribute object that represents the `virtual_machine_config` sub block.


## obj virtual_machine.virtual_machine_config.accelerator_config



### fn virtual_machine.virtual_machine_config.accelerator_config.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.accelerator_config.new` constructs a new object with attributes and blocks configured for the `accelerator_config`
Terraform sub block.



**Args**:
  - `core_count` (`number`): Count of cores of this accelerator. When `null`, the `core_count` field will be omitted from the resulting object.
  - `type` (`string`): Accelerator model. For valid values, see
&#39;https://cloud.google.com/vertex-ai/docs/workbench/reference/
rest/v1/projects.locations.runtimes#AcceleratorType&#39; When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `accelerator_config` sub block.


## obj virtual_machine.virtual_machine_config.container_images



### fn virtual_machine.virtual_machine_config.container_images.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.container_images.new` constructs a new object with attributes and blocks configured for the `container_images`
Terraform sub block.



**Args**:
  - `repository` (`string`): The path to the container image repository.
For example: gcr.io/{project_id}/{imageName}
  - `tag` (`string`): The tag of the container image. If not specified, this defaults to the latest tag. When `null`, the `tag` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `container_images` sub block.


## obj virtual_machine.virtual_machine_config.data_disk



### fn virtual_machine.virtual_machine_config.data_disk.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.new` constructs a new object with attributes and blocks configured for the `data_disk`
Terraform sub block.



**Args**:
  - `interface` (`string`): &#34;Specifies the disk interface to use for attaching this disk,
which is either SCSI or NVME. The default is SCSI. Persistent
disks must always use SCSI and the request will fail if you attempt
to attach a persistent disk in any other format than SCSI. Local SSDs
can use either NVME or SCSI. For performance characteristics of SCSI
over NVMe, see Local SSD performance. Valid values: * NVME * SCSI&#34;. When `null`, the `interface` field will be omitted from the resulting object.
  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE
or READ_ONLY. If not specified, the default is to attach
the disk in READ_WRITE mode. When `null`, the `mode` field will be omitted from the resulting object.
  - `source` (`string`): Specifies a valid partial or full URL to an existing
Persistent Disk resource. When `null`, the `source` field will be omitted from the resulting object.
  - `type` (`string`): Specifies the type of the disk, either SCRATCH or PERSISTENT.
If not specified, the default is PERSISTENT. When `null`, the `type` field will be omitted from the resulting object.
  - `initialize_params` (`list[obj]`): Input only. Specifies the parameters for a new disk that will
be created alongside the new instance. Use initialization
parameters to create boot disks or local SSDs attached to the
new instance. This property is mutually exclusive with the
source property; you can only define one or the other, but not
both. When `null`, the `initialize_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.initialize_params.new](#fn-virtual_machinevirtual_machinevirtual_machine_configinitialize_paramsnew) constructor.

**Returns**:
  - An attribute object that represents the `data_disk` sub block.


## obj virtual_machine.virtual_machine_config.data_disk.initialize_params



### fn virtual_machine.virtual_machine_config.data_disk.initialize_params.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.data_disk.initialize_params.new` constructs a new object with attributes and blocks configured for the `initialize_params`
Terraform sub block.



**Args**:
  - `description` (`string`): Provide this property when creating the disk. When `null`, the `description` field will be omitted from the resulting object.
  - `disk_name` (`string`): Specifies the disk name. If not specified, the default is
to use the name of the instance. If the disk with the
instance name exists already in the given zone/region, a
new name will be automatically generated. When `null`, the `disk_name` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): Specifies the size of the disk in base-2 GB. If not
specified, the disk will be the same size as the image
(usually 10GB). If specified, the size must be equal to
or larger than 10GB. Default 100 GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): The type of the boot disk attached to this runtime,
defaults to standard persistent disk. For valid values,
see &#39;https://cloud.google.com/vertex-ai/docs/workbench/
reference/rest/v1/projects.locations.runtimes#disktype&#39; When `null`, the `disk_type` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels to apply to this disk. These can be later modified
by the disks.setLabels method. This field is only
applicable for persistent disks. When `null`, the `labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `initialize_params` sub block.


## obj virtual_machine.virtual_machine_config.encryption_config



### fn virtual_machine.virtual_machine_config.encryption_config.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key` (`string`): The Cloud KMS resource identifier of the customer-managed
encryption key used to protect a resource, such as a disks.
It has the following format:
&#39;projects/{PROJECT_ID}/locations/{REGION}/keyRings/
{KEY_RING_NAME}/cryptoKeys/{KEY_NAME}&#39; When `null`, the `kms_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj virtual_machine.virtual_machine_config.shielded_instance_config



### fn virtual_machine.virtual_machine_config.shielded_instance_config.new

```ts
new()
```


`google.notebooks_runtime.virtual_machine.virtual_machine_config.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Defines whether the instance has integrity monitoring enabled.
Enables monitoring and attestation of the boot integrity of
the instance. The attestation is performed against the
integrity policy baseline. This baseline is initially derived
from the implicitly trusted boot image when the instance is
created. Enabled by default. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Defines whether the instance has Secure Boot enabled.Secure
Boot helps ensure that the system only runs authentic software
by verifying the digital signature of all boot components, and
halting the boot process if signature verification fails.
Disabled by default. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Defines whether the instance has the vTPM enabled. Enabled by
default. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.

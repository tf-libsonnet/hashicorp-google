---
permalink: /compute_instance_from_template/
---

# compute_instance_from_template

`compute_instance_from_template` represents the `google_compute_instance_from_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdvancedMachineFeatures()`](#fn-withadvancedmachinefeatures)
* [`fn withAdvancedMachineFeaturesMixin()`](#fn-withadvancedmachinefeaturesmixin)
* [`fn withAllowStoppingForUpdate()`](#fn-withallowstoppingforupdate)
* [`fn withAttachedDisk()`](#fn-withattacheddisk)
* [`fn withBootDisk()`](#fn-withbootdisk)
* [`fn withBootDiskMixin()`](#fn-withbootdiskmixin)
* [`fn withCanIpForward()`](#fn-withcanipforward)
* [`fn withConfidentialInstanceConfig()`](#fn-withconfidentialinstanceconfig)
* [`fn withConfidentialInstanceConfigMixin()`](#fn-withconfidentialinstanceconfigmixin)
* [`fn withDeletionProtection()`](#fn-withdeletionprotection)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDesiredStatus()`](#fn-withdesiredstatus)
* [`fn withEnableDisplay()`](#fn-withenabledisplay)
* [`fn withGuestAccelerator()`](#fn-withguestaccelerator)
* [`fn withHostname()`](#fn-withhostname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMachineType()`](#fn-withmachinetype)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withMetadataStartupScript()`](#fn-withmetadatastartupscript)
* [`fn withMinCpuPlatform()`](#fn-withmincpuplatform)
* [`fn withName()`](#fn-withname)
* [`fn withNetworkInterface()`](#fn-withnetworkinterface)
* [`fn withNetworkInterfaceMixin()`](#fn-withnetworkinterfacemixin)
* [`fn withNetworkPerformanceConfig()`](#fn-withnetworkperformanceconfig)
* [`fn withNetworkPerformanceConfigMixin()`](#fn-withnetworkperformanceconfigmixin)
* [`fn withParams()`](#fn-withparams)
* [`fn withParamsMixin()`](#fn-withparamsmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withReservationAffinity()`](#fn-withreservationaffinity)
* [`fn withReservationAffinityMixin()`](#fn-withreservationaffinitymixin)
* [`fn withResourcePolicies()`](#fn-withresourcepolicies)
* [`fn withScheduling()`](#fn-withscheduling)
* [`fn withSchedulingMixin()`](#fn-withschedulingmixin)
* [`fn withScratchDisk()`](#fn-withscratchdisk)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withShieldedInstanceConfig()`](#fn-withshieldedinstanceconfig)
* [`fn withShieldedInstanceConfigMixin()`](#fn-withshieldedinstanceconfigmixin)
* [`fn withSourceInstanceTemplate()`](#fn-withsourceinstancetemplate)
* [`fn withTags()`](#fn-withtags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj advanced_machine_features`](#obj-advanced_machine_features)
  * [`fn new()`](#fn-advanced_machine_featuresnew)
* [`obj boot_disk`](#obj-boot_disk)
  * [`fn new()`](#fn-boot_disknew)
  * [`obj boot_disk.initialize_params`](#obj-boot_diskinitialize_params)
    * [`fn new()`](#fn-boot_diskinitialize_paramsnew)
* [`obj confidential_instance_config`](#obj-confidential_instance_config)
  * [`fn new()`](#fn-confidential_instance_confignew)
* [`obj network_interface`](#obj-network_interface)
  * [`fn new()`](#fn-network_interfacenew)
  * [`obj network_interface.ipv6_access_config`](#obj-network_interfaceipv6_access_config)
    * [`fn new()`](#fn-network_interfaceipv6_access_confignew)
* [`obj network_performance_config`](#obj-network_performance_config)
  * [`fn new()`](#fn-network_performance_confignew)
* [`obj params`](#obj-params)
  * [`fn new()`](#fn-paramsnew)
* [`obj reservation_affinity`](#obj-reservation_affinity)
  * [`fn new()`](#fn-reservation_affinitynew)
  * [`obj reservation_affinity.specific_reservation`](#obj-reservation_affinityspecific_reservation)
    * [`fn new()`](#fn-reservation_affinityspecific_reservationnew)
* [`obj scheduling`](#obj-scheduling)
  * [`fn new()`](#fn-schedulingnew)
  * [`obj scheduling.node_affinities`](#obj-schedulingnode_affinities)
    * [`fn new()`](#fn-schedulingnode_affinitiesnew)
* [`obj shielded_instance_config`](#obj-shielded_instance_config)
  * [`fn new()`](#fn-shielded_instance_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_instance_from_template.new` injects a new `google_compute_instance_from_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_instance_from_template.new('some_id')

You can get the reference to the `id` field of the created `google.compute_instance_from_template` using the reference:

    $._ref.google_compute_instance_from_template.some_id.get('id')

This is the same as directly entering `"${ google_compute_instance_from_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `allow_stopping_for_update` (`bool`): If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail. When `null`, the `allow_stopping_for_update` field will be omitted from the resulting object.
  - `attached_disk` (`list`): List of disks attached to the instance When `null`, the `attached_disk` field will be omitted from the resulting object.
  - `can_ip_forward` (`bool`): Whether sending and receiving of packets with non-matching source or destination IPs is allowed. When `null`, the `can_ip_forward` field will be omitted from the resulting object.
  - `deletion_protection` (`bool`): Whether deletion protection is enabled on this instance. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `description` (`string`): A brief description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `desired_status` (`string`): Desired status of the instance. Either &#34;RUNNING&#34; or &#34;TERMINATED&#34;. When `null`, the `desired_status` field will be omitted from the resulting object.
  - `enable_display` (`bool`): Whether the instance has virtual displays enabled. When `null`, the `enable_display` field will be omitted from the resulting object.
  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.
  - `hostname` (`string`): A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created. When `null`, the `hostname` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs assigned to the instance. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to create. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `metadata` (`obj`): Metadata key/value pairs made available within the instance. When `null`, the `metadata` field will be omitted from the resulting object.
  - `metadata_startup_script` (`string`): Metadata startup scripts made available within the instance. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): The minimum CPU platform specified for the VM instance. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance. One of name or self_link must be provided.
  - `project` (`string`): The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `resource_policies` (`list`): A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.
  - `scratch_disk` (`list`): The scratch disks attached to the instance. When `null`, the `scratch_disk` field will be omitted from the resulting object.
  - `service_account` (`list`): The service account to attach to the instance. When `null`, the `service_account` field will be omitted from the resulting object.
  - `source_instance_template` (`string`): Name or self link of an instance template to create the instance based on.
  - `tags` (`list`): The list of tags attached to the instance. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.
  - `boot_disk` (`list[obj]`): The boot disk for the instance. When `null`, the `boot_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.boot_disk.new](#fn-boot_disknew) constructor.
  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.
  - `network_interface` (`list[obj]`): The networks attached to the instance. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.network_interface.new](#fn-network_interfacenew) constructor.
  - `network_performance_config` (`list[obj]`): Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. When `null`, the `network_performance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.network_performance_config.new](#fn-network_performance_confignew) constructor.
  - `params` (`list[obj]`): Stores additional params passed with the request, but not persisted as part of resource payload. When `null`, the `params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.params.new](#fn-paramsnew) constructor.
  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.reservation_affinity.new](#fn-reservation_affinitynew) constructor.
  - `scheduling` (`list[obj]`): The scheduling strategy being used by the instance. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.scheduling.new](#fn-schedulingnew) constructor.
  - `shielded_instance_config` (`list[obj]`): The shielded vm config being used by the instance. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_instance_from_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_from_template`
Terraform resource.

Unlike [google.compute_instance_from_template.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `allow_stopping_for_update` (`bool`): If true, allows Terraform to stop the instance to update its properties. If you try to update a property that requires stopping the instance without setting this field, the update will fail. When `null`, the `allow_stopping_for_update` field will be omitted from the resulting object.
  - `attached_disk` (`list`): List of disks attached to the instance When `null`, the `attached_disk` field will be omitted from the resulting object.
  - `can_ip_forward` (`bool`): Whether sending and receiving of packets with non-matching source or destination IPs is allowed. When `null`, the `can_ip_forward` field will be omitted from the resulting object.
  - `deletion_protection` (`bool`): Whether deletion protection is enabled on this instance. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `description` (`string`): A brief description of the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `desired_status` (`string`): Desired status of the instance. Either &#34;RUNNING&#34; or &#34;TERMINATED&#34;. When `null`, the `desired_status` field will be omitted from the resulting object.
  - `enable_display` (`bool`): Whether the instance has virtual displays enabled. When `null`, the `enable_display` field will be omitted from the resulting object.
  - `guest_accelerator` (`list`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` field will be omitted from the resulting object.
  - `hostname` (`string`): A custom hostname for the instance. Must be a fully qualified DNS name and RFC-1035-valid. Valid format is a series of labels 1-63 characters long matching the regular expression [a-z]([-a-z0-9]*[a-z0-9]), concatenated with periods. The entire hostname must not exceed 253 characters. Changing this forces a new resource to be created. When `null`, the `hostname` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs assigned to the instance. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to create. When `null`, the `machine_type` field will be omitted from the resulting object.
  - `metadata` (`obj`): Metadata key/value pairs made available within the instance. When `null`, the `metadata` field will be omitted from the resulting object.
  - `metadata_startup_script` (`string`): Metadata startup scripts made available within the instance. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): The minimum CPU platform specified for the VM instance. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance. One of name or self_link must be provided.
  - `project` (`string`): The ID of the project in which the resource belongs. If self_link is provided, this value is ignored. If neither self_link nor project are provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `resource_policies` (`list`): A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.
  - `scratch_disk` (`list`): The scratch disks attached to the instance. When `null`, the `scratch_disk` field will be omitted from the resulting object.
  - `service_account` (`list`): The service account to attach to the instance. When `null`, the `service_account` field will be omitted from the resulting object.
  - `source_instance_template` (`string`): Name or self link of an instance template to create the instance based on.
  - `tags` (`list`): The list of tags attached to the instance. When `null`, the `tags` field will be omitted from the resulting object.
  - `zone` (`string`): The zone of the instance. If self_link is provided, this value is ignored. If neither self_link nor zone are provided, the provider zone is used. When `null`, the `zone` field will be omitted from the resulting object.
  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.
  - `boot_disk` (`list[obj]`): The boot disk for the instance. When `null`, the `boot_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.boot_disk.new](#fn-boot_disknew) constructor.
  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance.  on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.
  - `network_interface` (`list[obj]`): The networks attached to the instance. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.network_interface.new](#fn-network_interfacenew) constructor.
  - `network_performance_config` (`list[obj]`): Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. When `null`, the `network_performance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.network_performance_config.new](#fn-network_performance_confignew) constructor.
  - `params` (`list[obj]`): Stores additional params passed with the request, but not persisted as part of resource payload. When `null`, the `params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.params.new](#fn-paramsnew) constructor.
  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.reservation_affinity.new](#fn-reservation_affinitynew) constructor.
  - `scheduling` (`list[obj]`): The scheduling strategy being used by the instance. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.scheduling.new](#fn-schedulingnew) constructor.
  - `shielded_instance_config` (`list[obj]`): The shielded vm config being used by the instance. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_instance_from_template` resource into the root Terraform configuration.


### fn withAdvancedMachineFeatures

```ts
withAdvancedMachineFeatures()
```

`google.list[obj].withAdvancedMachineFeatures` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advanced_machine_features field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdvancedMachineFeaturesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advanced_machine_features` field.


### fn withAdvancedMachineFeaturesMixin

```ts
withAdvancedMachineFeaturesMixin()
```

`google.list[obj].withAdvancedMachineFeaturesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the advanced_machine_features field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdvancedMachineFeatures](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `advanced_machine_features` field.


### fn withAllowStoppingForUpdate

```ts
withAllowStoppingForUpdate()
```

`google.bool.withAllowStoppingForUpdate` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the allow_stopping_for_update field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `allow_stopping_for_update` field.


### fn withAttachedDisk

```ts
withAttachedDisk()
```

`google.list.withAttachedDisk` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the attached_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `attached_disk` field.


### fn withBootDisk

```ts
withBootDisk()
```

`google.list[obj].withBootDisk` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the boot_disk field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBootDiskMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `boot_disk` field.


### fn withBootDiskMixin

```ts
withBootDiskMixin()
```

`google.list[obj].withBootDiskMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the boot_disk field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBootDisk](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `boot_disk` field.


### fn withCanIpForward

```ts
withCanIpForward()
```

`google.bool.withCanIpForward` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the can_ip_forward field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `can_ip_forward` field.


### fn withConfidentialInstanceConfig

```ts
withConfidentialInstanceConfig()
```

`google.list[obj].withConfidentialInstanceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the confidential_instance_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfidentialInstanceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `confidential_instance_config` field.


### fn withConfidentialInstanceConfigMixin

```ts
withConfidentialInstanceConfigMixin()
```

`google.list[obj].withConfidentialInstanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the confidential_instance_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfidentialInstanceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `confidential_instance_config` field.


### fn withDeletionProtection

```ts
withDeletionProtection()
```

`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the deletion_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `deletion_protection` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDesiredStatus

```ts
withDesiredStatus()
```

`google.string.withDesiredStatus` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the desired_status field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `desired_status` field.


### fn withEnableDisplay

```ts
withEnableDisplay()
```

`google.bool.withEnableDisplay` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_display field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_display` field.


### fn withGuestAccelerator

```ts
withGuestAccelerator()
```

`google.list.withGuestAccelerator` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the guest_accelerator field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `guest_accelerator` field.


### fn withHostname

```ts
withHostname()
```

`google.string.withHostname` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the hostname field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `hostname` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


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


### fn withMetadataStartupScript

```ts
withMetadataStartupScript()
```

`google.string.withMetadataStartupScript` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the metadata_startup_script field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `metadata_startup_script` field.


### fn withMinCpuPlatform

```ts
withMinCpuPlatform()
```

`google.string.withMinCpuPlatform` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the min_cpu_platform field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `min_cpu_platform` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetworkInterface

```ts
withNetworkInterface()
```

`google.list[obj].withNetworkInterface` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_interface field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkInterfaceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_interface` field.


### fn withNetworkInterfaceMixin

```ts
withNetworkInterfaceMixin()
```

`google.list[obj].withNetworkInterfaceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_interface field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkInterface](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_interface` field.


### fn withNetworkPerformanceConfig

```ts
withNetworkPerformanceConfig()
```

`google.list[obj].withNetworkPerformanceConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_performance_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkPerformanceConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_performance_config` field.


### fn withNetworkPerformanceConfigMixin

```ts
withNetworkPerformanceConfigMixin()
```

`google.list[obj].withNetworkPerformanceConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the network_performance_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworkPerformanceConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `network_performance_config` field.


### fn withParams

```ts
withParams()
```

`google.list[obj].withParams` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the params field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withParamsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `params` field.


### fn withParamsMixin

```ts
withParamsMixin()
```

`google.list[obj].withParamsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the params field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withParams](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `params` field.


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


### fn withResourcePolicies

```ts
withResourcePolicies()
```

`google.list.withResourcePolicies` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the resource_policies field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `resource_policies` field.


### fn withScheduling

```ts
withScheduling()
```

`google.list[obj].withScheduling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSchedulingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling` field.


### fn withSchedulingMixin

```ts
withSchedulingMixin()
```

`google.list[obj].withSchedulingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the scheduling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withScheduling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `scheduling` field.


### fn withScratchDisk

```ts
withScratchDisk()
```

`google.list.withScratchDisk` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the scratch_disk field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `scratch_disk` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.list.withServiceAccount` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `service_account` field.


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


### fn withSourceInstanceTemplate

```ts
withSourceInstanceTemplate()
```

`google.string.withSourceInstanceTemplate` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the source_instance_template field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `source_instance_template` field.


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


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj advanced_machine_features



### fn advanced_machine_features.new

```ts
new()
```


`google.compute_instance_from_template.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`
Terraform sub block.



**Args**:
  - `enable_nested_virtualization` (`bool`): Whether to enable nested virtualization or not. When `null`, the `enable_nested_virtualization` field will be omitted from the resulting object.
  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. When `null`, the `threads_per_core` field will be omitted from the resulting object.
  - `visible_core_count` (`number`): The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\&#39;s nominal CPU count and the underlying platform\&#39;s SMT width. When `null`, the `visible_core_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `advanced_machine_features` sub block.


## obj boot_disk



### fn boot_disk.new

```ts
new()
```


`google.compute_instance_from_template.boot_disk.new` constructs a new object with attributes and blocks configured for the `boot_disk`
Terraform sub block.



**Args**:
  - `auto_delete` (`bool`): Whether the disk will be auto-deleted when the instance is deleted. When `null`, the `auto_delete` field will be omitted from the resulting object.
  - `device_name` (`string`): Name with which attached disk will be accessible under /dev/disk/by-id/ When `null`, the `device_name` field will be omitted from the resulting object.
  - `disk_encryption_key_raw` (`string`): A 256-bit customer-supplied encryption key, encoded in RFC 4648 base64 to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. When `null`, the `disk_encryption_key_raw` field will be omitted from the resulting object.
  - `kms_key_self_link` (`string`): The self_link of the encryption key that is stored in Google Cloud KMS to encrypt this disk. Only one of kms_key_self_link and disk_encryption_key_raw may be set. When `null`, the `kms_key_self_link` field will be omitted from the resulting object.
  - `mode` (`string`): Read/write mode for the disk. One of &#34;READ_ONLY&#34; or &#34;READ_WRITE&#34;. When `null`, the `mode` field will be omitted from the resulting object.
  - `source` (`string`): The name or self_link of the disk attached to this instance. When `null`, the `source` field will be omitted from the resulting object.
  - `initialize_params` (`list[obj]`): Parameters with which a disk was created alongside the instance. When `null`, the `initialize_params` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.boot_disk.initialize_params.new](#fn-boot_diskinitialize_paramsnew) constructor.

**Returns**:
  - An attribute object that represents the `boot_disk` sub block.


## obj boot_disk.initialize_params



### fn boot_disk.initialize_params.new

```ts
new()
```


`google.compute_instance_from_template.boot_disk.initialize_params.new` constructs a new object with attributes and blocks configured for the `initialize_params`
Terraform sub block.



**Args**:
  - `image` (`string`): The image from which this disk was initialised. When `null`, the `image` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs assigned to the disk. When `null`, the `labels` field will be omitted from the resulting object.
  - `resource_manager_tags` (`obj`): A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT &amp; PATCH) when empty. When `null`, the `resource_manager_tags` field will be omitted from the resulting object.
  - `size` (`number`): The size of the image in gigabytes. When `null`, the `size` field will be omitted from the resulting object.
  - `type` (`string`): The Google Compute Engine disk type. Such as pd-standard, pd-ssd or pd-balanced. When `null`, the `type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `initialize_params` sub block.


## obj confidential_instance_config



### fn confidential_instance_config.new

```ts
new()
```


`google.compute_instance_from_template.confidential_instance_config.new` constructs a new object with attributes and blocks configured for the `confidential_instance_config`
Terraform sub block.



**Args**:
  - `enable_confidential_compute` (`bool`): Defines whether the instance should have confidential compute enabled.

**Returns**:
  - An attribute object that represents the `confidential_instance_config` sub block.


## obj network_interface



### fn network_interface.new

```ts
new()
```


`google.compute_instance_from_template.network_interface.new` constructs a new object with attributes and blocks configured for the `network_interface`
Terraform sub block.



**Args**:
  - `access_config` (`list`): Access configurations, i.e. IPs via which this instance can be accessed via the Internet. When `null`, the `access_config` field will be omitted from the resulting object.
  - `alias_ip_range` (`list`): An array of alias IP ranges for this network interface. When `null`, the `alias_ip_range` field will be omitted from the resulting object.
  - `network` (`string`): The name or self_link of the network attached to this interface. When `null`, the `network` field will be omitted from the resulting object.
  - `network_ip` (`string`): The private IP address assigned to the instance. When `null`, the `network_ip` field will be omitted from the resulting object.
  - `nic_type` (`string`): The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET When `null`, the `nic_type` field will be omitted from the resulting object.
  - `queue_count` (`number`): The networking queue count that&#39;s specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. When `null`, the `queue_count` field will be omitted from the resulting object.
  - `stack_type` (`string`): The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. When `null`, the `stack_type` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name or self_link of the subnetwork attached to this interface. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `subnetwork_project` (`string`): The project in which the subnetwork belongs. When `null`, the `subnetwork_project` field will be omitted from the resulting object.
  - `ipv6_access_config` (`list[obj]`): An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. When `null`, the `ipv6_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.network_interface.ipv6_access_config.new](#fn-network_interfaceipv6_access_confignew) constructor.

**Returns**:
  - An attribute object that represents the `network_interface` sub block.


## obj network_interface.ipv6_access_config



### fn network_interface.ipv6_access_config.new

```ts
new()
```


`google.compute_instance_from_template.network_interface.ipv6_access_config.new` constructs a new object with attributes and blocks configured for the `ipv6_access_config`
Terraform sub block.



**Args**:
  - `network_tier` (`string`): The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6
  - `public_ptr_domain_name` (`string`): The domain name to be used when creating DNSv6 records for the external IPv6 ranges. When `null`, the `public_ptr_domain_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `ipv6_access_config` sub block.


## obj network_performance_config



### fn network_performance_config.new

```ts
new()
```


`google.compute_instance_from_template.network_performance_config.new` constructs a new object with attributes and blocks configured for the `network_performance_config`
Terraform sub block.



**Args**:
  - `total_egress_bandwidth_tier` (`string`): The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT

**Returns**:
  - An attribute object that represents the `network_performance_config` sub block.


## obj params



### fn params.new

```ts
new()
```


`google.compute_instance_from_template.params.new` constructs a new object with attributes and blocks configured for the `params`
Terraform sub block.



**Args**:
  - `resource_manager_tags` (`obj`): A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT &amp; PATCH) when empty. When `null`, the `resource_manager_tags` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `params` sub block.


## obj reservation_affinity



### fn reservation_affinity.new

```ts
new()
```


`google.compute_instance_from_template.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `type` (`string`): The type of reservation from which this instance can consume resources.
  - `specific_reservation` (`list[obj]`): Specifies the label selector for the reservation to use. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.reservation_affinity.specific_reservation.new](#fn-reservation_affinityspecific_reservationnew) constructor.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj reservation_affinity.specific_reservation



### fn reservation_affinity.specific_reservation.new

```ts
new()
```


`google.compute_instance_from_template.reservation_affinity.specific_reservation.new` constructs a new object with attributes and blocks configured for the `specific_reservation`
Terraform sub block.



**Args**:
  - `key` (`string`): Corresponds to the label key of a reservation resource. To target a SPECIFIC_RESERVATION by name, specify compute.googleapis.com/reservation-name as the key and specify the name of your reservation as the only value.
  - `values` (`list`): Corresponds to the label values of a reservation resource.

**Returns**:
  - An attribute object that represents the `specific_reservation` sub block.


## obj scheduling



### fn scheduling.new

```ts
new()
```


`google.compute_instance_from_template.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`
Terraform sub block.



**Args**:
  - `automatic_restart` (`bool`): Specifies if the instance should be restarted if it was terminated by Compute Engine (not a user). When `null`, the `automatic_restart` field will be omitted from the resulting object.
  - `instance_termination_action` (`string`): Specifies the action GCE should take when SPOT VM is preempted. When `null`, the `instance_termination_action` field will be omitted from the resulting object.
  - `min_node_cpus` (`number`): Set the `min_node_cpus` field on the resulting object. When `null`, the `min_node_cpus` field will be omitted from the resulting object.
  - `on_host_maintenance` (`string`): Describes maintenance behavior for the instance. One of MIGRATE or TERMINATE, When `null`, the `on_host_maintenance` field will be omitted from the resulting object.
  - `preemptible` (`bool`): Whether the instance is preemptible. When `null`, the `preemptible` field will be omitted from the resulting object.
  - `provisioning_model` (`string`): Whether the instance is spot. If this is set as SPOT. When `null`, the `provisioning_model` field will be omitted from the resulting object.
  - `node_affinities` (`list[obj]`): Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. When `null`, the `node_affinities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_from_template.scheduling.node_affinities.new](#fn-schedulingnode_affinitiesnew) constructor.

**Returns**:
  - An attribute object that represents the `scheduling` sub block.


## obj scheduling.node_affinities



### fn scheduling.node_affinities.new

```ts
new()
```


`google.compute_instance_from_template.scheduling.node_affinities.new` constructs a new object with attributes and blocks configured for the `node_affinities`
Terraform sub block.



**Args**:
  - `key` (`string`): Set the `key` field on the resulting object.
  - `operator` (`string`): Set the `operator` field on the resulting object.
  - `values` (`list`): Set the `values` field on the resulting object.

**Returns**:
  - An attribute object that represents the `node_affinities` sub block.


## obj shielded_instance_config



### fn shielded_instance_config.new

```ts
new()
```


`google.compute_instance_from_template.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Whether integrity monitoring is enabled for the instance. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Whether secure boot is enabled for the instance. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Whether the instance uses vTPM. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_instance_from_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

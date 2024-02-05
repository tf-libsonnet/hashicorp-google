---
permalink: /compute_region_instance_template/
---

# compute_region_instance_template

`compute_region_instance_template` represents the `google_compute_region_instance_template` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdvancedMachineFeatures()`](#fn-withadvancedmachinefeatures)
* [`fn withAdvancedMachineFeaturesMixin()`](#fn-withadvancedmachinefeaturesmixin)
* [`fn withCanIpForward()`](#fn-withcanipforward)
* [`fn withConfidentialInstanceConfig()`](#fn-withconfidentialinstanceconfig)
* [`fn withConfidentialInstanceConfigMixin()`](#fn-withconfidentialinstanceconfigmixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisk()`](#fn-withdisk)
* [`fn withDiskMixin()`](#fn-withdiskmixin)
* [`fn withGuestAccelerator()`](#fn-withguestaccelerator)
* [`fn withGuestAcceleratorMixin()`](#fn-withguestacceleratormixin)
* [`fn withInstanceDescription()`](#fn-withinstancedescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMachineType()`](#fn-withmachinetype)
* [`fn withMetadata()`](#fn-withmetadata)
* [`fn withMetadataStartupScript()`](#fn-withmetadatastartupscript)
* [`fn withMinCpuPlatform()`](#fn-withmincpuplatform)
* [`fn withName()`](#fn-withname)
* [`fn withNamePrefix()`](#fn-withnameprefix)
* [`fn withNetworkInterface()`](#fn-withnetworkinterface)
* [`fn withNetworkInterfaceMixin()`](#fn-withnetworkinterfacemixin)
* [`fn withNetworkPerformanceConfig()`](#fn-withnetworkperformanceconfig)
* [`fn withNetworkPerformanceConfigMixin()`](#fn-withnetworkperformanceconfigmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReservationAffinity()`](#fn-withreservationaffinity)
* [`fn withReservationAffinityMixin()`](#fn-withreservationaffinitymixin)
* [`fn withResourceManagerTags()`](#fn-withresourcemanagertags)
* [`fn withResourcePolicies()`](#fn-withresourcepolicies)
* [`fn withScheduling()`](#fn-withscheduling)
* [`fn withSchedulingMixin()`](#fn-withschedulingmixin)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withServiceAccountMixin()`](#fn-withserviceaccountmixin)
* [`fn withShieldedInstanceConfig()`](#fn-withshieldedinstanceconfig)
* [`fn withShieldedInstanceConfigMixin()`](#fn-withshieldedinstanceconfigmixin)
* [`fn withTags()`](#fn-withtags)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj advanced_machine_features`](#obj-advanced_machine_features)
  * [`fn new()`](#fn-advanced_machine_featuresnew)
* [`obj confidential_instance_config`](#obj-confidential_instance_config)
  * [`fn new()`](#fn-confidential_instance_confignew)
* [`obj disk`](#obj-disk)
  * [`fn new()`](#fn-disknew)
  * [`obj disk.disk_encryption_key`](#obj-diskdisk_encryption_key)
    * [`fn new()`](#fn-diskdisk_encryption_keynew)
  * [`obj disk.source_image_encryption_key`](#obj-disksource_image_encryption_key)
    * [`fn new()`](#fn-disksource_image_encryption_keynew)
  * [`obj disk.source_snapshot_encryption_key`](#obj-disksource_snapshot_encryption_key)
    * [`fn new()`](#fn-disksource_snapshot_encryption_keynew)
* [`obj guest_accelerator`](#obj-guest_accelerator)
  * [`fn new()`](#fn-guest_acceleratornew)
* [`obj network_interface`](#obj-network_interface)
  * [`fn new()`](#fn-network_interfacenew)
  * [`obj network_interface.access_config`](#obj-network_interfaceaccess_config)
    * [`fn new()`](#fn-network_interfaceaccess_confignew)
  * [`obj network_interface.alias_ip_range`](#obj-network_interfacealias_ip_range)
    * [`fn new()`](#fn-network_interfacealias_ip_rangenew)
  * [`obj network_interface.ipv6_access_config`](#obj-network_interfaceipv6_access_config)
    * [`fn new()`](#fn-network_interfaceipv6_access_confignew)
* [`obj network_performance_config`](#obj-network_performance_config)
  * [`fn new()`](#fn-network_performance_confignew)
* [`obj reservation_affinity`](#obj-reservation_affinity)
  * [`fn new()`](#fn-reservation_affinitynew)
  * [`obj reservation_affinity.specific_reservation`](#obj-reservation_affinityspecific_reservation)
    * [`fn new()`](#fn-reservation_affinityspecific_reservationnew)
* [`obj scheduling`](#obj-scheduling)
  * [`fn new()`](#fn-schedulingnew)
  * [`obj scheduling.local_ssd_recovery_timeout`](#obj-schedulinglocal_ssd_recovery_timeout)
    * [`fn new()`](#fn-schedulinglocal_ssd_recovery_timeoutnew)
  * [`obj scheduling.node_affinities`](#obj-schedulingnode_affinities)
    * [`fn new()`](#fn-schedulingnode_affinitiesnew)
* [`obj service_account`](#obj-service_account)
  * [`fn new()`](#fn-service_accountnew)
* [`obj shielded_instance_config`](#obj-shielded_instance_config)
  * [`fn new()`](#fn-shielded_instance_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_region_instance_template.new` injects a new `google_compute_region_instance_template` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_region_instance_template.new('some_id')

You can get the reference to the `id` field of the created `google.compute_region_instance_template` using the reference:

    $._ref.google_compute_region_instance_template.some_id.get('id')

This is the same as directly entering `"${ google_compute_region_instance_template.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `can_ip_forward` (`bool`): Whether to allow sending and receiving of packets with non-matching source or destination IPs. This defaults to false. When `null`, the `can_ip_forward` field will be omitted from the resulting object.
  - `description` (`string`): A brief description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `instance_description` (`string`): A description of the instance. When `null`, the `instance_description` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to instances created from this template,
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  - `metadata` (`obj`): Metadata key/value pairs to make available from within instances created from this template. When `null`, the `metadata` field will be omitted from the resulting object.
  - `metadata_startup_script` (`string`): An alternative to using the startup-script metadata key, mostly to match the compute_instance resource. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell or Intel Skylake. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the instance template is located. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `resource_manager_tags` (`obj`): A map of resource manager tags.
				Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT &amp; PATCH) when empty. When `null`, the `resource_manager_tags` field will be omitted from the resulting object.
  - `resource_policies` (`list`): A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.
  - `tags` (`list`): Tags to attach to the instance. When `null`, the `tags` field will be omitted from the resulting object.
  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.
  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance. on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.
  - `disk` (`list[obj]`): Disks to attach to instances created from this template. This can be specified multiple times for multiple disks. When `null`, the `disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.disk.new](#fn-disknew) constructor.
  - `guest_accelerator` (`list[obj]`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.guest_accelerator.new](#fn-guest_acceleratornew) constructor.
  - `network_interface` (`list[obj]`): Networks to attach to instances created from this template. This can be specified multiple times for multiple networks. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_interface.new](#fn-network_interfacenew) constructor.
  - `network_performance_config` (`list[obj]`): Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. When `null`, the `network_performance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_performance_config.new](#fn-network_performance_confignew) constructor.
  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.reservation_affinity.new](#fn-reservation_affinitynew) constructor.
  - `scheduling` (`list[obj]`): The scheduling strategy to use. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.scheduling.new](#fn-schedulingnew) constructor.
  - `service_account` (`list[obj]`): Service account to attach to the instance. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.service_account.new](#fn-service_accountnew) constructor.
  - `shielded_instance_config` (`list[obj]`): Enable Shielded VM on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Note: shielded_instance_config can only be used with boot images with shielded vm support. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_region_instance_template.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_instance_template`
Terraform resource.

Unlike [google.compute_region_instance_template.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `can_ip_forward` (`bool`): Whether to allow sending and receiving of packets with non-matching source or destination IPs. This defaults to false. When `null`, the `can_ip_forward` field will be omitted from the resulting object.
  - `description` (`string`): A brief description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `instance_description` (`string`): A description of the instance. When `null`, the `instance_description` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to instances created from this template,
				
				**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
				Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `machine_type` (`string`): The machine type to create. To create a machine with a custom type (such as extended memory), format the value like custom-VCPUS-MEM_IN_MB like custom-6-20480 for 6 vCPU and 20GB of RAM.
  - `metadata` (`obj`): Metadata key/value pairs to make available from within instances created from this template. When `null`, the `metadata` field will be omitted from the resulting object.
  - `metadata_startup_script` (`string`): An alternative to using the startup-script metadata key, mostly to match the compute_instance resource. This replaces the startup-script metadata key on the created instance and thus the two mechanisms are not allowed to be used simultaneously. When `null`, the `metadata_startup_script` field will be omitted from the resulting object.
  - `min_cpu_platform` (`string`): Specifies a minimum CPU platform. Applicable values are the friendly names of CPU platforms, such as Intel Haswell or Intel Skylake. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `name` (`string`): The name of the instance template. If you leave this blank, Terraform will auto-generate a unique name. When `null`, the `name` field will be omitted from the resulting object.
  - `name_prefix` (`string`): Creates a unique name beginning with the specified prefix. Conflicts with name. When `null`, the `name_prefix` field will be omitted from the resulting object.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): The region in which the instance template is located. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `resource_manager_tags` (`obj`): A map of resource manager tags.
				Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT &amp; PATCH) when empty. When `null`, the `resource_manager_tags` field will be omitted from the resulting object.
  - `resource_policies` (`list`): A list of self_links of resource policies to attach to the instance. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.
  - `tags` (`list`): Tags to attach to the instance. When `null`, the `tags` field will be omitted from the resulting object.
  - `advanced_machine_features` (`list[obj]`): Controls for advanced machine-related behavior features. When `null`, the `advanced_machine_features` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.advanced_machine_features.new](#fn-advanced_machine_featuresnew) constructor.
  - `confidential_instance_config` (`list[obj]`): The Confidential VM config being used by the instance. on_host_maintenance has to be set to TERMINATE or this will fail to create. When `null`, the `confidential_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.confidential_instance_config.new](#fn-confidential_instance_confignew) constructor.
  - `disk` (`list[obj]`): Disks to attach to instances created from this template. This can be specified multiple times for multiple disks. When `null`, the `disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.disk.new](#fn-disknew) constructor.
  - `guest_accelerator` (`list[obj]`): List of the type and count of accelerator cards attached to the instance. When `null`, the `guest_accelerator` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.guest_accelerator.new](#fn-guest_acceleratornew) constructor.
  - `network_interface` (`list[obj]`): Networks to attach to instances created from this template. This can be specified multiple times for multiple networks. When `null`, the `network_interface` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_interface.new](#fn-network_interfacenew) constructor.
  - `network_performance_config` (`list[obj]`): Configures network performance settings for the instance. If not specified, the instance will be created with its default network performance configuration. When `null`, the `network_performance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_performance_config.new](#fn-network_performance_confignew) constructor.
  - `reservation_affinity` (`list[obj]`): Specifies the reservations that this instance can consume from. When `null`, the `reservation_affinity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.reservation_affinity.new](#fn-reservation_affinitynew) constructor.
  - `scheduling` (`list[obj]`): The scheduling strategy to use. When `null`, the `scheduling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.scheduling.new](#fn-schedulingnew) constructor.
  - `service_account` (`list[obj]`): Service account to attach to the instance. When `null`, the `service_account` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.service_account.new](#fn-service_accountnew) constructor.
  - `shielded_instance_config` (`list[obj]`): Enable Shielded VM on this instance. Shielded VM provides verifiable integrity to prevent against malware and rootkits. Defaults to disabled. Note: shielded_instance_config can only be used with boot images with shielded vm support. When `null`, the `shielded_instance_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.shielded_instance_config.new](#fn-shielded_instance_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_instance_template` resource into the root Terraform configuration.


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


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisk

```ts
withDisk()
```

`google.list[obj].withDisk` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the disk field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDiskMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `disk` field.


### fn withDiskMixin

```ts
withDiskMixin()
```

`google.list[obj].withDiskMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the disk field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDisk](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `disk` field.


### fn withGuestAccelerator

```ts
withGuestAccelerator()
```

`google.list[obj].withGuestAccelerator` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the guest_accelerator field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGuestAcceleratorMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `guest_accelerator` field.


### fn withGuestAcceleratorMixin

```ts
withGuestAcceleratorMixin()
```

`google.list[obj].withGuestAcceleratorMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the guest_accelerator field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGuestAccelerator](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `guest_accelerator` field.


### fn withInstanceDescription

```ts
withInstanceDescription()
```

`google.string.withInstanceDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_description` field.


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


### fn withNamePrefix

```ts
withNamePrefix()
```

`google.string.withNamePrefix` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name_prefix field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name_prefix` field.


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


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


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


### fn withResourceManagerTags

```ts
withResourceManagerTags()
```

`google.obj.withResourceManagerTags` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the resource_manager_tags field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `resource_manager_tags` field.


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


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.list[obj].withServiceAccount` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_account field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withServiceAccountMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_account` field.


### fn withServiceAccountMixin

```ts
withServiceAccountMixin()
```

`google.list[obj].withServiceAccountMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the service_account field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withServiceAccount](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `service_account` field.


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


## obj advanced_machine_features



### fn advanced_machine_features.new

```ts
new()
```


`google.compute_region_instance_template.advanced_machine_features.new` constructs a new object with attributes and blocks configured for the `advanced_machine_features`
Terraform sub block.



**Args**:
  - `enable_nested_virtualization` (`bool`): Whether to enable nested virtualization or not. When `null`, the `enable_nested_virtualization` field will be omitted from the resulting object.
  - `threads_per_core` (`number`): The number of threads per physical core. To disable simultaneous multithreading (SMT) set this to 1. If unset, the maximum number of threads supported per core by the underlying processor is assumed. When `null`, the `threads_per_core` field will be omitted from the resulting object.
  - `visible_core_count` (`number`): The number of physical cores to expose to an instance. Multiply by the number of threads per core to compute the total number of virtual CPUs to expose to the instance. If unset, the number of cores is inferred from the instance\&#39;s nominal CPU count and the underlying platform\&#39;s SMT width. When `null`, the `visible_core_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `advanced_machine_features` sub block.


## obj confidential_instance_config



### fn confidential_instance_config.new

```ts
new()
```


`google.compute_region_instance_template.confidential_instance_config.new` constructs a new object with attributes and blocks configured for the `confidential_instance_config`
Terraform sub block.



**Args**:
  - `enable_confidential_compute` (`bool`): Defines whether the instance should have confidential compute enabled.

**Returns**:
  - An attribute object that represents the `confidential_instance_config` sub block.


## obj disk



### fn disk.new

```ts
new()
```


`google.compute_region_instance_template.disk.new` constructs a new object with attributes and blocks configured for the `disk`
Terraform sub block.



**Args**:
  - `auto_delete` (`bool`): Whether or not the disk should be auto-deleted. This defaults to true. When `null`, the `auto_delete` field will be omitted from the resulting object.
  - `boot` (`bool`): Indicates that this is a boot disk. When `null`, the `boot` field will be omitted from the resulting object.
  - `device_name` (`string`): A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance. If not specified, the server chooses a default device name to apply to this disk. When `null`, the `device_name` field will be omitted from the resulting object.
  - `disk_name` (`string`): Name of the disk. When not provided, this defaults to the name of the instance. When `null`, the `disk_name` field will be omitted from the resulting object.
  - `disk_size_gb` (`number`): The size of the image in gigabytes. If not specified, it will inherit the size of its base image. For SCRATCH disks, the size must be one of 375 or 3000 GB, with a default of 375 GB. When `null`, the `disk_size_gb` field will be omitted from the resulting object.
  - `disk_type` (`string`): The Google Compute Engine disk type. Such as &#34;pd-ssd&#34;, &#34;local-ssd&#34;, &#34;pd-balanced&#34; or &#34;pd-standard&#34;. When `null`, the `disk_type` field will be omitted from the resulting object.
  - `interface` (`string`): Specifies the disk interface to use for attaching this disk. When `null`, the `interface` field will be omitted from the resulting object.
  - `labels` (`obj`): A set of key/value label pairs to assign to disks, When `null`, the `labels` field will be omitted from the resulting object.
  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If you are attaching or creating a boot disk, this must read-write mode. When `null`, the `mode` field will be omitted from the resulting object.
  - `provisioned_iops` (`number`): Indicates how many IOPS to provision for the disk. This sets the number of I/O operations per second that the disk can handle. Values must be between 10,000 and 120,000. For more details, see the [Extreme persistent disk documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk). When `null`, the `provisioned_iops` field will be omitted from the resulting object.
  - `resource_manager_tags` (`obj`): A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored (both PUT &amp; PATCH) when empty. When `null`, the `resource_manager_tags` field will be omitted from the resulting object.
  - `resource_policies` (`list`): A list (short name or id) of resource policies to attach to this disk. Currently a max of 1 resource policy is supported. When `null`, the `resource_policies` field will be omitted from the resulting object.
  - `source` (`string`): The name (not self_link) of the disk (such as those managed by google_compute_disk) to attach. ~&gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD. When `null`, the `source` field will be omitted from the resulting object.
  - `source_image` (`string`): The image from which to initialize this disk. This can be one of: the image&#39;s self_link, projects/{project}/global/images/{image}, projects/{project}/global/images/family/{family}, global/images/{image}, global/images/family/{family}, family/{family}, {project}/{family}, {project}/{image}, {family}, or {image}. ~&gt; Note: Either source or source_image is required when creating a new instance except for when creating a local SSD. When `null`, the `source_image` field will be omitted from the resulting object.
  - `source_snapshot` (`string`): The source snapshot to create this disk. When creating
a new instance, one of initializeParams.sourceSnapshot,
initializeParams.sourceImage, or disks.source is
required except for local SSD. When `null`, the `source_snapshot` field will be omitted from the resulting object.
  - `type` (`string`): The type of Google Compute Engine disk, can be either &#34;SCRATCH&#34; or &#34;PERSISTENT&#34;. When `null`, the `type` field will be omitted from the resulting object.
  - `disk_encryption_key` (`list[obj]`): Encrypts or decrypts a disk using a customer-supplied encryption key. When `null`, the `disk_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.disk.disk_encryption_key.new](#fn-diskdisk_encryption_keynew) constructor.
  - `source_image_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source
image. Required if the source image is protected by a
customer-supplied encryption key.

Instance templates do not store customer-supplied
encryption keys, so you cannot create disks for
instances in a managed instance group if the source
images are encrypted with your own keys. When `null`, the `source_image_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.disk.source_image_encryption_key.new](#fn-disksource_image_encryption_keynew) constructor.
  - `source_snapshot_encryption_key` (`list[obj]`): The customer-supplied encryption key of the source snapshot. When `null`, the `source_snapshot_encryption_key` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.disk.source_snapshot_encryption_key.new](#fn-disksource_snapshot_encryption_keynew) constructor.

**Returns**:
  - An attribute object that represents the `disk` sub block.


## obj disk.disk_encryption_key



### fn disk.disk_encryption_key.new

```ts
new()
```


`google.compute_region_instance_template.disk.disk_encryption_key.new` constructs a new object with attributes and blocks configured for the `disk_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in Google Cloud KMS.

**Returns**:
  - An attribute object that represents the `disk_encryption_key` sub block.


## obj disk.source_image_encryption_key



### fn disk.source_image_encryption_key.new

```ts
new()
```


`google.compute_region_instance_template.disk.source_image_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_image_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in
Google Cloud KMS.
  - `kms_key_service_account` (`string`): The service account being used for the encryption
request for the given KMS key. If absent, the Compute
Engine default service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source_image_encryption_key` sub block.


## obj disk.source_snapshot_encryption_key



### fn disk.source_snapshot_encryption_key.new

```ts
new()
```


`google.compute_region_instance_template.disk.source_snapshot_encryption_key.new` constructs a new object with attributes and blocks configured for the `source_snapshot_encryption_key`
Terraform sub block.



**Args**:
  - `kms_key_self_link` (`string`): The self link of the encryption key that is stored in
Google Cloud KMS.
  - `kms_key_service_account` (`string`): The service account being used for the encryption
request for the given KMS key. If absent, the Compute
Engine default service account is used. When `null`, the `kms_key_service_account` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source_snapshot_encryption_key` sub block.


## obj guest_accelerator



### fn guest_accelerator.new

```ts
new()
```


`google.compute_region_instance_template.guest_accelerator.new` constructs a new object with attributes and blocks configured for the `guest_accelerator`
Terraform sub block.



**Args**:
  - `count` (`number`): The number of the guest accelerator cards exposed to this instance.
  - `type` (`string`): The accelerator type resource to expose to this instance. E.g. nvidia-tesla-k80.

**Returns**:
  - An attribute object that represents the `guest_accelerator` sub block.


## obj network_interface



### fn network_interface.new

```ts
new()
```


`google.compute_region_instance_template.network_interface.new` constructs a new object with attributes and blocks configured for the `network_interface`
Terraform sub block.



**Args**:
  - `internal_ipv6_prefix_length` (`number`): The prefix length of the primary internal IPv6 range. When `null`, the `internal_ipv6_prefix_length` field will be omitted from the resulting object.
  - `ipv6_address` (`string`): An IPv6 internal network address for this network interface. If not specified, Google Cloud will automatically assign an internal IPv6 address from the instance&#39;s subnetwork. When `null`, the `ipv6_address` field will be omitted from the resulting object.
  - `network` (`string`): The name or self_link of the network to attach this interface to. Use network attribute for Legacy or Auto subnetted networks and subnetwork for custom subnetted networks. When `null`, the `network` field will be omitted from the resulting object.
  - `network_ip` (`string`): The private IP address to assign to the instance. If empty, the address will be automatically assigned. When `null`, the `network_ip` field will be omitted from the resulting object.
  - `nic_type` (`string`): The type of vNIC to be used on this interface. Possible values:GVNIC, VIRTIO_NET When `null`, the `nic_type` field will be omitted from the resulting object.
  - `queue_count` (`number`): The networking queue count that&#39;s specified by users for the network interface. Both Rx and Tx queues will be set to this number. It will be empty if not specified. When `null`, the `queue_count` field will be omitted from the resulting object.
  - `stack_type` (`string`): The stack type for this network interface to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. When `null`, the `stack_type` field will be omitted from the resulting object.
  - `subnetwork` (`string`): The name of the subnetwork to attach this interface to. The subnetwork must exist in the same region this instance will be created in. Either network or subnetwork must be provided. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `subnetwork_project` (`string`): The ID of the project in which the subnetwork belongs. If it is not provided, the provider project is used. When `null`, the `subnetwork_project` field will be omitted from the resulting object.
  - `access_config` (`list[obj]`): Access configurations, i.e. IPs via which this instance can be accessed via the Internet. Omit to ensure that the instance is not accessible from the Internet (this means that ssh provisioners will not work unless you are running Terraform can send traffic to the instance&#39;s network (e.g. via tunnel or because it is running on another cloud instance on that network). This block can be repeated multiple times. When `null`, the `access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_interface.access_config.new](#fn-network_interfaceaccess_confignew) constructor.
  - `alias_ip_range` (`list[obj]`): An array of alias IP ranges for this network interface. Can only be specified for network interfaces on subnet-mode networks. When `null`, the `alias_ip_range` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_interface.alias_ip_range.new](#fn-network_interfacealias_ip_rangenew) constructor.
  - `ipv6_access_config` (`list[obj]`): An array of IPv6 access configurations for this interface. Currently, only one IPv6 access config, DIRECT_IPV6, is supported. If there is no ipv6AccessConfig specified, then this instance will have no external IPv6 Internet access. When `null`, the `ipv6_access_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.network_interface.ipv6_access_config.new](#fn-network_interfaceipv6_access_confignew) constructor.

**Returns**:
  - An attribute object that represents the `network_interface` sub block.


## obj network_interface.access_config



### fn network_interface.access_config.new

```ts
new()
```


`google.compute_region_instance_template.network_interface.access_config.new` constructs a new object with attributes and blocks configured for the `access_config`
Terraform sub block.



**Args**:
  - `nat_ip` (`string`): The IP address that will be 1:1 mapped to the instance&#39;s network ip. If not given, one will be generated. When `null`, the `nat_ip` field will be omitted from the resulting object.
  - `network_tier` (`string`): The networking tier used for configuring this instance template. This field can take the following values: PREMIUM, STANDARD, FIXED_STANDARD. If this field is not specified, it is assumed to be PREMIUM. When `null`, the `network_tier` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `access_config` sub block.


## obj network_interface.alias_ip_range



### fn network_interface.alias_ip_range.new

```ts
new()
```


`google.compute_region_instance_template.network_interface.alias_ip_range.new` constructs a new object with attributes and blocks configured for the `alias_ip_range`
Terraform sub block.



**Args**:
  - `ip_cidr_range` (`string`): The IP CIDR range represented by this alias IP range. This IP CIDR range must belong to the specified subnetwork and cannot contain IP addresses reserved by system or used by other network interfaces. At the time of writing only a netmask (e.g. /24) may be supplied, with a CIDR format resulting in an API error.
  - `subnetwork_range_name` (`string`): The subnetwork secondary range name specifying the secondary range from which to allocate the IP CIDR range for this alias IP range. If left unspecified, the primary range of the subnetwork will be used. When `null`, the `subnetwork_range_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `alias_ip_range` sub block.


## obj network_interface.ipv6_access_config



### fn network_interface.ipv6_access_config.new

```ts
new()
```


`google.compute_region_instance_template.network_interface.ipv6_access_config.new` constructs a new object with attributes and blocks configured for the `ipv6_access_config`
Terraform sub block.



**Args**:
  - `network_tier` (`string`): The service-level to be provided for IPv6 traffic when the subnet has an external subnet. Only PREMIUM tier is valid for IPv6

**Returns**:
  - An attribute object that represents the `ipv6_access_config` sub block.


## obj network_performance_config



### fn network_performance_config.new

```ts
new()
```


`google.compute_region_instance_template.network_performance_config.new` constructs a new object with attributes and blocks configured for the `network_performance_config`
Terraform sub block.



**Args**:
  - `total_egress_bandwidth_tier` (`string`): The egress bandwidth tier to enable. Possible values:TIER_1, DEFAULT

**Returns**:
  - An attribute object that represents the `network_performance_config` sub block.


## obj reservation_affinity



### fn reservation_affinity.new

```ts
new()
```


`google.compute_region_instance_template.reservation_affinity.new` constructs a new object with attributes and blocks configured for the `reservation_affinity`
Terraform sub block.



**Args**:
  - `type` (`string`): The type of reservation from which this instance can consume resources.
  - `specific_reservation` (`list[obj]`): Specifies the label selector for the reservation to use. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.reservation_affinity.specific_reservation.new](#fn-reservation_affinityspecific_reservationnew) constructor.

**Returns**:
  - An attribute object that represents the `reservation_affinity` sub block.


## obj reservation_affinity.specific_reservation



### fn reservation_affinity.specific_reservation.new

```ts
new()
```


`google.compute_region_instance_template.reservation_affinity.specific_reservation.new` constructs a new object with attributes and blocks configured for the `specific_reservation`
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


`google.compute_region_instance_template.scheduling.new` constructs a new object with attributes and blocks configured for the `scheduling`
Terraform sub block.



**Args**:
  - `automatic_restart` (`bool`): Specifies whether the instance should be automatically restarted if it is terminated by Compute Engine (not terminated by a user). This defaults to true. When `null`, the `automatic_restart` field will be omitted from the resulting object.
  - `instance_termination_action` (`string`): Specifies the action GCE should take when SPOT VM is preempted. When `null`, the `instance_termination_action` field will be omitted from the resulting object.
  - `min_node_cpus` (`number`): Minimum number of cpus for the instance. When `null`, the `min_node_cpus` field will be omitted from the resulting object.
  - `on_host_maintenance` (`string`): Defines the maintenance behavior for this instance. When `null`, the `on_host_maintenance` field will be omitted from the resulting object.
  - `preemptible` (`bool`): Allows instance to be preempted. This defaults to false. When `null`, the `preemptible` field will be omitted from the resulting object.
  - `provisioning_model` (`string`): Whether the instance is spot. If this is set as SPOT. When `null`, the `provisioning_model` field will be omitted from the resulting object.
  - `local_ssd_recovery_timeout` (`list[obj]`): Specifies the maximum amount of time a Local Ssd Vm should wait while
  recovery of the Local Ssd state is attempted. Its value should be in
  between 0 and 168 hours with hour granularity and the default value being 1
  hour. When `null`, the `local_ssd_recovery_timeout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.scheduling.local_ssd_recovery_timeout.new](#fn-schedulinglocal_ssd_recovery_timeoutnew) constructor.
  - `node_affinities` (`list[obj]`): Specifies node affinities or anti-affinities to determine which sole-tenant nodes your instances and managed instance groups will use as host systems. When `null`, the `node_affinities` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_instance_template.scheduling.node_affinities.new](#fn-schedulingnode_affinitiesnew) constructor.

**Returns**:
  - An attribute object that represents the `scheduling` sub block.


## obj scheduling.local_ssd_recovery_timeout



### fn scheduling.local_ssd_recovery_timeout.new

```ts
new()
```


`google.compute_region_instance_template.scheduling.local_ssd_recovery_timeout.new` constructs a new object with attributes and blocks configured for the `local_ssd_recovery_timeout`
Terraform sub block.



**Args**:
  - `nanos` (`number`): Span of time that&#39;s a fraction of a second at nanosecond
resolution. Durations less than one second are represented
with a 0 seconds field and a positive nanos field. Must
be from 0 to 999,999,999 inclusive. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Span of time at a resolution of a second.
Must be from 0 to 315,576,000,000 inclusive.

**Returns**:
  - An attribute object that represents the `local_ssd_recovery_timeout` sub block.


## obj scheduling.node_affinities



### fn scheduling.node_affinities.new

```ts
new()
```


`google.compute_region_instance_template.scheduling.node_affinities.new` constructs a new object with attributes and blocks configured for the `node_affinities`
Terraform sub block.



**Args**:
  - `key` (`string`): Set the `key` field on the resulting object.
  - `operator` (`string`): Set the `operator` field on the resulting object.
  - `values` (`list`): Set the `values` field on the resulting object.

**Returns**:
  - An attribute object that represents the `node_affinities` sub block.


## obj service_account



### fn service_account.new

```ts
new()
```


`google.compute_region_instance_template.service_account.new` constructs a new object with attributes and blocks configured for the `service_account`
Terraform sub block.



**Args**:
  - `email` (`string`): The service account e-mail address. If not given, the default Google Compute Engine service account is used. When `null`, the `email` field will be omitted from the resulting object.
  - `scopes` (`list`): A list of service scopes. Both OAuth2 URLs and gcloud short names are supported. To allow full access to all Cloud APIs, use the cloud-platform scope.

**Returns**:
  - An attribute object that represents the `service_account` sub block.


## obj shielded_instance_config



### fn shielded_instance_config.new

```ts
new()
```


`google.compute_region_instance_template.shielded_instance_config.new` constructs a new object with attributes and blocks configured for the `shielded_instance_config`
Terraform sub block.



**Args**:
  - `enable_integrity_monitoring` (`bool`): Compare the most recent boot measurements to the integrity policy baseline and return a pair of pass/fail results depending on whether they match or not. Defaults to true. When `null`, the `enable_integrity_monitoring` field will be omitted from the resulting object.
  - `enable_secure_boot` (`bool`): Verify the digital signature of all boot components, and halt the boot process if signature verification fails. Defaults to false. When `null`, the `enable_secure_boot` field will be omitted from the resulting object.
  - `enable_vtpm` (`bool`): Use a virtualized trusted platform module, which is a specialized computer chip you can use to encrypt objects like keys and certificates. Defaults to true. When `null`, the `enable_vtpm` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `shielded_instance_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_region_instance_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

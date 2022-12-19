---
permalink: /compute_reservation/
---

# compute_reservation

`compute_reservation` represents the `google_compute_reservation` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withShareSettings()`](#fn-withsharesettings)
* [`fn withShareSettingsMixin()`](#fn-withsharesettingsmixin)
* [`fn withSpecificReservation()`](#fn-withspecificreservation)
* [`fn withSpecificReservationMixin()`](#fn-withspecificreservationmixin)
* [`fn withSpecificReservationRequired()`](#fn-withspecificreservationrequired)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj share_settings`](#obj-share_settings)
  * [`fn new()`](#fn-share_settingsnew)
  * [`obj share_settings.project_map`](#obj-share_settingsproject_map)
    * [`fn new()`](#fn-share_settingsproject_mapnew)
* [`obj specific_reservation`](#obj-specific_reservation)
  * [`fn new()`](#fn-specific_reservationnew)
  * [`obj specific_reservation.instance_properties`](#obj-specific_reservationinstance_properties)
    * [`fn new()`](#fn-specific_reservationinstance_propertiesnew)
    * [`obj specific_reservation.instance_properties.guest_accelerators`](#obj-specific_reservationinstance_propertiesguest_accelerators)
      * [`fn new()`](#fn-specific_reservationinstance_propertiesguest_acceleratorsnew)
    * [`obj specific_reservation.instance_properties.local_ssds`](#obj-specific_reservationinstance_propertieslocal_ssds)
      * [`fn new()`](#fn-specific_reservationinstance_propertieslocal_ssdsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_reservation.new` injects a new `google_compute_reservation` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_reservation.new('some_id')

You can get the reference to the `id` field of the created `google.compute_reservation` using the reference:

    $._ref.google_compute_reservation.some_id.get('id')

This is the same as directly entering `"${ google_compute_reservation.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `specific_reservation_required` (`bool`): When set to true, only VMs that target this reservation by name can
consume this reservation. Otherwise, it can be consumed by VMs with
affinity for any reservation. Defaults to false. When `null`, the `specific_reservation_required` field will be omitted from the resulting object.
  - `zone` (`string`): The zone where the reservation is made.
  - `share_settings` (`list[obj]`): The share setting for reservations. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.share_settings.new](#fn-computereservationsharesettingsnew) constructor.
  - `specific_reservation` (`list[obj]`): Reservation for instances with specific machine shapes. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.new](#fn-computereservationspecificreservationnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.timeouts.new](#fn-computereservationtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `compute_reservation`
Terraform resource.

Unlike [google.compute_reservation.new](#fn-computereservationnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `specific_reservation_required` (`bool`): When set to true, only VMs that target this reservation by name can
consume this reservation. Otherwise, it can be consumed by VMs with
affinity for any reservation. Defaults to false. When `null`, the `specific_reservation_required` field will be omitted from the resulting object.
  - `zone` (`string`): The zone where the reservation is made.
  - `share_settings` (`list[obj]`): The share setting for reservations. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.share_settings.new](#fn-computereservationsharesettingsnew) constructor.
  - `specific_reservation` (`list[obj]`): Reservation for instances with specific machine shapes. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.new](#fn-computereservationspecificreservationnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.timeouts.new](#fn-computereservationtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_reservation` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.compute_reservation.withDescription` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.compute_reservation.withName` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.compute_reservation.withProject` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withShareSettings

```ts
withShareSettings()
```

`google.compute_reservation.withShareSettings` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the share_settings field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `share_settings` field.


### fn withShareSettingsMixin

```ts
withShareSettingsMixin()
```

`google.compute_reservation.withShareSettingsMixin` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the share_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_reservation.withShareSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `share_settings` field.


### fn withSpecificReservation

```ts
withSpecificReservation()
```

`google.compute_reservation.withSpecificReservation` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the specific_reservation field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `specific_reservation` field.


### fn withSpecificReservationMixin

```ts
withSpecificReservationMixin()
```

`google.compute_reservation.withSpecificReservationMixin` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the specific_reservation field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.compute_reservation.withSpecificReservation](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `specific_reservation` field.


### fn withSpecificReservationRequired

```ts
withSpecificReservationRequired()
```

`google.compute_reservation.withSpecificReservationRequired` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the specific_reservation_required field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `specific_reservation_required` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_reservation.withTimeouts` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_reservation.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_reservation.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withZone

```ts
withZone()
```

`google.compute_reservation.withZone` constructs a mixin object that can be merged into the `compute_reservation`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.


## obj share_settings



### fn share_settings.new

```ts
new()
```


`google.compute_reservation.share_settings.new` constructs a new object with attributes and blocks configured for the `share_settings`
Terraform sub block.



**Args**:
  - `share_type` (`string`): Type of sharing for this shared-reservation Possible values: [&#34;LOCAL&#34;, &#34;SPECIFIC_PROJECTS&#34;] When `null`, the `share_type` field will be omitted from the resulting object.
  - `project_map` (`list[obj]`): A map of project number and project config. This is only valid when shareType&#39;s value is SPECIFIC_PROJECTS. When `null`, the `project_map` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.share_settings.project_map.new](#fn-sharesettingsprojectmapnew) constructor.

**Returns**:
  - An attribute object that represents the `share_settings` sub block.


## obj share_settings.project_map



### fn share_settings.project_map.new

```ts
new()
```


`google.compute_reservation.share_settings.project_map.new` constructs a new object with attributes and blocks configured for the `project_map`
Terraform sub block.



**Args**:
  - `project_id` (`string`): The project id/number, should be same as the key of this project config in the project map. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `project_map` sub block.


## obj specific_reservation



### fn specific_reservation.new

```ts
new()
```


`google.compute_reservation.specific_reservation.new` constructs a new object with attributes and blocks configured for the `specific_reservation`
Terraform sub block.



**Args**:
  - `count` (`number`): The number of resources that are allocated.
  - `instance_properties` (`list[obj]`): The instance properties for the reservation. When `null`, the `instance_properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.instance_properties.new](#fn-specificreservationinstancepropertiesnew) constructor.

**Returns**:
  - An attribute object that represents the `specific_reservation` sub block.


## obj specific_reservation.instance_properties



### fn specific_reservation.instance_properties.new

```ts
new()
```


`google.compute_reservation.specific_reservation.instance_properties.new` constructs a new object with attributes and blocks configured for the `instance_properties`
Terraform sub block.



**Args**:
  - `machine_type` (`string`): The name of the machine type to reserve.
  - `min_cpu_platform` (`string`): The minimum CPU platform for the reservation. For example,
&#39;&#34;Intel Skylake&#34;&#39;. See
the CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)
for information on available CPU platforms. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.
  - `guest_accelerators` (`list[obj]`): Guest accelerator type and count. When `null`, the `guest_accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.instance_properties.guest_accelerators.new](#fn-instancepropertiesguestacceleratorsnew) constructor.
  - `local_ssds` (`list[obj]`): The amount of local ssd to reserve with each instance. This
reserves disks of type &#39;local-ssd&#39;. When `null`, the `local_ssds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.instance_properties.local_ssds.new](#fn-instancepropertieslocalssdsnew) constructor.

**Returns**:
  - An attribute object that represents the `instance_properties` sub block.


## obj specific_reservation.instance_properties.guest_accelerators



### fn specific_reservation.instance_properties.guest_accelerators.new

```ts
new()
```


`google.compute_reservation.specific_reservation.instance_properties.guest_accelerators.new` constructs a new object with attributes and blocks configured for the `guest_accelerators`
Terraform sub block.



**Args**:
  - `accelerator_count` (`number`): The number of the guest accelerator cards exposed to
this instance.
  - `accelerator_type` (`string`): The full or partial URL of the accelerator type to
attach to this instance. For example:
&#39;projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100&#39;

If you are creating an instance template, specify only the accelerator name.

**Returns**:
  - An attribute object that represents the `guest_accelerators` sub block.


## obj specific_reservation.instance_properties.local_ssds



### fn specific_reservation.instance_properties.local_ssds.new

```ts
new()
```


`google.compute_reservation.specific_reservation.instance_properties.local_ssds.new` constructs a new object with attributes and blocks configured for the `local_ssds`
Terraform sub block.



**Args**:
  - `disk_size_gb` (`number`): The size of the disk in base-2 GB.
  - `interface` (`string`): The disk interface to use for attaching this disk. Default value: &#34;SCSI&#34; Possible values: [&#34;SCSI&#34;, &#34;NVME&#34;] When `null`, the `interface` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `local_ssds` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

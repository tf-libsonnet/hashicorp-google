---
permalink: /os_config_os_policy_assignment/
---

# os_config_os_policy_assignment

`os_config_os_policy_assignment` represents the `google_os_config_os_policy_assignment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withInstanceFilter()`](#fn-withinstancefilter)
* [`fn withInstanceFilterMixin()`](#fn-withinstancefiltermixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withOsPolicies()`](#fn-withospolicies)
* [`fn withOsPoliciesMixin()`](#fn-withospoliciesmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRollout()`](#fn-withrollout)
* [`fn withRolloutMixin()`](#fn-withrolloutmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj instance_filter`](#obj-instance_filter)
  * [`fn new()`](#fn-instance_filternew)
  * [`obj instance_filter.exclusion_labels`](#obj-instance_filterexclusion_labels)
    * [`fn new()`](#fn-instance_filterexclusion_labelsnew)
  * [`obj instance_filter.inclusion_labels`](#obj-instance_filterinclusion_labels)
    * [`fn new()`](#fn-instance_filterinclusion_labelsnew)
  * [`obj instance_filter.inventories`](#obj-instance_filterinventories)
    * [`fn new()`](#fn-instance_filterinventoriesnew)
* [`obj os_policies`](#obj-os_policies)
  * [`fn new()`](#fn-os_policiesnew)
  * [`obj os_policies.resource_groups`](#obj-os_policiesresource_groups)
    * [`fn new()`](#fn-os_policiesresource_groupsnew)
    * [`obj os_policies.resource_groups.inventory_filters`](#obj-os_policiesresource_groupsinventory_filters)
      * [`fn new()`](#fn-os_policiesresource_groupsinventory_filtersnew)
    * [`obj os_policies.resource_groups.resources`](#obj-os_policiesresource_groupsresources)
      * [`fn new()`](#fn-os_policiesresource_groupsresourcesnew)
      * [`obj os_policies.resource_groups.resources.exec`](#obj-os_policiesresource_groupsresourcesexec)
        * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecnew)
        * [`obj os_policies.resource_groups.resources.exec.enforce`](#obj-os_policiesresource_groupsresourcesexecenforce)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecenforcenew)
          * [`obj os_policies.resource_groups.resources.exec.enforce.file`](#obj-os_policiesresource_groupsresourcesexecenforcefile)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecenforcefilenew)
            * [`obj os_policies.resource_groups.resources.exec.enforce.file.gcs`](#obj-os_policiesresource_groupsresourcesexecenforcefilegcs)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecenforcefilegcsnew)
            * [`obj os_policies.resource_groups.resources.exec.enforce.file.remote`](#obj-os_policiesresource_groupsresourcesexecenforcefileremote)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecenforcefileremotenew)
        * [`obj os_policies.resource_groups.resources.exec.validate`](#obj-os_policiesresource_groupsresourcesexecvalidate)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecvalidatenew)
          * [`obj os_policies.resource_groups.resources.exec.validate.file`](#obj-os_policiesresource_groupsresourcesexecvalidatefile)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecvalidatefilenew)
            * [`obj os_policies.resource_groups.resources.exec.validate.file.gcs`](#obj-os_policiesresource_groupsresourcesexecvalidatefilegcs)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecvalidatefilegcsnew)
            * [`obj os_policies.resource_groups.resources.exec.validate.file.remote`](#obj-os_policiesresource_groupsresourcesexecvalidatefileremote)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcesexecvalidatefileremotenew)
      * [`obj os_policies.resource_groups.resources.file`](#obj-os_policiesresource_groupsresourcesfile)
        * [`fn new()`](#fn-os_policiesresource_groupsresourcesfilenew)
        * [`obj os_policies.resource_groups.resources.file.file`](#obj-os_policiesresource_groupsresourcesfilefile)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesfilefilenew)
          * [`obj os_policies.resource_groups.resources.file.file.gcs`](#obj-os_policiesresource_groupsresourcesfilefilegcs)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcesfilefilegcsnew)
          * [`obj os_policies.resource_groups.resources.file.file.remote`](#obj-os_policiesresource_groupsresourcesfilefileremote)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcesfilefileremotenew)
      * [`obj os_policies.resource_groups.resources.pkg`](#obj-os_policiesresource_groupsresourcespkg)
        * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgnew)
        * [`obj os_policies.resource_groups.resources.pkg.apt`](#obj-os_policiesresource_groupsresourcespkgapt)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgaptnew)
        * [`obj os_policies.resource_groups.resources.pkg.deb`](#obj-os_policiesresource_groupsresourcespkgdeb)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgdebnew)
          * [`obj os_policies.resource_groups.resources.pkg.deb.source`](#obj-os_policiesresource_groupsresourcespkgdebsource)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgdebsourcenew)
            * [`obj os_policies.resource_groups.resources.pkg.deb.source.gcs`](#obj-os_policiesresource_groupsresourcespkgdebsourcegcs)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgdebsourcegcsnew)
            * [`obj os_policies.resource_groups.resources.pkg.deb.source.remote`](#obj-os_policiesresource_groupsresourcespkgdebsourceremote)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgdebsourceremotenew)
        * [`obj os_policies.resource_groups.resources.pkg.googet`](#obj-os_policiesresource_groupsresourcespkggooget)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkggoogetnew)
        * [`obj os_policies.resource_groups.resources.pkg.msi`](#obj-os_policiesresource_groupsresourcespkgmsi)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgmsinew)
          * [`obj os_policies.resource_groups.resources.pkg.msi.source`](#obj-os_policiesresource_groupsresourcespkgmsisource)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgmsisourcenew)
            * [`obj os_policies.resource_groups.resources.pkg.msi.source.gcs`](#obj-os_policiesresource_groupsresourcespkgmsisourcegcs)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgmsisourcegcsnew)
            * [`obj os_policies.resource_groups.resources.pkg.msi.source.remote`](#obj-os_policiesresource_groupsresourcespkgmsisourceremote)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgmsisourceremotenew)
        * [`obj os_policies.resource_groups.resources.pkg.rpm`](#obj-os_policiesresource_groupsresourcespkgrpm)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgrpmnew)
          * [`obj os_policies.resource_groups.resources.pkg.rpm.source`](#obj-os_policiesresource_groupsresourcespkgrpmsource)
            * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgrpmsourcenew)
            * [`obj os_policies.resource_groups.resources.pkg.rpm.source.gcs`](#obj-os_policiesresource_groupsresourcespkgrpmsourcegcs)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgrpmsourcegcsnew)
            * [`obj os_policies.resource_groups.resources.pkg.rpm.source.remote`](#obj-os_policiesresource_groupsresourcespkgrpmsourceremote)
              * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgrpmsourceremotenew)
        * [`obj os_policies.resource_groups.resources.pkg.yum`](#obj-os_policiesresource_groupsresourcespkgyum)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgyumnew)
        * [`obj os_policies.resource_groups.resources.pkg.zypper`](#obj-os_policiesresource_groupsresourcespkgzypper)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcespkgzyppernew)
      * [`obj os_policies.resource_groups.resources.repository`](#obj-os_policiesresource_groupsresourcesrepository)
        * [`fn new()`](#fn-os_policiesresource_groupsresourcesrepositorynew)
        * [`obj os_policies.resource_groups.resources.repository.apt`](#obj-os_policiesresource_groupsresourcesrepositoryapt)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesrepositoryaptnew)
        * [`obj os_policies.resource_groups.resources.repository.goo`](#obj-os_policiesresource_groupsresourcesrepositorygoo)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesrepositorygoonew)
        * [`obj os_policies.resource_groups.resources.repository.yum`](#obj-os_policiesresource_groupsresourcesrepositoryyum)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesrepositoryyumnew)
        * [`obj os_policies.resource_groups.resources.repository.zypper`](#obj-os_policiesresource_groupsresourcesrepositoryzypper)
          * [`fn new()`](#fn-os_policiesresource_groupsresourcesrepositoryzyppernew)
* [`obj rollout`](#obj-rollout)
  * [`fn new()`](#fn-rolloutnew)
  * [`obj rollout.disruption_budget`](#obj-rolloutdisruption_budget)
    * [`fn new()`](#fn-rolloutdisruption_budgetnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.os_config_os_policy_assignment.new` injects a new `google_os_config_os_policy_assignment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.os_config_os_policy_assignment.new('some_id')

You can get the reference to the `id` field of the created `google.os_config_os_policy_assignment` using the reference:

    $._ref.google_os_config_os_policy_assignment.some_id.get('id')

This is the same as directly entering `"${ google_os_config_os_policy_assignment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): OS policy assignment description. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Resource name.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `instance_filter` (`list[obj]`): Required. Filter to select VMs. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.new](#fn-instance_filternew) constructor.
  - `os_policies` (`list[obj]`): Required. List of OS policies to be applied to the VMs. When `null`, the `os_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.new](#fn-os_policiesnew) constructor.
  - `rollout` (`list[obj]`): Required. Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.rollout.new](#fn-rolloutnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.os_config_os_policy_assignment.newAttrs` constructs a new object with attributes and blocks configured for the `os_config_os_policy_assignment`
Terraform resource.

Unlike [google.os_config_os_policy_assignment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): OS policy assignment description. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): Resource name.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `instance_filter` (`list[obj]`): Required. Filter to select VMs. When `null`, the `instance_filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.new](#fn-instance_filternew) constructor.
  - `os_policies` (`list[obj]`): Required. List of OS policies to be applied to the VMs. When `null`, the `os_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.new](#fn-os_policiesnew) constructor.
  - `rollout` (`list[obj]`): Required. Rollout to deploy the OS policy assignment. A rollout is triggered in the following situations: 1) OSPolicyAssignment is created. 2) OSPolicyAssignment is updated and the update contains changes to one of the following fields: - instance_filter - os_policies 3) OSPolicyAssignment is deleted. When `null`, the `rollout` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.rollout.new](#fn-rolloutnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `os_config_os_policy_assignment` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withInstanceFilter

```ts
withInstanceFilter()
```

`google.list[obj].withInstanceFilter` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the instance_filter field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInstanceFilterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `instance_filter` field.


### fn withInstanceFilterMixin

```ts
withInstanceFilterMixin()
```

`google.list[obj].withInstanceFilterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the instance_filter field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInstanceFilter](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `instance_filter` field.


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


### fn withOsPolicies

```ts
withOsPolicies()
```

`google.list[obj].withOsPolicies` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the os_policies field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOsPoliciesMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `os_policies` field.


### fn withOsPoliciesMixin

```ts
withOsPoliciesMixin()
```

`google.list[obj].withOsPoliciesMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the os_policies field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOsPolicies](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `os_policies` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRollout

```ts
withRollout()
```

`google.list[obj].withRollout` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rollout field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRolloutMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rollout` field.


### fn withRolloutMixin

```ts
withRolloutMixin()
```

`google.list[obj].withRolloutMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the rollout field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRollout](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `rollout` field.


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


## obj instance_filter



### fn instance_filter.new

```ts
new()
```


`google.os_config_os_policy_assignment.instance_filter.new` constructs a new object with attributes and blocks configured for the `instance_filter`
Terraform sub block.



**Args**:
  - `all` (`bool`): Target all VMs in the project. If true, no other criteria is permitted. When `null`, the `all` field will be omitted from the resulting object.
  - `exclusion_labels` (`list[obj]`): List of label sets used for VM exclusion. If the list has more than one label set, the VM is excluded if any of the label sets are applicable for the VM. When `null`, the `exclusion_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.exclusion_labels.new](#fn-exclusion_labelsnew) constructor.
  - `inclusion_labels` (`list[obj]`): List of label sets used for VM inclusion. If the list has more than one `LabelSet`, the VM is included if any of the label sets are applicable for the VM. When `null`, the `inclusion_labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.inclusion_labels.new](#fn-inclusion_labelsnew) constructor.
  - `inventories` (`list[obj]`): List of inventories to select VMs. A VM is selected if its inventory data matches at least one of the following inventories. When `null`, the `inventories` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.instance_filter.inventories.new](#fn-inventoriesnew) constructor.

**Returns**:
  - An attribute object that represents the `instance_filter` sub block.


## obj instance_filter.exclusion_labels



### fn instance_filter.exclusion_labels.new

```ts
new()
```


`google.os_config_os_policy_assignment.instance_filter.exclusion_labels.new` constructs a new object with attributes and blocks configured for the `exclusion_labels`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. When `null`, the `labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `exclusion_labels` sub block.


## obj instance_filter.inclusion_labels



### fn instance_filter.inclusion_labels.new

```ts
new()
```


`google.os_config_os_policy_assignment.instance_filter.inclusion_labels.new` constructs a new object with attributes and blocks configured for the `inclusion_labels`
Terraform sub block.



**Args**:
  - `labels` (`obj`): Labels are identified by key/value pairs in this map. A VM should contain all the key/value pairs specified in this map to be selected. When `null`, the `labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `inclusion_labels` sub block.


## obj instance_filter.inventories



### fn instance_filter.inventories.new

```ts
new()
```


`google.os_config_os_policy_assignment.instance_filter.inventories.new` constructs a new object with attributes and blocks configured for the `inventories`
Terraform sub block.



**Args**:
  - `os_short_name` (`string`): Required. The OS short name
  - `os_version` (`string`): The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions. When `null`, the `os_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `inventories` sub block.


## obj os_policies



### fn os_policies.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.new` constructs a new object with attributes and blocks configured for the `os_policies`
Terraform sub block.



**Args**:
  - `allow_no_resource_group_match` (`bool`): This flag determines the OS policy compliance status when none of the resource groups within the policy are applicable for a VM. Set this value to `true` if the policy needs to be reported as compliant even if the policy has nothing to validate or enforce. When `null`, the `allow_no_resource_group_match` field will be omitted from the resulting object.
  - `description` (`string`): Policy description. Length of the description is limited to 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `mode` (`string`): Required. Policy mode Possible values: MODE_UNSPECIFIED, VALIDATION, ENFORCEMENT
  - `resource_groups` (`list[obj]`): Required. List of resource groups for the policy. For a particular VM, resource groups are evaluated in the order specified and the first resource group that is applicable is selected and the rest are ignored. If none of the resource groups are applicable for a VM, the VM is considered to be non-compliant w.r.t this policy. This behavior can be toggled by the flag `allow_no_resource_group_match` When `null`, the `resource_groups` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.new](#fn-resource_groupsnew) constructor.

**Returns**:
  - An attribute object that represents the `os_policies` sub block.


## obj os_policies.resource_groups



### fn os_policies.resource_groups.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.new` constructs a new object with attributes and blocks configured for the `resource_groups`
Terraform sub block.



**Args**:
  - `inventory_filters` (`list[obj]`): List of inventory filters for the resource group. The resources in this resource group are applied to the target VM if it satisfies at least one of the following inventory filters. For example, to apply this resource group to VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for the list with following values: inventory_filters[0].os_short_name=&#39;rhel&#39; and inventory_filters[1].os_short_name=&#39;centos&#39; If the list is empty, this resource group will be applied to the target VM unconditionally. When `null`, the `inventory_filters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.inventory_filters.new](#fn-os_policiesinventory_filtersnew) constructor.
  - `resources` (`list[obj]`): Required. List of resources configured for this resource group. The resources are executed in the exact order specified here. When `null`, the `resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.new](#fn-os_policiesresourcesnew) constructor.

**Returns**:
  - An attribute object that represents the `resource_groups` sub block.


## obj os_policies.resource_groups.inventory_filters



### fn os_policies.resource_groups.inventory_filters.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.inventory_filters.new` constructs a new object with attributes and blocks configured for the `inventory_filters`
Terraform sub block.



**Args**:
  - `os_short_name` (`string`): Required. The OS short name
  - `os_version` (`string`): The OS version Prefix matches are supported if asterisk(*) is provided as the last character. For example, to match all versions with a major version of `7`, specify the following value for this field `7.*` An empty string matches all OS versions. When `null`, the `os_version` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `inventory_filters` sub block.


## obj os_policies.resource_groups.resources



### fn os_policies.resource_groups.resources.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.new` constructs a new object with attributes and blocks configured for the `resources`
Terraform sub block.



**Args**:
  - `exec` (`list[obj]`): Exec resource When `null`, the `exec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.new](#fn-os_policiesresource_groupsexecnew) constructor.
  - `file` (`list[obj]`): File resource When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.new](#fn-os_policiesresource_groupsfilenew) constructor.
  - `pkg` (`list[obj]`): Package resource When `null`, the `pkg` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.new](#fn-os_policiesresource_groupspkgnew) constructor.
  - `repository` (`list[obj]`): Package repository resource When `null`, the `repository` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.new](#fn-os_policiesresource_groupsrepositorynew) constructor.

**Returns**:
  - An attribute object that represents the `resources` sub block.


## obj os_policies.resource_groups.resources.exec



### fn os_policies.resource_groups.resources.exec.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.new` constructs a new object with attributes and blocks configured for the `exec`
Terraform sub block.



**Args**:
  - `enforce` (`list[obj]`): What to run to bring this resource into the desired state. An exit code of 100 indicates &#34;success&#34;, any other exit code indicates a failure running enforce. When `null`, the `enforce` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.new](#fn-os_policiesresource_groupsresourcesenforcenew) constructor.
  - `validate` (`list[obj]`): Required. What to run to validate this resource is in the desired state. An exit code of 100 indicates &#34;in desired state&#34;, and exit code of 101 indicates &#34;not in desired state&#34;. Any other exit code indicates a failure running validate. When `null`, the `validate` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.new](#fn-os_policiesresource_groupsresourcesvalidatenew) constructor.

**Returns**:
  - An attribute object that represents the `exec` sub block.


## obj os_policies.resource_groups.resources.exec.enforce



### fn os_policies.resource_groups.resources.exec.enforce.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.new` constructs a new object with attributes and blocks configured for the `enforce`
Terraform sub block.



**Args**:
  - `args` (`list`): Optional arguments to pass to the source during execution. When `null`, the `args` field will be omitted from the resulting object.
  - `interpreter` (`string`): Required. The script interpreter to use. Possible values: INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL
  - `output_file_path` (`string`): Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. When `null`, the `output_file_path` field will be omitted from the resulting object.
  - `script` (`string`): An inline script. The size of the script is limited to 1024 characters. When `null`, the `script` field will be omitted from the resulting object.
  - `file` (`list[obj]`): A remote or local file. When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.new](#fn-os_policiesresource_groupsresourcesexecfilenew) constructor.

**Returns**:
  - An attribute object that represents the `enforce` sub block.


## obj os_policies.resource_groups.resources.exec.enforce.file



### fn os_policies.resource_groups.resources.exec.enforce.file.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.new` constructs a new object with attributes and blocks configured for the `file`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.gcs.new](#fn-os_policiesresource_groupsresourcesexecenforcegcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.remote.new](#fn-os_policiesresource_groupsresourcesexecenforceremotenew) constructor.

**Returns**:
  - An attribute object that represents the `file` sub block.


## obj os_policies.resource_groups.resources.exec.enforce.file.gcs



### fn os_policies.resource_groups.resources.exec.enforce.file.gcs.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.
  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Required. Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj os_policies.resource_groups.resources.exec.enforce.file.remote



### fn os_policies.resource_groups.resources.exec.enforce.file.remote.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.enforce.file.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj os_policies.resource_groups.resources.exec.validate



### fn os_policies.resource_groups.resources.exec.validate.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.new` constructs a new object with attributes and blocks configured for the `validate`
Terraform sub block.



**Args**:
  - `args` (`list`): Optional arguments to pass to the source during execution. When `null`, the `args` field will be omitted from the resulting object.
  - `interpreter` (`string`): Required. The script interpreter to use. Possible values: INTERPRETER_UNSPECIFIED, NONE, SHELL, POWERSHELL
  - `output_file_path` (`string`): Only recorded for enforce Exec. Path to an output file (that is created by this Exec) whose content will be recorded in OSPolicyResourceCompliance after a successful run. Absence or failure to read this file will result in this ExecResource being non-compliant. Output file size is limited to 100K bytes. When `null`, the `output_file_path` field will be omitted from the resulting object.
  - `script` (`string`): An inline script. The size of the script is limited to 1024 characters. When `null`, the `script` field will be omitted from the resulting object.
  - `file` (`list[obj]`): A remote or local file. When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.new](#fn-os_policiesresource_groupsresourcesexecfilenew) constructor.

**Returns**:
  - An attribute object that represents the `validate` sub block.


## obj os_policies.resource_groups.resources.exec.validate.file



### fn os_policies.resource_groups.resources.exec.validate.file.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.new` constructs a new object with attributes and blocks configured for the `file`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.gcs.new](#fn-os_policiesresource_groupsresourcesexecvalidategcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.remote.new](#fn-os_policiesresource_groupsresourcesexecvalidateremotenew) constructor.

**Returns**:
  - An attribute object that represents the `file` sub block.


## obj os_policies.resource_groups.resources.exec.validate.file.gcs



### fn os_policies.resource_groups.resources.exec.validate.file.gcs.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.
  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Required. Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj os_policies.resource_groups.resources.exec.validate.file.remote



### fn os_policies.resource_groups.resources.exec.validate.file.remote.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.exec.validate.file.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj os_policies.resource_groups.resources.file



### fn os_policies.resource_groups.resources.file.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.new` constructs a new object with attributes and blocks configured for the `file`
Terraform sub block.



**Args**:
  - `content` (`string`): A a file with this content. The size of the content is limited to 1024 characters. When `null`, the `content` field will be omitted from the resulting object.
  - `path` (`string`): Required. The absolute path of the file within the VM.
  - `state` (`string`): Required. Desired state of the file. Possible values: OS_POLICY_COMPLIANCE_STATE_UNSPECIFIED, COMPLIANT, NON_COMPLIANT, UNKNOWN, NO_OS_POLICIES_APPLICABLE
  - `file` (`list[obj]`): A remote or local source. When `null`, the `file` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.new](#fn-os_policiesresource_groupsresourcesfilenew) constructor.

**Returns**:
  - An attribute object that represents the `file` sub block.


## obj os_policies.resource_groups.resources.file.file



### fn os_policies.resource_groups.resources.file.file.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.new` constructs a new object with attributes and blocks configured for the `file`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.gcs.new](#fn-os_policiesresource_groupsresourcesfilegcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.remote.new](#fn-os_policiesresource_groupsresourcesfileremotenew) constructor.

**Returns**:
  - An attribute object that represents the `file` sub block.


## obj os_policies.resource_groups.resources.file.file.gcs



### fn os_policies.resource_groups.resources.file.file.gcs.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.
  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Required. Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj os_policies.resource_groups.resources.file.file.remote



### fn os_policies.resource_groups.resources.file.file.remote.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.file.file.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj os_policies.resource_groups.resources.pkg



### fn os_policies.resource_groups.resources.pkg.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.new` constructs a new object with attributes and blocks configured for the `pkg`
Terraform sub block.



**Args**:
  - `desired_state` (`string`): Required. The desired state the agent should maintain for this package. Possible values: DESIRED_STATE_UNSPECIFIED, INSTALLED, REMOVED
  - `apt` (`list[obj]`): A package managed by Apt. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.apt.new](#fn-os_policiesresource_groupsresourcesaptnew) constructor.
  - `deb` (`list[obj]`): A deb package file. When `null`, the `deb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.new](#fn-os_policiesresource_groupsresourcesdebnew) constructor.
  - `googet` (`list[obj]`): A package managed by GooGet. When `null`, the `googet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.googet.new](#fn-os_policiesresource_groupsresourcesgoogetnew) constructor.
  - `msi` (`list[obj]`): An MSI package. When `null`, the `msi` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.new](#fn-os_policiesresource_groupsresourcesmsinew) constructor.
  - `rpm` (`list[obj]`): An rpm package file. When `null`, the `rpm` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.new](#fn-os_policiesresource_groupsresourcesrpmnew) constructor.
  - `yum` (`list[obj]`): A package managed by YUM. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.yum.new](#fn-os_policiesresource_groupsresourcesyumnew) constructor.
  - `zypper` (`list[obj]`): A package managed by Zypper. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.zypper.new](#fn-os_policiesresource_groupsresourceszyppernew) constructor.

**Returns**:
  - An attribute object that represents the `pkg` sub block.


## obj os_policies.resource_groups.resources.pkg.apt



### fn os_policies.resource_groups.resources.pkg.apt.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.apt.new` constructs a new object with attributes and blocks configured for the `apt`
Terraform sub block.



**Args**:
  - `name` (`string`): Required. Package name.

**Returns**:
  - An attribute object that represents the `apt` sub block.


## obj os_policies.resource_groups.resources.pkg.deb



### fn os_policies.resource_groups.resources.pkg.deb.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.new` constructs a new object with attributes and blocks configured for the `deb`
Terraform sub block.



**Args**:
  - `pull_deps` (`bool`): Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update &amp;&amp; apt-get -y install package.deb` When `null`, the `pull_deps` field will be omitted from the resulting object.
  - `source` (`list[obj]`): Required. A deb package. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.new](#fn-os_policiesresource_groupsresourcespkgsourcenew) constructor.

**Returns**:
  - An attribute object that represents the `deb` sub block.


## obj os_policies.resource_groups.resources.pkg.deb.source



### fn os_policies.resource_groups.resources.pkg.deb.source.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.gcs.new](#fn-os_policiesresource_groupsresourcespkgdebgcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.remote.new](#fn-os_policiesresource_groupsresourcespkgdebremotenew) constructor.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj os_policies.resource_groups.resources.pkg.deb.source.gcs



### fn os_policies.resource_groups.resources.pkg.deb.source.gcs.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.
  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Required. Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj os_policies.resource_groups.resources.pkg.deb.source.remote



### fn os_policies.resource_groups.resources.pkg.deb.source.remote.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.deb.source.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj os_policies.resource_groups.resources.pkg.googet



### fn os_policies.resource_groups.resources.pkg.googet.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.googet.new` constructs a new object with attributes and blocks configured for the `googet`
Terraform sub block.



**Args**:
  - `name` (`string`): Required. Package name.

**Returns**:
  - An attribute object that represents the `googet` sub block.


## obj os_policies.resource_groups.resources.pkg.msi



### fn os_policies.resource_groups.resources.pkg.msi.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.new` constructs a new object with attributes and blocks configured for the `msi`
Terraform sub block.



**Args**:
  - `properties` (`list`): Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`. When `null`, the `properties` field will be omitted from the resulting object.
  - `source` (`list[obj]`): Required. The MSI package. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.new](#fn-os_policiesresource_groupsresourcespkgsourcenew) constructor.

**Returns**:
  - An attribute object that represents the `msi` sub block.


## obj os_policies.resource_groups.resources.pkg.msi.source



### fn os_policies.resource_groups.resources.pkg.msi.source.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.gcs.new](#fn-os_policiesresource_groupsresourcespkgmsigcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.remote.new](#fn-os_policiesresource_groupsresourcespkgmsiremotenew) constructor.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj os_policies.resource_groups.resources.pkg.msi.source.gcs



### fn os_policies.resource_groups.resources.pkg.msi.source.gcs.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.
  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Required. Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj os_policies.resource_groups.resources.pkg.msi.source.remote



### fn os_policies.resource_groups.resources.pkg.msi.source.remote.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.msi.source.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj os_policies.resource_groups.resources.pkg.rpm



### fn os_policies.resource_groups.resources.pkg.rpm.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.new` constructs a new object with attributes and blocks configured for the `rpm`
Terraform sub block.



**Args**:
  - `pull_deps` (`bool`): Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm` When `null`, the `pull_deps` field will be omitted from the resulting object.
  - `source` (`list[obj]`): Required. An rpm package. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.new](#fn-os_policiesresource_groupsresourcespkgsourcenew) constructor.

**Returns**:
  - An attribute object that represents the `rpm` sub block.


## obj os_policies.resource_groups.resources.pkg.rpm.source



### fn os_policies.resource_groups.resources.pkg.rpm.source.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `allow_insecure` (`bool`): Defaults to false. When false, files are subject to validations based on the file type: Remote: A checksum must be specified. Cloud Storage: An object generation number must be specified. When `null`, the `allow_insecure` field will be omitted from the resulting object.
  - `local_path` (`string`): A local path within the VM to use. When `null`, the `local_path` field will be omitted from the resulting object.
  - `gcs` (`list[obj]`): A Cloud Storage object. When `null`, the `gcs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.gcs.new](#fn-os_policiesresource_groupsresourcespkgrpmgcsnew) constructor.
  - `remote` (`list[obj]`): A generic remote file. When `null`, the `remote` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.remote.new](#fn-os_policiesresource_groupsresourcespkgrpmremotenew) constructor.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj os_policies.resource_groups.resources.pkg.rpm.source.gcs



### fn os_policies.resource_groups.resources.pkg.rpm.source.gcs.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.gcs.new` constructs a new object with attributes and blocks configured for the `gcs`
Terraform sub block.



**Args**:
  - `bucket` (`string`): Required. Bucket of the Cloud Storage object.
  - `generation` (`number`): Generation number of the Cloud Storage object. When `null`, the `generation` field will be omitted from the resulting object.
  - `object` (`string`): Required. Name of the Cloud Storage object.

**Returns**:
  - An attribute object that represents the `gcs` sub block.


## obj os_policies.resource_groups.resources.pkg.rpm.source.remote



### fn os_policies.resource_groups.resources.pkg.rpm.source.remote.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.rpm.source.remote.new` constructs a new object with attributes and blocks configured for the `remote`
Terraform sub block.



**Args**:
  - `sha256_checksum` (`string`): SHA256 checksum of the remote file. When `null`, the `sha256_checksum` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI from which to fetch the object. It should contain both the protocol and path following the format `{protocol}://{location}`.

**Returns**:
  - An attribute object that represents the `remote` sub block.


## obj os_policies.resource_groups.resources.pkg.yum



### fn os_policies.resource_groups.resources.pkg.yum.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.yum.new` constructs a new object with attributes and blocks configured for the `yum`
Terraform sub block.



**Args**:
  - `name` (`string`): Required. Package name.

**Returns**:
  - An attribute object that represents the `yum` sub block.


## obj os_policies.resource_groups.resources.pkg.zypper



### fn os_policies.resource_groups.resources.pkg.zypper.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.pkg.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`
Terraform sub block.



**Args**:
  - `name` (`string`): Required. Package name.

**Returns**:
  - An attribute object that represents the `zypper` sub block.


## obj os_policies.resource_groups.resources.repository



### fn os_policies.resource_groups.resources.repository.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.new` constructs a new object with attributes and blocks configured for the `repository`
Terraform sub block.



**Args**:
  - `apt` (`list[obj]`): An Apt Repository. When `null`, the `apt` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.apt.new](#fn-os_policiesresource_groupsresourcesaptnew) constructor.
  - `goo` (`list[obj]`): A Goo Repository. When `null`, the `goo` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.goo.new](#fn-os_policiesresource_groupsresourcesgoonew) constructor.
  - `yum` (`list[obj]`): A Yum Repository. When `null`, the `yum` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.yum.new](#fn-os_policiesresource_groupsresourcesyumnew) constructor.
  - `zypper` (`list[obj]`): A Zypper Repository. When `null`, the `zypper` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.zypper.new](#fn-os_policiesresource_groupsresourceszyppernew) constructor.

**Returns**:
  - An attribute object that represents the `repository` sub block.


## obj os_policies.resource_groups.resources.repository.apt



### fn os_policies.resource_groups.resources.repository.apt.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.apt.new` constructs a new object with attributes and blocks configured for the `apt`
Terraform sub block.



**Args**:
  - `archive_type` (`string`): Required. Type of archive files in this repository. Possible values: ARCHIVE_TYPE_UNSPECIFIED, DEB, DEB_SRC
  - `components` (`list`): Required. List of components for this repository. Must contain at least one item.
  - `distribution` (`string`): Required. Distribution of this repository.
  - `gpg_key` (`string`): URI of the key file for this repository. The agent maintains a keyring at `/etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`. When `null`, the `gpg_key` field will be omitted from the resulting object.
  - `uri` (`string`): Required. URI for this repository.

**Returns**:
  - An attribute object that represents the `apt` sub block.


## obj os_policies.resource_groups.resources.repository.goo



### fn os_policies.resource_groups.resources.repository.goo.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.goo.new` constructs a new object with attributes and blocks configured for the `goo`
Terraform sub block.



**Args**:
  - `name` (`string`): Required. The name of the repository.
  - `url` (`string`): Required. The url of the repository.

**Returns**:
  - An attribute object that represents the `goo` sub block.


## obj os_policies.resource_groups.resources.repository.yum



### fn os_policies.resource_groups.resources.repository.yum.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.yum.new` constructs a new object with attributes and blocks configured for the `yum`
Terraform sub block.



**Args**:
  - `base_url` (`string`): Required. The location of the repository directory.
  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.
  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `yum` sub block.


## obj os_policies.resource_groups.resources.repository.zypper



### fn os_policies.resource_groups.resources.repository.zypper.new

```ts
new()
```


`google.os_config_os_policy_assignment.os_policies.resource_groups.resources.repository.zypper.new` constructs a new object with attributes and blocks configured for the `zypper`
Terraform sub block.



**Args**:
  - `base_url` (`string`): Required. The location of the repository directory.
  - `display_name` (`string`): The display name of the repository. When `null`, the `display_name` field will be omitted from the resulting object.
  - `gpg_keys` (`list`): URIs of GPG keys. When `null`, the `gpg_keys` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `zypper` sub block.


## obj rollout



### fn rollout.new

```ts
new()
```


`google.os_config_os_policy_assignment.rollout.new` constructs a new object with attributes and blocks configured for the `rollout`
Terraform sub block.



**Args**:
  - `min_wait_duration` (`string`): Required. This determines the minimum duration of time to wait after the configuration changes are applied through the current rollout. A VM continues to count towards the `disruption_budget` at least until this duration of time has passed after configuration changes are applied.
  - `disruption_budget` (`list[obj]`): Required. The maximum number (or percentage) of VMs per zone to disrupt at any given moment. When `null`, the `disruption_budget` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.os_config_os_policy_assignment.rollout.disruption_budget.new](#fn-disruption_budgetnew) constructor.

**Returns**:
  - An attribute object that represents the `rollout` sub block.


## obj rollout.disruption_budget



### fn rollout.disruption_budget.new

```ts
new()
```


`google.os_config_os_policy_assignment.rollout.disruption_budget.new` constructs a new object with attributes and blocks configured for the `disruption_budget`
Terraform sub block.



**Args**:
  - `fixed` (`number`): Specifies a fixed value. When `null`, the `fixed` field will be omitted from the resulting object.
  - `percent` (`number`): Specifies the relative value defined as a percentage, which will be multiplied by a reference value. When `null`, the `percent` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `disruption_budget` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.os_config_os_policy_assignment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

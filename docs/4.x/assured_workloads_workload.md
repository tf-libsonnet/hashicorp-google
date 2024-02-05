---
permalink: /assured_workloads_workload/
---

# assured_workloads_workload

`assured_workloads_workload` represents the `google_assured_workloads_workload` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBillingAccount()`](#fn-withbillingaccount)
* [`fn withComplianceRegime()`](#fn-withcomplianceregime)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withEnableSovereignControls()`](#fn-withenablesovereigncontrols)
* [`fn withKmsSettings()`](#fn-withkmssettings)
* [`fn withKmsSettingsMixin()`](#fn-withkmssettingsmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withOrganization()`](#fn-withorganization)
* [`fn withPartner()`](#fn-withpartner)
* [`fn withPartnerPermissions()`](#fn-withpartnerpermissions)
* [`fn withPartnerPermissionsMixin()`](#fn-withpartnerpermissionsmixin)
* [`fn withProvisionedResourcesParent()`](#fn-withprovisionedresourcesparent)
* [`fn withResourceSettings()`](#fn-withresourcesettings)
* [`fn withResourceSettingsMixin()`](#fn-withresourcesettingsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withViolationNotificationsEnabled()`](#fn-withviolationnotificationsenabled)
* [`obj kms_settings`](#obj-kms_settings)
  * [`fn new()`](#fn-kms_settingsnew)
* [`obj partner_permissions`](#obj-partner_permissions)
  * [`fn new()`](#fn-partner_permissionsnew)
* [`obj resource_settings`](#obj-resource_settings)
  * [`fn new()`](#fn-resource_settingsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.assured_workloads_workload.new` injects a new `google_assured_workloads_workload` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.assured_workloads_workload.new('some_id')

You can get the reference to the `id` field of the created `google.assured_workloads_workload` using the reference:

    $._ref.google_assured_workloads_workload.some_id.get('id')

This is the same as directly entering `"${ google_assured_workloads_workload.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `billing_account` (`string`): Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`. When `null`, the `billing_account` field will be omitted from the resulting object.
  - `compliance_regime` (`string`): Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT
  - `display_name` (`string`): Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  - `enable_sovereign_controls` (`bool`): Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers. When `null`, the `enable_sovereign_controls` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels applied to the workload.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `organization` (`string`): The organization for the resource
  - `partner` (`string`): Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN When `null`, the `partner` field will be omitted from the resulting object.
  - `provisioned_resources_parent` (`string`): Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id} When `null`, the `provisioned_resources_parent` field will be omitted from the resulting object.
  - `violation_notifications_enabled` (`bool`): Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload. When `null`, the `violation_notifications_enabled` field will be omitted from the resulting object.
  - `kms_settings` (`list[obj]`): **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field. When `null`, the `kms_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.kms_settings.new](#fn-kms_settingsnew) constructor.
  - `partner_permissions` (`list[obj]`): Optional. Permissions granted to the AW Partner SA account for the customer workload When `null`, the `partner_permissions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.partner_permissions.new](#fn-partner_permissionsnew) constructor.
  - `resource_settings` (`list[obj]`): Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional. When `null`, the `resource_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.resource_settings.new](#fn-resource_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.assured_workloads_workload.newAttrs` constructs a new object with attributes and blocks configured for the `assured_workloads_workload`
Terraform resource.

Unlike [google.assured_workloads_workload.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `billing_account` (`string`): Optional. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, `billingAccounts/012345-567890-ABCDEF`. When `null`, the `billing_account` field will be omitted from the resulting object.
  - `compliance_regime` (`string`): Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, HITRUST, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS, ISR_REGIONS, ISR_REGIONS_AND_SUPPORT, CA_PROTECTED_B, IL5, IL2, JP_REGIONS_AND_SUPPORT
  - `display_name` (`string`): Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  - `enable_sovereign_controls` (`bool`): Optional. Indicates the sovereignty status of the given workload. Currently meant to be used by Europe/Canada customers. When `null`, the `enable_sovereign_controls` field will be omitted from the resulting object.
  - `labels` (`obj`): Optional. Labels applied to the workload.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field `effective_labels` for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `organization` (`string`): The organization for the resource
  - `partner` (`string`): Optional. Partner regime associated with this workload. Possible values: PARTNER_UNSPECIFIED, LOCAL_CONTROLS_BY_S3NS, SOVEREIGN_CONTROLS_BY_T_SYSTEMS, SOVEREIGN_CONTROLS_BY_SIA_MINSAIT, SOVEREIGN_CONTROLS_BY_PSN When `null`, the `partner` field will be omitted from the resulting object.
  - `provisioned_resources_parent` (`string`): Input only. The parent resource for the resources managed by this Assured Workload. May be either empty or a folder resource which is a child of the Workload parent. If not specified all resources are created under the parent organization. Format: folders/{folder_id} When `null`, the `provisioned_resources_parent` field will be omitted from the resulting object.
  - `violation_notifications_enabled` (`bool`): Optional. Indicates whether the e-mail notification for a violation is enabled for a workload. This value will be by default True, and if not present will be considered as true. This should only be updated via updateWorkload call. Any Changes to this field during the createWorkload call will not be honored. This will always be true while creating the workload. When `null`, the `violation_notifications_enabled` field will be omitted from the resulting object.
  - `kms_settings` (`list[obj]`): **DEPRECATED** Input only. Settings used to create a CMEK crypto key. When set, a project with a KMS CMEK key is provisioned. This field is deprecated as of Feb 28, 2022. In order to create a Keyring, callers should specify, ENCRYPTION_KEYS_PROJECT or KEYRING in ResourceSettings.resource_type field. When `null`, the `kms_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.kms_settings.new](#fn-kms_settingsnew) constructor.
  - `partner_permissions` (`list[obj]`): Optional. Permissions granted to the AW Partner SA account for the customer workload When `null`, the `partner_permissions` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.partner_permissions.new](#fn-partner_permissionsnew) constructor.
  - `resource_settings` (`list[obj]`): Input only. Resource properties that are used to customize workload resources. These properties (such as custom project id) will be used to create workload resources if possible. This field is optional. When `null`, the `resource_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.resource_settings.new](#fn-resource_settingsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `assured_workloads_workload` resource into the root Terraform configuration.


### fn withBillingAccount

```ts
withBillingAccount()
```

`google.string.withBillingAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the billing_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `billing_account` field.


### fn withComplianceRegime

```ts
withComplianceRegime()
```

`google.string.withComplianceRegime` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the compliance_regime field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `compliance_regime` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withEnableSovereignControls

```ts
withEnableSovereignControls()
```

`google.bool.withEnableSovereignControls` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_sovereign_controls field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_sovereign_controls` field.


### fn withKmsSettings

```ts
withKmsSettings()
```

`google.list[obj].withKmsSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the kms_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withKmsSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `kms_settings` field.


### fn withKmsSettingsMixin

```ts
withKmsSettingsMixin()
```

`google.list[obj].withKmsSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the kms_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withKmsSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `kms_settings` field.


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


### fn withOrganization

```ts
withOrganization()
```

`google.string.withOrganization` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the organization field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `organization` field.


### fn withPartner

```ts
withPartner()
```

`google.string.withPartner` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the partner field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `partner` field.


### fn withPartnerPermissions

```ts
withPartnerPermissions()
```

`google.list[obj].withPartnerPermissions` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the partner_permissions field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withPartnerPermissionsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `partner_permissions` field.


### fn withPartnerPermissionsMixin

```ts
withPartnerPermissionsMixin()
```

`google.list[obj].withPartnerPermissionsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the partner_permissions field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withPartnerPermissions](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `partner_permissions` field.


### fn withProvisionedResourcesParent

```ts
withProvisionedResourcesParent()
```

`google.string.withProvisionedResourcesParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the provisioned_resources_parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `provisioned_resources_parent` field.


### fn withResourceSettings

```ts
withResourceSettings()
```

`google.list[obj].withResourceSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withResourceSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_settings` field.


### fn withResourceSettingsMixin

```ts
withResourceSettingsMixin()
```

`google.list[obj].withResourceSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the resource_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withResourceSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `resource_settings` field.


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


### fn withViolationNotificationsEnabled

```ts
withViolationNotificationsEnabled()
```

`google.bool.withViolationNotificationsEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the violation_notifications_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `violation_notifications_enabled` field.


## obj kms_settings



### fn kms_settings.new

```ts
new()
```


`google.assured_workloads_workload.kms_settings.new` constructs a new object with attributes and blocks configured for the `kms_settings`
Terraform sub block.



**Args**:
  - `next_rotation_time` (`string`): Required. Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.
  - `rotation_period` (`string`): Required. Input only. Immutable. will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.

**Returns**:
  - An attribute object that represents the `kms_settings` sub block.


## obj partner_permissions



### fn partner_permissions.new

```ts
new()
```


`google.assured_workloads_workload.partner_permissions.new` constructs a new object with attributes and blocks configured for the `partner_permissions`
Terraform sub block.



**Args**:
  - `assured_workloads_monitoring` (`bool`): Optional. Allow partner to view violation alerts. When `null`, the `assured_workloads_monitoring` field will be omitted from the resulting object.
  - `data_logs_viewer` (`bool`): Allow the partner to view inspectability logs and monitoring violations. When `null`, the `data_logs_viewer` field will be omitted from the resulting object.
  - `service_access_approver` (`bool`): Optional. Allow partner to view access approval logs. When `null`, the `service_access_approver` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `partner_permissions` sub block.


## obj resource_settings



### fn resource_settings.new

```ts
new()
```


`google.assured_workloads_workload.resource_settings.new` constructs a new object with attributes and blocks configured for the `resource_settings`
Terraform sub block.



**Args**:
  - `display_name` (`string`): User-assigned resource display name. If not empty it will be used to create a resource with the specified name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `resource_id` (`string`): Resource identifier. For a project this represents projectId. If the project is already taken, the workload creation will fail. For KeyRing, this represents the keyring_id. For a folder, don&#39;t set this value as folder_id is assigned by Google. When `null`, the `resource_id` field will be omitted from the resulting object.
  - `resource_type` (`string`): Indicates the type of resource. This field should be specified to correspond the id to the right project type (CONSUMER_PROJECT or ENCRYPTION_KEYS_PROJECT) Possible values: RESOURCE_TYPE_UNSPECIFIED, CONSUMER_PROJECT, ENCRYPTION_KEYS_PROJECT, KEYRING, CONSUMER_FOLDER When `null`, the `resource_type` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `resource_settings` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.assured_workloads_workload.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

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
* [`fn withKmsSettings()`](#fn-withkmssettings)
* [`fn withKmsSettingsMixin()`](#fn-withkmssettingsmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withOrganization()`](#fn-withorganization)
* [`fn withProvisionedResourcesParent()`](#fn-withprovisionedresourcesparent)
* [`fn withResourceSettings()`](#fn-withresourcesettings)
* [`fn withResourceSettingsMixin()`](#fn-withresourcesettingsmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj kms_settings`](#obj-kms_settings)
  * [`fn new()`](#fn-kms_settingsnew)
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
  - `billing_account` (`string`): Required. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, &#39;billingAccounts/012345-567890-ABCDEF`.
  - `compliance_regime` (`string`): Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS
  - `display_name` (`string`): Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  - `labels` (`obj`): Optional. Labels applied to the workload. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `organization` (`string`): The organization for the resource
  - `provisioned_resources_parent` (`string`): Input only. The parent resource for the resources managed by this Assured Workload. May be either an organization or a folder. Must be the same or a child of the Workload parent. If not specified all resources are created under the Workload parent. Formats: folders/{folder_id}, organizations/{organization_id} When `null`, the `provisioned_resources_parent` field will be omitted from the resulting object.
  - `kms_settings` (`list[obj]`): Input only. Settings used to create a CMEK crypto key. When set a project with a KMS CMEK key is provisioned. This field is mandatory for a subset of Compliance Regimes. When `null`, the `kms_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.kms_settings.new](#fn-kms_settingsnew) constructor.
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
  - `billing_account` (`string`): Required. Input only. The billing account used for the resources which are direct children of workload. This billing account is initially associated with the resources created as part of Workload creation. After the initial creation of these resources, the customer can change the assigned billing account. The resource name has the form `billingAccounts/{billing_account_id}`. For example, &#39;billingAccounts/012345-567890-ABCDEF`.
  - `compliance_regime` (`string`): Required. Immutable. Compliance Regime associated with this workload. Possible values: COMPLIANCE_REGIME_UNSPECIFIED, IL4, CJIS, FEDRAMP_HIGH, FEDRAMP_MODERATE, US_REGIONAL_ACCESS, HIPAA, EU_REGIONS_AND_SUPPORT, CA_REGIONS_AND_SUPPORT, ITAR, AU_REGIONS_AND_US_SUPPORT, ASSURED_WORKLOADS_FOR_PARTNERS
  - `display_name` (`string`): Required. The user-assigned display name of the Workload. When present it must be between 4 to 30 characters. Allowed characters are: lowercase and uppercase letters, numbers, hyphen, and spaces. Example: My Workload
  - `labels` (`obj`): Optional. Labels applied to the workload. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `organization` (`string`): The organization for the resource
  - `provisioned_resources_parent` (`string`): Input only. The parent resource for the resources managed by this Assured Workload. May be either an organization or a folder. Must be the same or a child of the Workload parent. If not specified all resources are created under the Workload parent. Formats: folders/{folder_id}, organizations/{organization_id} When `null`, the `provisioned_resources_parent` field will be omitted from the resulting object.
  - `kms_settings` (`list[obj]`): Input only. Settings used to create a CMEK crypto key. When set a project with a KMS CMEK key is provisioned. This field is mandatory for a subset of Compliance Regimes. When `null`, the `kms_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.assured_workloads_workload.kms_settings.new](#fn-kms_settingsnew) constructor.
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


## obj resource_settings



### fn resource_settings.new

```ts
new()
```


`google.assured_workloads_workload.resource_settings.new` constructs a new object with attributes and blocks configured for the `resource_settings`
Terraform sub block.



**Args**:
  - `resource_id` (`string`): Resource identifier. For a project this represents project_number. If the project is already taken, the workload creation will fail. When `null`, the `resource_id` field will be omitted from the resulting object.
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

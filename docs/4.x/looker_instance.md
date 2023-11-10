---
permalink: /looker_instance/
---

# looker_instance

`looker_instance` represents the `google_looker_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAdminSettings()`](#fn-withadminsettings)
* [`fn withAdminSettingsMixin()`](#fn-withadminsettingsmixin)
* [`fn withConsumerNetwork()`](#fn-withconsumernetwork)
* [`fn withDenyMaintenancePeriod()`](#fn-withdenymaintenanceperiod)
* [`fn withDenyMaintenancePeriodMixin()`](#fn-withdenymaintenanceperiodmixin)
* [`fn withEncryptionConfig()`](#fn-withencryptionconfig)
* [`fn withEncryptionConfigMixin()`](#fn-withencryptionconfigmixin)
* [`fn withMaintenanceWindow()`](#fn-withmaintenancewindow)
* [`fn withMaintenanceWindowMixin()`](#fn-withmaintenancewindowmixin)
* [`fn withName()`](#fn-withname)
* [`fn withOauthConfig()`](#fn-withoauthconfig)
* [`fn withOauthConfigMixin()`](#fn-withoauthconfigmixin)
* [`fn withPlatformEdition()`](#fn-withplatformedition)
* [`fn withPrivateIpEnabled()`](#fn-withprivateipenabled)
* [`fn withProject()`](#fn-withproject)
* [`fn withPublicIpEnabled()`](#fn-withpublicipenabled)
* [`fn withRegion()`](#fn-withregion)
* [`fn withReservedRange()`](#fn-withreservedrange)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUserMetadata()`](#fn-withusermetadata)
* [`fn withUserMetadataMixin()`](#fn-withusermetadatamixin)
* [`obj admin_settings`](#obj-admin_settings)
  * [`fn new()`](#fn-admin_settingsnew)
* [`obj deny_maintenance_period`](#obj-deny_maintenance_period)
  * [`fn new()`](#fn-deny_maintenance_periodnew)
  * [`obj deny_maintenance_period.end_date`](#obj-deny_maintenance_periodend_date)
    * [`fn new()`](#fn-deny_maintenance_periodend_datenew)
  * [`obj deny_maintenance_period.start_date`](#obj-deny_maintenance_periodstart_date)
    * [`fn new()`](#fn-deny_maintenance_periodstart_datenew)
  * [`obj deny_maintenance_period.time`](#obj-deny_maintenance_periodtime)
    * [`fn new()`](#fn-deny_maintenance_periodtimenew)
* [`obj encryption_config`](#obj-encryption_config)
  * [`fn new()`](#fn-encryption_confignew)
* [`obj maintenance_window`](#obj-maintenance_window)
  * [`fn new()`](#fn-maintenance_windownew)
  * [`obj maintenance_window.start_time`](#obj-maintenance_windowstart_time)
    * [`fn new()`](#fn-maintenance_windowstart_timenew)
* [`obj oauth_config`](#obj-oauth_config)
  * [`fn new()`](#fn-oauth_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj user_metadata`](#obj-user_metadata)
  * [`fn new()`](#fn-user_metadatanew)

## Fields

### fn new

```ts
new()
```


`google.looker_instance.new` injects a new `google_looker_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.looker_instance.new('some_id')

You can get the reference to the `id` field of the created `google.looker_instance` using the reference:

    $._ref.google_looker_instance.some_id.get('id')

This is the same as directly entering `"${ google_looker_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `consumer_network` (`string`): Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
Note that the consumer network may be in a different GCP project than the consumer
project that is hosting the Looker Instance. When `null`, the `consumer_network` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.
  - `platform_edition` (`string`): Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
- LOOKER_CORE_TRIAL: trial instance
- LOOKER_CORE_STANDARD: pay as you go standard instance
- LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
- LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
- LOOKER_CORE_EMBED_ANNUAL: subscription embed instance Default value: &#34;LOOKER_CORE_TRIAL&#34; Possible values: [&#34;LOOKER_CORE_TRIAL&#34;, &#34;LOOKER_CORE_STANDARD&#34;, &#34;LOOKER_CORE_STANDARD_ANNUAL&#34;, &#34;LOOKER_CORE_ENTERPRISE_ANNUAL&#34;, &#34;LOOKER_CORE_EMBED_ANNUAL&#34;] When `null`, the `platform_edition` field will be omitted from the resulting object.
  - `private_ip_enabled` (`bool`): Whether private IP is enabled on the Looker instance. When `null`, the `private_ip_enabled` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `public_ip_enabled` (`bool`): Whether public IP is enabled on the Looker instance. When `null`, the `public_ip_enabled` field will be omitted from the resulting object.
  - `region` (`string`): The name of the Looker region of the instance. When `null`, the `region` field will be omitted from the resulting object.
  - `reserved_range` (`string`): Name of a reserved IP address range within the consumer network, to be used for
private service access connection. User may or may not specify this in a request. When `null`, the `reserved_range` field will be omitted from the resulting object.
  - `admin_settings` (`list[obj]`): Looker instance Admin settings. When `null`, the `admin_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.admin_settings.new](#fn-admin_settingsnew) constructor.
  - `deny_maintenance_period` (`list[obj]`): Maintenance denial period for this instance.

You must allow at least 14 days of maintenance availability
between any two deny maintenance periods. When `null`, the `deny_maintenance_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.new](#fn-deny_maintenance_periodnew) constructor.
  - `encryption_config` (`list[obj]`): Looker instance encryption settings. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.encryption_config.new](#fn-encryption_confignew) constructor.
  - `maintenance_window` (`list[obj]`): Maintenance window for an instance.

Maintenance of your instance takes place once a month, and will require
your instance to be restarted during updates, which will temporarily
disrupt service. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.maintenance_window.new](#fn-maintenance_windownew) constructor.
  - `oauth_config` (`list[obj]`): Looker Instance OAuth login settings. When `null`, the `oauth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.oauth_config.new](#fn-oauth_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.timeouts.new](#fn-timeoutsnew) constructor.
  - `user_metadata` (`list[obj]`): Metadata about users for a Looker instance.

These settings are only available when platform edition LOOKER_CORE_STANDARD is set.

There are ten Standard and two Developer users included in the cost of the product.
You can allocate additional Standard, Viewer, and Developer users for this instance.
It is an optional step and can be modified later.

With the Standard edition of Looker (Google Cloud core), you can provision up to 50
total users, distributed across Viewer, Standard, and Developer. When `null`, the `user_metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.user_metadata.new](#fn-user_metadatanew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.looker_instance.newAttrs` constructs a new object with attributes and blocks configured for the `looker_instance`
Terraform resource.

Unlike [google.looker_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `consumer_network` (`string`): Network name in the consumer project in the format of: projects/{project}/global/networks/{network}
Note that the consumer network may be in a different GCP project than the consumer
project that is hosting the Looker Instance. When `null`, the `consumer_network` field will be omitted from the resulting object.
  - `name` (`string`): The ID of the instance or a fully qualified identifier for the instance.
  - `platform_edition` (`string`): Platform editions for a Looker instance. Each edition maps to a set of instance features, like its size. Must be one of these values:
- LOOKER_CORE_TRIAL: trial instance
- LOOKER_CORE_STANDARD: pay as you go standard instance
- LOOKER_CORE_STANDARD_ANNUAL: subscription standard instance
- LOOKER_CORE_ENTERPRISE_ANNUAL: subscription enterprise instance
- LOOKER_CORE_EMBED_ANNUAL: subscription embed instance Default value: &#34;LOOKER_CORE_TRIAL&#34; Possible values: [&#34;LOOKER_CORE_TRIAL&#34;, &#34;LOOKER_CORE_STANDARD&#34;, &#34;LOOKER_CORE_STANDARD_ANNUAL&#34;, &#34;LOOKER_CORE_ENTERPRISE_ANNUAL&#34;, &#34;LOOKER_CORE_EMBED_ANNUAL&#34;] When `null`, the `platform_edition` field will be omitted from the resulting object.
  - `private_ip_enabled` (`bool`): Whether private IP is enabled on the Looker instance. When `null`, the `private_ip_enabled` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `public_ip_enabled` (`bool`): Whether public IP is enabled on the Looker instance. When `null`, the `public_ip_enabled` field will be omitted from the resulting object.
  - `region` (`string`): The name of the Looker region of the instance. When `null`, the `region` field will be omitted from the resulting object.
  - `reserved_range` (`string`): Name of a reserved IP address range within the consumer network, to be used for
private service access connection. User may or may not specify this in a request. When `null`, the `reserved_range` field will be omitted from the resulting object.
  - `admin_settings` (`list[obj]`): Looker instance Admin settings. When `null`, the `admin_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.admin_settings.new](#fn-admin_settingsnew) constructor.
  - `deny_maintenance_period` (`list[obj]`): Maintenance denial period for this instance.

You must allow at least 14 days of maintenance availability
between any two deny maintenance periods. When `null`, the `deny_maintenance_period` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.new](#fn-deny_maintenance_periodnew) constructor.
  - `encryption_config` (`list[obj]`): Looker instance encryption settings. When `null`, the `encryption_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.encryption_config.new](#fn-encryption_confignew) constructor.
  - `maintenance_window` (`list[obj]`): Maintenance window for an instance.

Maintenance of your instance takes place once a month, and will require
your instance to be restarted during updates, which will temporarily
disrupt service. When `null`, the `maintenance_window` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.maintenance_window.new](#fn-maintenance_windownew) constructor.
  - `oauth_config` (`list[obj]`): Looker Instance OAuth login settings. When `null`, the `oauth_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.oauth_config.new](#fn-oauth_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.timeouts.new](#fn-timeoutsnew) constructor.
  - `user_metadata` (`list[obj]`): Metadata about users for a Looker instance.

These settings are only available when platform edition LOOKER_CORE_STANDARD is set.

There are ten Standard and two Developer users included in the cost of the product.
You can allocate additional Standard, Viewer, and Developer users for this instance.
It is an optional step and can be modified later.

With the Standard edition of Looker (Google Cloud core), you can provision up to 50
total users, distributed across Viewer, Standard, and Developer. When `null`, the `user_metadata` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.user_metadata.new](#fn-user_metadatanew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `looker_instance` resource into the root Terraform configuration.


### fn withAdminSettings

```ts
withAdminSettings()
```

`google.list[obj].withAdminSettings` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the admin_settings field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAdminSettingsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `admin_settings` field.


### fn withAdminSettingsMixin

```ts
withAdminSettingsMixin()
```

`google.list[obj].withAdminSettingsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the admin_settings field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAdminSettings](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `admin_settings` field.


### fn withConsumerNetwork

```ts
withConsumerNetwork()
```

`google.string.withConsumerNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the consumer_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `consumer_network` field.


### fn withDenyMaintenancePeriod

```ts
withDenyMaintenancePeriod()
```

`google.list[obj].withDenyMaintenancePeriod` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deny_maintenance_period field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDenyMaintenancePeriodMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deny_maintenance_period` field.


### fn withDenyMaintenancePeriodMixin

```ts
withDenyMaintenancePeriodMixin()
```

`google.list[obj].withDenyMaintenancePeriodMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the deny_maintenance_period field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDenyMaintenancePeriod](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `deny_maintenance_period` field.


### fn withEncryptionConfig

```ts
withEncryptionConfig()
```

`google.list[obj].withEncryptionConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEncryptionConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withEncryptionConfigMixin

```ts
withEncryptionConfigMixin()
```

`google.list[obj].withEncryptionConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the encryption_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `encryption_config` field.


### fn withMaintenanceWindow

```ts
withMaintenanceWindow()
```

`google.list[obj].withMaintenanceWindow` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaintenanceWindowMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.


### fn withMaintenanceWindowMixin

```ts
withMaintenanceWindowMixin()
```

`google.list[obj].withMaintenanceWindowMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the maintenance_window field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaintenanceWindow](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `maintenance_window` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withOauthConfig

```ts
withOauthConfig()
```

`google.list[obj].withOauthConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oauth_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withOauthConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oauth_config` field.


### fn withOauthConfigMixin

```ts
withOauthConfigMixin()
```

`google.list[obj].withOauthConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the oauth_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withOauthConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `oauth_config` field.


### fn withPlatformEdition

```ts
withPlatformEdition()
```

`google.string.withPlatformEdition` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the platform_edition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `platform_edition` field.


### fn withPrivateIpEnabled

```ts
withPrivateIpEnabled()
```

`google.bool.withPrivateIpEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the private_ip_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `private_ip_enabled` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withPublicIpEnabled

```ts
withPublicIpEnabled()
```

`google.bool.withPublicIpEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the public_ip_enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `public_ip_enabled` field.


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withReservedRange

```ts
withReservedRange()
```

`google.string.withReservedRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the reserved_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `reserved_range` field.


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


### fn withUserMetadata

```ts
withUserMetadata()
```

`google.list[obj].withUserMetadata` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the user_metadata field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withUserMetadataMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `user_metadata` field.


### fn withUserMetadataMixin

```ts
withUserMetadataMixin()
```

`google.list[obj].withUserMetadataMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the user_metadata field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withUserMetadata](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `user_metadata` field.


## obj admin_settings



### fn admin_settings.new

```ts
new()
```


`google.looker_instance.admin_settings.new` constructs a new object with attributes and blocks configured for the `admin_settings`
Terraform sub block.



**Args**:
  - `allowed_email_domains` (`list`): Email domain allowlist for the instance.

Define the email domains to which your users can deliver Looker (Google Cloud core) content.
Updating this list will restart the instance. Updating the allowed email domains from terraform
means the value provided will be considered as the entire list and not an amendment to the
existing list of allowed email domains. When `null`, the `allowed_email_domains` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `admin_settings` sub block.


## obj deny_maintenance_period



### fn deny_maintenance_period.new

```ts
new()
```


`google.looker_instance.deny_maintenance_period.new` constructs a new object with attributes and blocks configured for the `deny_maintenance_period`
Terraform sub block.



**Args**:
  - `end_date` (`list[obj]`): Required. Start date of the deny maintenance period When `null`, the `end_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.end_date.new](#fn-deny_maintenance_periodend_datenew) constructor.
  - `start_date` (`list[obj]`): Required. Start date of the deny maintenance period When `null`, the `start_date` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.start_date.new](#fn-deny_maintenance_periodstart_datenew) constructor.
  - `time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.deny_maintenance_period.time.new](#fn-deny_maintenance_periodtimenew) constructor.

**Returns**:
  - An attribute object that represents the `deny_maintenance_period` sub block.


## obj deny_maintenance_period.end_date



### fn deny_maintenance_period.end_date.new

```ts
new()
```


`google.looker_instance.deny_maintenance_period.end_date.new` constructs a new object with attributes and blocks configured for the `end_date`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.
  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a
month and day. When `null`, the `month` field will be omitted from the resulting object.
  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without
a year. When `null`, the `year` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `end_date` sub block.


## obj deny_maintenance_period.start_date



### fn deny_maintenance_period.start_date.new

```ts
new()
```


`google.looker_instance.deny_maintenance_period.start_date.new` constructs a new object with attributes and blocks configured for the `start_date`
Terraform sub block.



**Args**:
  - `day` (`number`): Day of a month. Must be from 1 to 31 and valid for the year and month, or 0
to specify a year by itself or a year and month where the day isn&#39;t significant. When `null`, the `day` field will be omitted from the resulting object.
  - `month` (`number`): Month of a year. Must be from 1 to 12, or 0 to specify a year without a
month and day. When `null`, the `month` field will be omitted from the resulting object.
  - `year` (`number`): Year of the date. Must be from 1 to 9999, or 0 to specify a date without
a year. When `null`, the `year` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `start_date` sub block.


## obj deny_maintenance_period.time



### fn deny_maintenance_period.time.new

```ts
new()
```


`google.looker_instance.deny_maintenance_period.time.new` constructs a new object with attributes and blocks configured for the `time`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.
  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `time` sub block.


## obj encryption_config



### fn encryption_config.new

```ts
new()
```


`google.looker_instance.encryption_config.new` constructs a new object with attributes and blocks configured for the `encryption_config`
Terraform sub block.



**Args**:
  - `kms_key_name` (`string`): Name of the customer managed encryption key (CMEK) in KMS. When `null`, the `kms_key_name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `encryption_config` sub block.


## obj maintenance_window



### fn maintenance_window.new

```ts
new()
```


`google.looker_instance.maintenance_window.new` constructs a new object with attributes and blocks configured for the `maintenance_window`
Terraform sub block.



**Args**:
  - `day_of_week` (`string`): Required. Day of the week for this MaintenanceWindow (in UTC).

- MONDAY: Monday
- TUESDAY: Tuesday
- WEDNESDAY: Wednesday
- THURSDAY: Thursday
- FRIDAY: Friday
- SATURDAY: Saturday
- SUNDAY: Sunday Possible values: [&#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;]
  - `start_time` (`list[obj]`): Required. Start time of the window in UTC time. When `null`, the `start_time` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.looker_instance.maintenance_window.start_time.new](#fn-maintenance_windowstart_timenew) constructor.

**Returns**:
  - An attribute object that represents the `maintenance_window` sub block.


## obj maintenance_window.start_time



### fn maintenance_window.start_time.new

```ts
new()
```


`google.looker_instance.maintenance_window.start_time.new` constructs a new object with attributes and blocks configured for the `start_time`
Terraform sub block.



**Args**:
  - `hours` (`number`): Hours of day in 24 hour format. Should be from 0 to 23. When `null`, the `hours` field will be omitted from the resulting object.
  - `minutes` (`number`): Minutes of hour of day. Must be from 0 to 59. When `null`, the `minutes` field will be omitted from the resulting object.
  - `nanos` (`number`): Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. When `null`, the `nanos` field will be omitted from the resulting object.
  - `seconds` (`number`): Seconds of minutes of the time. Must normally be from 0 to 59. When `null`, the `seconds` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `start_time` sub block.


## obj oauth_config



### fn oauth_config.new

```ts
new()
```


`google.looker_instance.oauth_config.new` constructs a new object with attributes and blocks configured for the `oauth_config`
Terraform sub block.



**Args**:
  - `client_id` (`string`): The client ID for the Oauth config.
  - `client_secret` (`string`): The client secret for the Oauth config.

**Returns**:
  - An attribute object that represents the `oauth_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.looker_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj user_metadata



### fn user_metadata.new

```ts
new()
```


`google.looker_instance.user_metadata.new` constructs a new object with attributes and blocks configured for the `user_metadata`
Terraform sub block.



**Args**:
  - `additional_developer_user_count` (`number`): Number of additional Developer Users to allocate to the Looker Instance. When `null`, the `additional_developer_user_count` field will be omitted from the resulting object.
  - `additional_standard_user_count` (`number`): Number of additional Standard Users to allocate to the Looker Instance. When `null`, the `additional_standard_user_count` field will be omitted from the resulting object.
  - `additional_viewer_user_count` (`number`): Number of additional Viewer Users to allocate to the Looker Instance. When `null`, the `additional_viewer_user_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `user_metadata` sub block.

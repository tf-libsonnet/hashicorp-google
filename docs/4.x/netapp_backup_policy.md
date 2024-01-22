---
permalink: /netapp_backup_policy/
---

# netapp_backup_policy

`netapp_backup_policy` represents the `google_netapp_backup_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDailyBackupLimit()`](#fn-withdailybackuplimit)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEnabled()`](#fn-withenabled)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMonthlyBackupLimit()`](#fn-withmonthlybackuplimit)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWeeklyBackupLimit()`](#fn-withweeklybackuplimit)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.netapp_backup_policy.new` injects a new `google_netapp_backup_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.netapp_backup_policy.new('some_id')

You can get the reference to the `id` field of the created `google.netapp_backup_policy` using the reference:

    $._ref.google_netapp_backup_policy.some_id.get('id')

This is the same as directly entering `"${ google_netapp_backup_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `daily_backup_limit` (`number`): Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `enabled` (`bool`): If enabled, make backups automatically according to the schedules.
This will be applied to all volumes that have this policy attached and enforced on volume level. When `null`, the `enabled` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Name of the region for the policy to apply to.
  - `monthly_backup_limit` (`number`): Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  - `name` (`string`): The name of the backup policy. Needs to be unique per location.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `weekly_backup_limit` (`number`): Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_backup_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.netapp_backup_policy.newAttrs` constructs a new object with attributes and blocks configured for the `netapp_backup_policy`
Terraform resource.

Unlike [google.netapp_backup_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `daily_backup_limit` (`number`): Number of daily backups to keep. Note that the minimum daily backup limit is 2.
  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.
  - `enabled` (`bool`): If enabled, make backups automatically according to the schedules.
This will be applied to all volumes that have this policy attached and enforced on volume level. When `null`, the `enabled` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels as key value pairs. Example: &#39;{ &#34;owner&#34;: &#34;Bob&#34;, &#34;department&#34;: &#34;finance&#34;, &#34;purpose&#34;: &#34;testing&#34; }&#39;.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Name of the region for the policy to apply to.
  - `monthly_backup_limit` (`number`): Number of monthly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  - `name` (`string`): The name of the backup policy. Needs to be unique per location.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `weekly_backup_limit` (`number`): Number of weekly backups to keep. Note that the sum of daily, weekly and monthly backups should be greater than 1.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.netapp_backup_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `netapp_backup_policy` resource into the root Terraform configuration.


### fn withDailyBackupLimit

```ts
withDailyBackupLimit()
```

`google.number.withDailyBackupLimit` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the daily_backup_limit field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `daily_backup_limit` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEnabled

```ts
withEnabled()
```

`google.bool.withEnabled` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enabled field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enabled` field.


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


### fn withMonthlyBackupLimit

```ts
withMonthlyBackupLimit()
```

`google.number.withMonthlyBackupLimit` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the monthly_backup_limit field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `monthly_backup_limit` field.


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


### fn withWeeklyBackupLimit

```ts
withWeeklyBackupLimit()
```

`google.number.withWeeklyBackupLimit` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the weekly_backup_limit field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `weekly_backup_limit` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.netapp_backup_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

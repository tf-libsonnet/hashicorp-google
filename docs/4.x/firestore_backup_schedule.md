---
permalink: /firestore_backup_schedule/
---

# firestore_backup_schedule

`firestore_backup_schedule` represents the `google_firestore_backup_schedule` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDailyRecurrence()`](#fn-withdailyrecurrence)
* [`fn withDailyRecurrenceMixin()`](#fn-withdailyrecurrencemixin)
* [`fn withDatabase()`](#fn-withdatabase)
* [`fn withProject()`](#fn-withproject)
* [`fn withRetention()`](#fn-withretention)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withWeeklyRecurrence()`](#fn-withweeklyrecurrence)
* [`fn withWeeklyRecurrenceMixin()`](#fn-withweeklyrecurrencemixin)
* [`obj daily_recurrence`](#obj-daily_recurrence)
  * [`fn new()`](#fn-daily_recurrencenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj weekly_recurrence`](#obj-weekly_recurrence)
  * [`fn new()`](#fn-weekly_recurrencenew)

## Fields

### fn new

```ts
new()
```


`google.firestore_backup_schedule.new` injects a new `google_firestore_backup_schedule` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.firestore_backup_schedule.new('some_id')

You can get the reference to the `id` field of the created `google.firestore_backup_schedule` using the reference:

    $._ref.google_firestore_backup_schedule.some_id.get('id')

This is the same as directly entering `"${ google_firestore_backup_schedule.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `retention` (`string`): At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;.

For a daily backup recurrence, set this to a value up to 7 days. If you set a weekly backup recurrence, set this to a value up to 14 weeks.
  - `daily_recurrence` (`list[obj]`): For a schedule that runs daily at a specified time. When `null`, the `daily_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.daily_recurrence.new](#fn-daily_recurrencenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.timeouts.new](#fn-timeoutsnew) constructor.
  - `weekly_recurrence` (`list[obj]`): For a schedule that runs weekly on a specific day and time. When `null`, the `weekly_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.weekly_recurrence.new](#fn-weekly_recurrencenew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.firestore_backup_schedule.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_backup_schedule`
Terraform resource.

Unlike [google.firestore_backup_schedule.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `database` (`string`): The Firestore database id. Defaults to &#39;&#34;(default)&#34;&#39;. When `null`, the `database` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `retention` (`string`): At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
A duration in seconds with up to nine fractional digits, ending with &#39;s&#39;. Example: &#34;3.5s&#34;.

For a daily backup recurrence, set this to a value up to 7 days. If you set a weekly backup recurrence, set this to a value up to 14 weeks.
  - `daily_recurrence` (`list[obj]`): For a schedule that runs daily at a specified time. When `null`, the `daily_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.daily_recurrence.new](#fn-daily_recurrencenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.timeouts.new](#fn-timeoutsnew) constructor.
  - `weekly_recurrence` (`list[obj]`): For a schedule that runs weekly on a specific day and time. When `null`, the `weekly_recurrence` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_backup_schedule.weekly_recurrence.new](#fn-weekly_recurrencenew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_backup_schedule` resource into the root Terraform configuration.


### fn withDailyRecurrence

```ts
withDailyRecurrence()
```

`google.list[obj].withDailyRecurrence` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the daily_recurrence field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDailyRecurrenceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `daily_recurrence` field.


### fn withDailyRecurrenceMixin

```ts
withDailyRecurrenceMixin()
```

`google.list[obj].withDailyRecurrenceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the daily_recurrence field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDailyRecurrence](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `daily_recurrence` field.


### fn withDatabase

```ts
withDatabase()
```

`google.string.withDatabase` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the database field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `database` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRetention

```ts
withRetention()
```

`google.string.withRetention` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the retention field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `retention` field.


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


### fn withWeeklyRecurrence

```ts
withWeeklyRecurrence()
```

`google.list[obj].withWeeklyRecurrence` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the weekly_recurrence field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withWeeklyRecurrenceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `weekly_recurrence` field.


### fn withWeeklyRecurrenceMixin

```ts
withWeeklyRecurrenceMixin()
```

`google.list[obj].withWeeklyRecurrenceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the weekly_recurrence field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withWeeklyRecurrence](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `weekly_recurrence` field.


## obj daily_recurrence



### fn daily_recurrence.new

```ts
new()
```


`google.firestore_backup_schedule.daily_recurrence.new` constructs a new object with attributes and blocks configured for the `daily_recurrence`
Terraform sub block.



**Returns**:
  - An attribute object that represents the `daily_recurrence` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.firestore_backup_schedule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj weekly_recurrence



### fn weekly_recurrence.new

```ts
new()
```


`google.firestore_backup_schedule.weekly_recurrence.new` constructs a new object with attributes and blocks configured for the `weekly_recurrence`
Terraform sub block.



**Args**:
  - `day` (`string`): The day of week to run. Possible values: [&#34;DAY_OF_WEEK_UNSPECIFIED&#34;, &#34;MONDAY&#34;, &#34;TUESDAY&#34;, &#34;WEDNESDAY&#34;, &#34;THURSDAY&#34;, &#34;FRIDAY&#34;, &#34;SATURDAY&#34;, &#34;SUNDAY&#34;] When `null`, the `day` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `weekly_recurrence` sub block.

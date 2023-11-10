---
permalink: /firestore_database/
---

# firestore_database

`firestore_database` represents the `google_firestore_database` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAppEngineIntegrationMode()`](#fn-withappengineintegrationmode)
* [`fn withConcurrencyMode()`](#fn-withconcurrencymode)
* [`fn withDeleteProtectionState()`](#fn-withdeleteprotectionstate)
* [`fn withLocationId()`](#fn-withlocationid)
* [`fn withName()`](#fn-withname)
* [`fn withPointInTimeRecoveryEnablement()`](#fn-withpointintimerecoveryenablement)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withType()`](#fn-withtype)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.firestore_database.new` injects a new `google_firestore_database` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.firestore_database.new('some_id')

You can get the reference to the `id` field of the created `google.firestore_database` using the reference:

    $._ref.google_firestore_database.some_id.get('id')

This is the same as directly entering `"${ google_firestore_database.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `app_engine_integration_mode` (`string`): The App Engine integration mode to use for this database. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `app_engine_integration_mode` field will be omitted from the resulting object.
  - `concurrency_mode` (`string`): The concurrency control mode to use for this database. Possible values: [&#34;OPTIMISTIC&#34;, &#34;PESSIMISTIC&#34;, &#34;OPTIMISTIC_WITH_ENTITY_GROUPS&#34;] When `null`, the `concurrency_mode` field will be omitted from the resulting object.
  - `delete_protection_state` (`string`): State of delete protection for the database. Possible values: [&#34;DELETE_PROTECTION_STATE_UNSPECIFIED&#34;, &#34;DELETE_PROTECTION_ENABLED&#34;, &#34;DELETE_PROTECTION_DISABLED&#34;] When `null`, the `delete_protection_state` field will be omitted from the resulting object.
  - `location_id` (`string`): The location of the database. Available locations are listed at
https://cloud.google.com/firestore/docs/locations.
  - `name` (`string`): The ID to use for the database, which will become the final
component of the database&#39;s resource name. This value should be 4-63
characters. Valid characters are /[a-z][0-9]-/ with first character
a letter and the last a letter or a number. Must not be
UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
&#34;(default)&#34; database id is also valid.
  - `point_in_time_recovery_enablement` (`string`): Whether to enable the PITR feature on this database.
If &#39;POINT_IN_TIME_RECOVERY_ENABLED&#39; is selected, reads are supported on selected versions of the data from within the past 7 days.
versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
and reads against 1-minute snapshots beyond 1 hour and within 7 days.
If &#39;POINT_IN_TIME_RECOVERY_DISABLED&#39; is selected, reads are supported on any version of the data from within the past 1 hour. Default value: &#34;POINT_IN_TIME_RECOVERY_DISABLED&#34; Possible values: [&#34;POINT_IN_TIME_RECOVERY_ENABLED&#34;, &#34;POINT_IN_TIME_RECOVERY_DISABLED&#34;] When `null`, the `point_in_time_recovery_enablement` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the database.
See https://cloud.google.com/datastore/docs/firestore-or-datastore
for information about how to choose. Possible values: [&#34;FIRESTORE_NATIVE&#34;, &#34;DATASTORE_MODE&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.firestore_database.newAttrs` constructs a new object with attributes and blocks configured for the `firestore_database`
Terraform resource.

Unlike [google.firestore_database.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `app_engine_integration_mode` (`string`): The App Engine integration mode to use for this database. Possible values: [&#34;ENABLED&#34;, &#34;DISABLED&#34;] When `null`, the `app_engine_integration_mode` field will be omitted from the resulting object.
  - `concurrency_mode` (`string`): The concurrency control mode to use for this database. Possible values: [&#34;OPTIMISTIC&#34;, &#34;PESSIMISTIC&#34;, &#34;OPTIMISTIC_WITH_ENTITY_GROUPS&#34;] When `null`, the `concurrency_mode` field will be omitted from the resulting object.
  - `delete_protection_state` (`string`): State of delete protection for the database. Possible values: [&#34;DELETE_PROTECTION_STATE_UNSPECIFIED&#34;, &#34;DELETE_PROTECTION_ENABLED&#34;, &#34;DELETE_PROTECTION_DISABLED&#34;] When `null`, the `delete_protection_state` field will be omitted from the resulting object.
  - `location_id` (`string`): The location of the database. Available locations are listed at
https://cloud.google.com/firestore/docs/locations.
  - `name` (`string`): The ID to use for the database, which will become the final
component of the database&#39;s resource name. This value should be 4-63
characters. Valid characters are /[a-z][0-9]-/ with first character
a letter and the last a letter or a number. Must not be
UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
&#34;(default)&#34; database id is also valid.
  - `point_in_time_recovery_enablement` (`string`): Whether to enable the PITR feature on this database.
If &#39;POINT_IN_TIME_RECOVERY_ENABLED&#39; is selected, reads are supported on selected versions of the data from within the past 7 days.
versionRetentionPeriod and earliestVersionTime can be used to determine the supported versions. These include reads against any timestamp within the past hour
and reads against 1-minute snapshots beyond 1 hour and within 7 days.
If &#39;POINT_IN_TIME_RECOVERY_DISABLED&#39; is selected, reads are supported on any version of the data from within the past 1 hour. Default value: &#34;POINT_IN_TIME_RECOVERY_DISABLED&#34; Possible values: [&#34;POINT_IN_TIME_RECOVERY_ENABLED&#34;, &#34;POINT_IN_TIME_RECOVERY_DISABLED&#34;] When `null`, the `point_in_time_recovery_enablement` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `type` (`string`): The type of the database.
See https://cloud.google.com/datastore/docs/firestore-or-datastore
for information about how to choose. Possible values: [&#34;FIRESTORE_NATIVE&#34;, &#34;DATASTORE_MODE&#34;]
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.firestore_database.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `firestore_database` resource into the root Terraform configuration.


### fn withAppEngineIntegrationMode

```ts
withAppEngineIntegrationMode()
```

`google.string.withAppEngineIntegrationMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the app_engine_integration_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `app_engine_integration_mode` field.


### fn withConcurrencyMode

```ts
withConcurrencyMode()
```

`google.string.withConcurrencyMode` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the concurrency_mode field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `concurrency_mode` field.


### fn withDeleteProtectionState

```ts
withDeleteProtectionState()
```

`google.string.withDeleteProtectionState` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the delete_protection_state field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `delete_protection_state` field.


### fn withLocationId

```ts
withLocationId()
```

`google.string.withLocationId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location_id` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPointInTimeRecoveryEnablement

```ts
withPointInTimeRecoveryEnablement()
```

`google.string.withPointInTimeRecoveryEnablement` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the point_in_time_recovery_enablement field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `point_in_time_recovery_enablement` field.


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


### fn withType

```ts
withType()
```

`google.string.withType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `type` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.firestore_database.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

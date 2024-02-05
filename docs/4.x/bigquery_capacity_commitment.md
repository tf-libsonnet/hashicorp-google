---
permalink: /bigquery_capacity_commitment/
---

# bigquery_capacity_commitment

`bigquery_capacity_commitment` represents the `google_bigquery_capacity_commitment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCapacityCommitmentId()`](#fn-withcapacitycommitmentid)
* [`fn withEdition()`](#fn-withedition)
* [`fn withEnforceSingleAdminProjectPerOrg()`](#fn-withenforcesingleadminprojectperorg)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPlan()`](#fn-withplan)
* [`fn withProject()`](#fn-withproject)
* [`fn withRenewalPlan()`](#fn-withrenewalplan)
* [`fn withSlotCount()`](#fn-withslotcount)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_capacity_commitment.new` injects a new `google_bigquery_capacity_commitment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_capacity_commitment.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_capacity_commitment` using the reference:

    $._ref.google_bigquery_capacity_commitment.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_capacity_commitment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `capacity_commitment_id` (`string`): The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
cannot be a dash. Max length is 64 characters. NOTE: this ID won&#39;t be kept if the capacity commitment is split
or merged. When `null`, the `capacity_commitment_id` field will be omitted from the resulting object.
  - `edition` (`string`): The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS When `null`, the `edition` field will be omitted from the resulting object.
  - `enforce_single_admin_project_per_org` (`string`): If true, fail the request if another project in the organization has a capacity commitment. When `null`, the `enforce_single_admin_project_per_org` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `plan` (`string`): Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `renewal_plan` (`string`): The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans. When `null`, the `renewal_plan` field will be omitted from the resulting object.
  - `slot_count` (`number`): Number of slots in this commitment.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_capacity_commitment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_capacity_commitment.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_capacity_commitment`
Terraform resource.

Unlike [google.bigquery_capacity_commitment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `capacity_commitment_id` (`string`): The optional capacity commitment ID. Capacity commitment name will be generated automatically if this field is
empty. This field must only contain lower case alphanumeric characters or dashes. The first and last character
cannot be a dash. Max length is 64 characters. NOTE: this ID won&#39;t be kept if the capacity commitment is split
or merged. When `null`, the `capacity_commitment_id` field will be omitted from the resulting object.
  - `edition` (`string`): The edition type. Valid values are STANDARD, ENTERPRISE, ENTERPRISE_PLUS When `null`, the `edition` field will be omitted from the resulting object.
  - `enforce_single_admin_project_per_org` (`string`): If true, fail the request if another project in the organization has a capacity commitment. When `null`, the `enforce_single_admin_project_per_org` field will be omitted from the resulting object.
  - `location` (`string`): The geographic location where the transfer config should reside.
Examples: US, EU, asia-northeast1. The default value is US. When `null`, the `location` field will be omitted from the resulting object.
  - `plan` (`string`): Capacity commitment plan. Valid values are at https://cloud.google.com/bigquery/docs/reference/reservations/rpc/google.cloud.bigquery.reservation.v1#commitmentplan
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `renewal_plan` (`string`): The plan this capacity commitment is converted to after commitmentEndTime passes. Once the plan is changed, committed period is extended according to commitment plan. Only applicable for some commitment plans. When `null`, the `renewal_plan` field will be omitted from the resulting object.
  - `slot_count` (`number`): Number of slots in this commitment.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_capacity_commitment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_capacity_commitment` resource into the root Terraform configuration.


### fn withCapacityCommitmentId

```ts
withCapacityCommitmentId()
```

`google.string.withCapacityCommitmentId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the capacity_commitment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `capacity_commitment_id` field.


### fn withEdition

```ts
withEdition()
```

`google.string.withEdition` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the edition field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `edition` field.


### fn withEnforceSingleAdminProjectPerOrg

```ts
withEnforceSingleAdminProjectPerOrg()
```

`google.string.withEnforceSingleAdminProjectPerOrg` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the enforce_single_admin_project_per_org field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `enforce_single_admin_project_per_org` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPlan

```ts
withPlan()
```

`google.string.withPlan` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the plan field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `plan` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRenewalPlan

```ts
withRenewalPlan()
```

`google.string.withRenewalPlan` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the renewal_plan field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `renewal_plan` field.


### fn withSlotCount

```ts
withSlotCount()
```

`google.number.withSlotCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the slot_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `slot_count` field.


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


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_capacity_commitment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

---
permalink: /bigquery_datapolicy_data_policy/
---

# bigquery_datapolicy_data_policy

`bigquery_datapolicy_data_policy` represents the `google_bigquery_datapolicy_data_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDataMaskingPolicy()`](#fn-withdatamaskingpolicy)
* [`fn withDataMaskingPolicyMixin()`](#fn-withdatamaskingpolicymixin)
* [`fn withDataPolicyId()`](#fn-withdatapolicyid)
* [`fn withDataPolicyType()`](#fn-withdatapolicytype)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPolicyTag()`](#fn-withpolicytag)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj data_masking_policy`](#obj-data_masking_policy)
  * [`fn new()`](#fn-data_masking_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigquery_datapolicy_data_policy.new` injects a new `google_bigquery_datapolicy_data_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigquery_datapolicy_data_policy.new('some_id')

You can get the reference to the `id` field of the created `google.bigquery_datapolicy_data_policy` using the reference:

    $._ref.google_bigquery_datapolicy_data_policy.some_id.get('id')

This is the same as directly entering `"${ google_bigquery_datapolicy_data_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `data_policy_id` (`string`): User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  - `data_policy_type` (`string`): The enrollment level of the service. Possible values: [&#34;COLUMN_LEVEL_SECURITY_POLICY&#34;, &#34;DATA_MASKING_POLICY&#34;]
  - `location` (`string`): The name of the location of the data policy.
  - `policy_tag` (`string`): Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `data_masking_policy` (`list[obj]`): The data masking policy that specifies the data masking rule to use. When `null`, the `data_masking_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.data_masking_policy.new](#fn-data_masking_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigquery_datapolicy_data_policy.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_datapolicy_data_policy`
Terraform resource.

Unlike [google.bigquery_datapolicy_data_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `data_policy_id` (`string`): User-assigned (human readable) ID of the data policy that needs to be unique within a project. Used as {dataPolicyId} in part of the resource name.
  - `data_policy_type` (`string`): The enrollment level of the service. Possible values: [&#34;COLUMN_LEVEL_SECURITY_POLICY&#34;, &#34;DATA_MASKING_POLICY&#34;]
  - `location` (`string`): The name of the location of the data policy.
  - `policy_tag` (`string`): Policy tag resource name, in the format of projects/{project_number}/locations/{locationId}/taxonomies/{taxonomyId}/policyTags/{policyTag_id}.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `data_masking_policy` (`list[obj]`): The data masking policy that specifies the data masking rule to use. When `null`, the `data_masking_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.data_masking_policy.new](#fn-data_masking_policynew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_datapolicy_data_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_datapolicy_data_policy` resource into the root Terraform configuration.


### fn withDataMaskingPolicy

```ts
withDataMaskingPolicy()
```

`google.list[obj].withDataMaskingPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_masking_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDataMaskingPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_masking_policy` field.


### fn withDataMaskingPolicyMixin

```ts
withDataMaskingPolicyMixin()
```

`google.list[obj].withDataMaskingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the data_masking_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDataMaskingPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `data_masking_policy` field.


### fn withDataPolicyId

```ts
withDataPolicyId()
```

`google.string.withDataPolicyId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_policy_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_policy_id` field.


### fn withDataPolicyType

```ts
withDataPolicyType()
```

`google.string.withDataPolicyType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the data_policy_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `data_policy_type` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPolicyTag

```ts
withPolicyTag()
```

`google.string.withPolicyTag` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the policy_tag field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `policy_tag` field.


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


## obj data_masking_policy



### fn data_masking_policy.new

```ts
new()
```


`google.bigquery_datapolicy_data_policy.data_masking_policy.new` constructs a new object with attributes and blocks configured for the `data_masking_policy`
Terraform sub block.



**Args**:
  - `predefined_expression` (`string`): The available masking rules. Learn more here: https://cloud.google.com/bigquery/docs/column-data-masking-intro#masking_options. Possible values: [&#34;SHA256&#34;, &#34;ALWAYS_NULL&#34;, &#34;DEFAULT_MASKING_VALUE&#34;, &#34;LAST_FOUR_CHARACTERS&#34;, &#34;FIRST_FOUR_CHARACTERS&#34;, &#34;EMAIL_MASK&#34;, &#34;DATE_YEAR_MASK&#34;]

**Returns**:
  - An attribute object that represents the `data_masking_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigquery_datapolicy_data_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

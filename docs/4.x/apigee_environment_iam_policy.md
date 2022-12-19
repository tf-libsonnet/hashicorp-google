---
permalink: /apigee_environment_iam_policy/
---

# apigee_environment_iam_policy

`apigee_environment_iam_policy` represents the `google_apigee_environment_iam_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEnvId()`](#fn-withenvid)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withPolicyData()`](#fn-withpolicydata)

## Fields

### fn new

```ts
new()
```


`google.apigee_environment_iam_policy.new` injects a new `google_apigee_environment_iam_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_environment_iam_policy.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_environment_iam_policy` using the reference:

    $._ref.google_apigee_environment_iam_policy.some_id.get('id')

This is the same as directly entering `"${ google_apigee_environment_iam_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `env_id` (`string`): Set the `env_id` field on the resulting resource block.
  - `org_id` (`string`): Set the `org_id` field on the resulting resource block.
  - `policy_data` (`string`): Set the `policy_data` field on the resulting resource block.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_environment_iam_policy.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_environment_iam_policy`
Terraform resource.

Unlike [google.apigee_environment_iam_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `env_id` (`string`): Set the `env_id` field on the resulting object.
  - `org_id` (`string`): Set the `org_id` field on the resulting object.
  - `policy_data` (`string`): Set the `policy_data` field on the resulting object.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_environment_iam_policy` resource into the root Terraform configuration.


### fn withEnvId

```ts
withEnvId()
```

`google.string.withEnvId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the env_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `env_id` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withPolicyData

```ts
withPolicyData()
```

`google.string.withPolicyData` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the policy_data field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `policy_data` field.

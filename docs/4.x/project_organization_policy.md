---
permalink: /project_organization_policy/
---

# project_organization_policy

`project_organization_policy` represents the `google_project_organization_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBooleanPolicy()`](#fn-withbooleanpolicy)
* [`fn withBooleanPolicyMixin()`](#fn-withbooleanpolicymixin)
* [`fn withConstraint()`](#fn-withconstraint)
* [`fn withListPolicy()`](#fn-withlistpolicy)
* [`fn withListPolicyMixin()`](#fn-withlistpolicymixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withRestorePolicy()`](#fn-withrestorepolicy)
* [`fn withRestorePolicyMixin()`](#fn-withrestorepolicymixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersion()`](#fn-withversion)
* [`obj boolean_policy`](#obj-boolean_policy)
  * [`fn new()`](#fn-boolean_policynew)
* [`obj list_policy`](#obj-list_policy)
  * [`fn new()`](#fn-list_policynew)
  * [`obj list_policy.allow`](#obj-list_policyallow)
    * [`fn new()`](#fn-list_policyallownew)
  * [`obj list_policy.deny`](#obj-list_policydeny)
    * [`fn new()`](#fn-list_policydenynew)
* [`obj restore_policy`](#obj-restore_policy)
  * [`fn new()`](#fn-restore_policynew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.project_organization_policy.new` injects a new `google_project_organization_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.project_organization_policy.new('some_id')

You can get the reference to the `id` field of the created `google.project_organization_policy` using the reference:

    $._ref.google_project_organization_policy.some_id.get('id')

This is the same as directly entering `"${ google_project_organization_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `constraint` (`string`): The name of the Constraint the Policy is configuring, for example, serviceuser.services.
  - `project` (`string`): The project ID.
  - `version` (`number`): Version of the Policy. Default version is 0. When `null`, the `version` field will be omitted from the resulting object.
  - `boolean_policy` (`list[obj]`): A boolean policy is a constraint that is either enforced or not. When `null`, the `boolean_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.boolean_policy.new](#fn-boolean_policynew) constructor.
  - `list_policy` (`list[obj]`): A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values.  When `null`, the `list_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.list_policy.new](#fn-list_policynew) constructor.
  - `restore_policy` (`list[obj]`): A restore policy is a constraint to restore the default policy. When `null`, the `restore_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.restore_policy.new](#fn-restore_policynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.project_organization_policy.newAttrs` constructs a new object with attributes and blocks configured for the `project_organization_policy`
Terraform resource.

Unlike [google.project_organization_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `constraint` (`string`): The name of the Constraint the Policy is configuring, for example, serviceuser.services.
  - `project` (`string`): The project ID.
  - `version` (`number`): Version of the Policy. Default version is 0. When `null`, the `version` field will be omitted from the resulting object.
  - `boolean_policy` (`list[obj]`): A boolean policy is a constraint that is either enforced or not. When `null`, the `boolean_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.boolean_policy.new](#fn-boolean_policynew) constructor.
  - `list_policy` (`list[obj]`): A policy that can define specific values that are allowed or denied for the given constraint. It can also be used to allow or deny all values.  When `null`, the `list_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.list_policy.new](#fn-list_policynew) constructor.
  - `restore_policy` (`list[obj]`): A restore policy is a constraint to restore the default policy. When `null`, the `restore_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.restore_policy.new](#fn-restore_policynew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_organization_policy` resource into the root Terraform configuration.


### fn withBooleanPolicy

```ts
withBooleanPolicy()
```

`google.list[obj].withBooleanPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the boolean_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withBooleanPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `boolean_policy` field.


### fn withBooleanPolicyMixin

```ts
withBooleanPolicyMixin()
```

`google.list[obj].withBooleanPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the boolean_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withBooleanPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `boolean_policy` field.


### fn withConstraint

```ts
withConstraint()
```

`google.string.withConstraint` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the constraint field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `constraint` field.


### fn withListPolicy

```ts
withListPolicy()
```

`google.list[obj].withListPolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the list_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withListPolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `list_policy` field.


### fn withListPolicyMixin

```ts
withListPolicyMixin()
```

`google.list[obj].withListPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the list_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withListPolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `list_policy` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRestorePolicy

```ts
withRestorePolicy()
```

`google.list[obj].withRestorePolicy` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_policy field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRestorePolicyMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_policy` field.


### fn withRestorePolicyMixin

```ts
withRestorePolicyMixin()
```

`google.list[obj].withRestorePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the restore_policy field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRestorePolicy](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `restore_policy` field.


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


### fn withVersion

```ts
withVersion()
```

`google.number.withVersion` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `version` field.


## obj boolean_policy



### fn boolean_policy.new

```ts
new()
```


`google.project_organization_policy.boolean_policy.new` constructs a new object with attributes and blocks configured for the `boolean_policy`
Terraform sub block.



**Args**:
  - `enforced` (`bool`): If true, then the Policy is enforced. If false, then any configuration is acceptable.

**Returns**:
  - An attribute object that represents the `boolean_policy` sub block.


## obj list_policy



### fn list_policy.new

```ts
new()
```


`google.project_organization_policy.list_policy.new` constructs a new object with attributes and blocks configured for the `list_policy`
Terraform sub block.



**Args**:
  - `inherit_from_parent` (`bool`): If set to true, the values from the effective Policy of the parent resource are inherited, meaning the values set in this Policy are added to the values inherited up the hierarchy. When `null`, the `inherit_from_parent` field will be omitted from the resulting object.
  - `suggested_value` (`string`): The Google Cloud Console will try to default to a configuration that matches the value specified in this field. When `null`, the `suggested_value` field will be omitted from the resulting object.
  - `allow` (`list[obj]`): One or the other must be set. When `null`, the `allow` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.list_policy.allow.new](#fn-project_organization_policyallownew) constructor.
  - `deny` (`list[obj]`): One or the other must be set. When `null`, the `deny` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_organization_policy.list_policy.deny.new](#fn-project_organization_policydenynew) constructor.

**Returns**:
  - An attribute object that represents the `list_policy` sub block.


## obj list_policy.allow



### fn list_policy.allow.new

```ts
new()
```


`google.project_organization_policy.list_policy.allow.new` constructs a new object with attributes and blocks configured for the `allow`
Terraform sub block.



**Args**:
  - `all` (`bool`): The policy allows or denies all values. When `null`, the `all` field will be omitted from the resulting object.
  - `values` (`list`): The policy can define specific values that are allowed or denied. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `allow` sub block.


## obj list_policy.deny



### fn list_policy.deny.new

```ts
new()
```


`google.project_organization_policy.list_policy.deny.new` constructs a new object with attributes and blocks configured for the `deny`
Terraform sub block.



**Args**:
  - `all` (`bool`): The policy allows or denies all values. When `null`, the `all` field will be omitted from the resulting object.
  - `values` (`list`): The policy can define specific values that are allowed or denied. When `null`, the `values` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `deny` sub block.


## obj restore_policy



### fn restore_policy.new

```ts
new()
```


`google.project_organization_policy.restore_policy.new` constructs a new object with attributes and blocks configured for the `restore_policy`
Terraform sub block.



**Args**:
  - `default` (`bool`): May only be set to true. If set, then the default Policy is restored.

**Returns**:
  - An attribute object that represents the `restore_policy` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.project_organization_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

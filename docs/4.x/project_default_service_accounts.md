---
permalink: /project_default_service_accounts/
---

# project_default_service_accounts

`project_default_service_accounts` represents the `google_project_default_service_accounts` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAction()`](#fn-withaction)
* [`fn withProject()`](#fn-withproject)
* [`fn withRestorePolicy()`](#fn-withrestorepolicy)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.project_default_service_accounts.new` injects a new `google_project_default_service_accounts` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.project_default_service_accounts.new('some_id')

You can get the reference to the `id` field of the created `google.project_default_service_accounts` using the reference:

    $._ref.google_project_default_service_accounts.some_id.get('id')

This is the same as directly entering `"${ google_project_default_service_accounts.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `action` (`string`): The action to be performed in the default service accounts. Valid values are: DEPRIVILEGE, DELETE, DISABLE.
				Note that DEPRIVILEGE action will ignore the REVERT configuration in the restore_policy.
  - `project` (`string`): The project ID where service accounts are created.
  - `restore_policy` (`string`): The action to be performed in the default service accounts on the resource destroy.
				Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE. When `null`, the `restore_policy` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_default_service_accounts.timeouts.new](#fn-projectdefaultserviceaccountstimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.project_default_service_accounts.newAttrs` constructs a new object with attributes and blocks configured for the `project_default_service_accounts`
Terraform resource.

Unlike [google.project_default_service_accounts.new](#fn-projectdefaultserviceaccountsnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `action` (`string`): The action to be performed in the default service accounts. Valid values are: DEPRIVILEGE, DELETE, DISABLE.
				Note that DEPRIVILEGE action will ignore the REVERT configuration in the restore_policy.
  - `project` (`string`): The project ID where service accounts are created.
  - `restore_policy` (`string`): The action to be performed in the default service accounts on the resource destroy.
				Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE. When `null`, the `restore_policy` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.project_default_service_accounts.timeouts.new](#fn-projectdefaultserviceaccountstimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_default_service_accounts` resource into the root Terraform configuration.


### fn withAction

```ts
withAction()
```

`google.project_default_service_accounts.withAction` constructs a mixin object that can be merged into the `project_default_service_accounts`
Terraform resource block to set or update the action field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `action` field.


### fn withProject

```ts
withProject()
```

`google.project_default_service_accounts.withProject` constructs a mixin object that can be merged into the `project_default_service_accounts`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withRestorePolicy

```ts
withRestorePolicy()
```

`google.project_default_service_accounts.withRestorePolicy` constructs a mixin object that can be merged into the `project_default_service_accounts`
Terraform resource block to set or update the restore_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `restore_policy` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.project_default_service_accounts.withTimeouts` constructs a mixin object that can be merged into the `project_default_service_accounts`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.project_default_service_accounts.withTimeoutsMixin` constructs a mixin object that can be merged into the `project_default_service_accounts`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.project_default_service_accounts.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.project_default_service_accounts.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

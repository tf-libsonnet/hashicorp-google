---
permalink: /project_iam_custom_role/
---

# project_iam_custom_role

`project_iam_custom_role` represents the `google_project_iam_custom_role` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withPermissions()`](#fn-withpermissions)
* [`fn withProject()`](#fn-withproject)
* [`fn withRoleId()`](#fn-withroleid)
* [`fn withStage()`](#fn-withstage)
* [`fn withTitle()`](#fn-withtitle)

## Fields

### fn new

```ts
new()
```


`google.project_iam_custom_role.new` injects a new `google_project_iam_custom_role` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.project_iam_custom_role.new('some_id')

You can get the reference to the `id` field of the created `google.project_iam_custom_role` using the reference:

    $._ref.google_project_iam_custom_role.some_id.get('id')

This is the same as directly entering `"${ google_project_iam_custom_role.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A human-readable description for the role. When `null`, the `description` field will be omitted from the resulting object.
  - `permissions` (`list`): The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  - `project` (`string`): The project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.
  - `role_id` (`string`): The camel case role id to use for this role. Cannot contain - characters.
  - `stage` (`string`): The current launch stage of the role. Defaults to GA. When `null`, the `stage` field will be omitted from the resulting object.
  - `title` (`string`): A human-readable title for the role.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.project_iam_custom_role.newAttrs` constructs a new object with attributes and blocks configured for the `project_iam_custom_role`
Terraform resource.

Unlike [google.project_iam_custom_role.new](#fn-project_iam_custom_rolenew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A human-readable description for the role. When `null`, the `description` field will be omitted from the resulting object.
  - `permissions` (`list`): The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  - `project` (`string`): The project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.
  - `role_id` (`string`): The camel case role id to use for this role. Cannot contain - characters.
  - `stage` (`string`): The current launch stage of the role. Defaults to GA. When `null`, the `stage` field will be omitted from the resulting object.
  - `title` (`string`): A human-readable title for the role.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `project_iam_custom_role` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withPermissions

```ts
withPermissions()
```

`google.list.withPermissions` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the permissions field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `permissions` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRoleId

```ts
withRoleId()
```

`google.string.withRoleId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the role_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `role_id` field.


### fn withStage

```ts
withStage()
```

`google.string.withStage` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the stage field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `stage` field.


### fn withTitle

```ts
withTitle()
```

`google.string.withTitle` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the title field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `title` field.

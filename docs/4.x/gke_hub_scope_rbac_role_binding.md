---
permalink: /gke_hub_scope_rbac_role_binding/
---

# gke_hub_scope_rbac_role_binding

`gke_hub_scope_rbac_role_binding` represents the `google_gke_hub_scope_rbac_role_binding` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withGroup()`](#fn-withgroup)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withProject()`](#fn-withproject)
* [`fn withRole()`](#fn-withrole)
* [`fn withRoleMixin()`](#fn-withrolemixin)
* [`fn withScopeId()`](#fn-withscopeid)
* [`fn withScopeRbacRoleBindingId()`](#fn-withscoperbacrolebindingid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withUser()`](#fn-withuser)
* [`obj role`](#obj-role)
  * [`fn new()`](#fn-rolenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_hub_scope_rbac_role_binding.new` injects a new `google_gke_hub_scope_rbac_role_binding` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_hub_scope_rbac_role_binding.new('some_id')

You can get the reference to the `id` field of the created `google.gke_hub_scope_rbac_role_binding` using the reference:

    $._ref.google_gke_hub_scope_rbac_role_binding.some_id.get('id')

This is the same as directly entering `"${ google_gke_hub_scope_rbac_role_binding.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `group` (`string`): Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
group is the group, as seen by the kubernetes cluster. When `null`, the `group` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels for this ScopeRBACRoleBinding. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `scope_id` (`string`): Id of the scope
  - `scope_rbac_role_binding_id` (`string`): The client-provided identifier of the RBAC Role Binding.
  - `user` (`string`): Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
user is the name of the user as seen by the kubernetes cluster, example
&#34;alice&#34; or &#34;alice@domain.tld&#34; When `null`, the `user` field will be omitted from the resulting object.
  - `role` (`list[obj]`): Role to bind to the principal. When `null`, the `role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.role.new](#fn-rolenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_hub_scope_rbac_role_binding.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_scope_rbac_role_binding`
Terraform resource.

Unlike [google.gke_hub_scope_rbac_role_binding.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `group` (`string`): Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
group is the group, as seen by the kubernetes cluster. When `null`, the `group` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels for this ScopeRBACRoleBinding. When `null`, the `labels` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `scope_id` (`string`): Id of the scope
  - `scope_rbac_role_binding_id` (`string`): The client-provided identifier of the RBAC Role Binding.
  - `user` (`string`): Principal that is be authorized in the cluster (at least of one the oneof
is required). Updating one will unset the other automatically.
user is the name of the user as seen by the kubernetes cluster, example
&#34;alice&#34; or &#34;alice@domain.tld&#34; When `null`, the `user` field will be omitted from the resulting object.
  - `role` (`list[obj]`): Role to bind to the principal. When `null`, the `role` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.role.new](#fn-rolenew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_scope_rbac_role_binding.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_scope_rbac_role_binding` resource into the root Terraform configuration.


### fn withGroup

```ts
withGroup()
```

`google.string.withGroup` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the group field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `group` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRole

```ts
withRole()
```

`google.list[obj].withRole` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the role field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withRoleMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `role` field.


### fn withRoleMixin

```ts
withRoleMixin()
```

`google.list[obj].withRoleMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the role field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withRole](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `role` field.


### fn withScopeId

```ts
withScopeId()
```

`google.string.withScopeId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the scope_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `scope_id` field.


### fn withScopeRbacRoleBindingId

```ts
withScopeRbacRoleBindingId()
```

`google.string.withScopeRbacRoleBindingId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the scope_rbac_role_binding_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `scope_rbac_role_binding_id` field.


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


### fn withUser

```ts
withUser()
```

`google.string.withUser` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the user field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `user` field.


## obj role



### fn role.new

```ts
new()
```


`google.gke_hub_scope_rbac_role_binding.role.new` constructs a new object with attributes and blocks configured for the `role`
Terraform sub block.



**Args**:
  - `predefined_role` (`string`): PredefinedRole is an ENUM representation of the default Kubernetes Roles Possible values: [&#34;UNKNOWN&#34;, &#34;ADMIN&#34;, &#34;EDIT&#34;, &#34;VIEW&#34;] When `null`, the `predefined_role` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `role` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_hub_scope_rbac_role_binding.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

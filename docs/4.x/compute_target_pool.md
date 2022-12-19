---
permalink: /compute_target_pool/
---

# compute_target_pool

`compute_target_pool` represents the `google_compute_target_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBackupPool()`](#fn-withbackuppool)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFailoverRatio()`](#fn-withfailoverratio)
* [`fn withHealthChecks()`](#fn-withhealthchecks)
* [`fn withInstances()`](#fn-withinstances)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSessionAffinity()`](#fn-withsessionaffinity)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_target_pool.new` injects a new `google_compute_target_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_target_pool.new('some_id')

You can get the reference to the `id` field of the created `google.compute_target_pool` using the reference:

    $._ref.google_compute_target_pool.some_id.get('id')

This is the same as directly entering `"${ google_compute_target_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `backup_pool` (`string`): URL to the backup target pool. Must also set failover_ratio. When `null`, the `backup_pool` field will be omitted from the resulting object.
  - `description` (`string`): Textual description field. When `null`, the `description` field will be omitted from the resulting object.
  - `failover_ratio` (`number`): Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set). When `null`, the `failover_ratio` field will be omitted from the resulting object.
  - `health_checks` (`list`): List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported. When `null`, the `health_checks` field will be omitted from the resulting object.
  - `instances` (`list`): List of instances in the pool. They can be given as URLs, or in the form of &#34;zone/name&#34;. Note that the instances need not exist at the time of target pool creation, so there is no need to use the Terraform interpolators to create a dependency on the instances from the target pool. When `null`, the `instances` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource, required by GCE. Changing this forces a new resource to be created.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Where the target pool resides. Defaults to project region. When `null`, the `region` field will be omitted from the resulting object.
  - `session_affinity` (`string`): How to distribute load. Options are &#34;NONE&#34; (no affinity). &#34;CLIENT_IP&#34; (hash of the source/dest addresses / ports), and &#34;CLIENT_IP_PROTO&#34; also includes the protocol (default &#34;NONE&#34;). When `null`, the `session_affinity` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_target_pool.newAttrs` constructs a new object with attributes and blocks configured for the `compute_target_pool`
Terraform resource.

Unlike [google.compute_target_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `backup_pool` (`string`): URL to the backup target pool. Must also set failover_ratio. When `null`, the `backup_pool` field will be omitted from the resulting object.
  - `description` (`string`): Textual description field. When `null`, the `description` field will be omitted from the resulting object.
  - `failover_ratio` (`number`): Ratio (0 to 1) of failed nodes before using the backup pool (which must also be set). When `null`, the `failover_ratio` field will be omitted from the resulting object.
  - `health_checks` (`list`): List of zero or one health check name or self_link. Only legacy google_compute_http_health_check is supported. When `null`, the `health_checks` field will be omitted from the resulting object.
  - `instances` (`list`): List of instances in the pool. They can be given as URLs, or in the form of &#34;zone/name&#34;. Note that the instances need not exist at the time of target pool creation, so there is no need to use the Terraform interpolators to create a dependency on the instances from the target pool. When `null`, the `instances` field will be omitted from the resulting object.
  - `name` (`string`): A unique name for the resource, required by GCE. Changing this forces a new resource to be created.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Where the target pool resides. Defaults to project region. When `null`, the `region` field will be omitted from the resulting object.
  - `session_affinity` (`string`): How to distribute load. Options are &#34;NONE&#34; (no affinity). &#34;CLIENT_IP&#34; (hash of the source/dest addresses / ports), and &#34;CLIENT_IP_PROTO&#34; also includes the protocol (default &#34;NONE&#34;). When `null`, the `session_affinity` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_target_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_target_pool` resource into the root Terraform configuration.


### fn withBackupPool

```ts
withBackupPool()
```

`google.string.withBackupPool` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the backup_pool field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `backup_pool` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFailoverRatio

```ts
withFailoverRatio()
```

`google.number.withFailoverRatio` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the failover_ratio field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `failover_ratio` field.


### fn withHealthChecks

```ts
withHealthChecks()
```

`google.list.withHealthChecks` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the health_checks field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `health_checks` field.


### fn withInstances

```ts
withInstances()
```

`google.list.withInstances` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `instances` field.


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


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withSessionAffinity

```ts
withSessionAffinity()
```

`google.string.withSessionAffinity` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the session_affinity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `session_affinity` field.


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


`google.compute_target_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

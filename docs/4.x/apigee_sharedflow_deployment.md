---
permalink: /apigee_sharedflow_deployment/
---

# apigee_sharedflow_deployment

`apigee_sharedflow_deployment` represents the `google_apigee_sharedflow_deployment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withEnvironment()`](#fn-withenvironment)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withRevision()`](#fn-withrevision)
* [`fn withServiceAccount()`](#fn-withserviceaccount)
* [`fn withSharedflowId()`](#fn-withsharedflowid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_sharedflow_deployment.new` injects a new `google_apigee_sharedflow_deployment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_sharedflow_deployment.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_sharedflow_deployment` using the reference:

    $._ref.google_apigee_sharedflow_deployment.some_id.get('id')

This is the same as directly entering `"${ google_apigee_sharedflow_deployment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `environment` (`string`): The resource ID of the environment.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance
  - `revision` (`string`): Revision of the Sharedflow to be deployed.
  - `service_account` (`string`): The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com. When `null`, the `service_account` field will be omitted from the resulting object.
  - `sharedflow_id` (`string`): Id of the Sharedflow to be deployed.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_sharedflow_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_sharedflow_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_sharedflow_deployment`
Terraform resource.

Unlike [google.apigee_sharedflow_deployment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `environment` (`string`): The resource ID of the environment.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee instance
  - `revision` (`string`): Revision of the Sharedflow to be deployed.
  - `service_account` (`string`): The service account represents the identity of the deployed proxy, and determines what permissions it has. The format must be {ACCOUNT_ID}@{PROJECT}.iam.gserviceaccount.com. When `null`, the `service_account` field will be omitted from the resulting object.
  - `sharedflow_id` (`string`): Id of the Sharedflow to be deployed.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_sharedflow_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_sharedflow_deployment` resource into the root Terraform configuration.


### fn withEnvironment

```ts
withEnvironment()
```

`google.string.withEnvironment` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the environment field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `environment` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


### fn withRevision

```ts
withRevision()
```

`google.string.withRevision` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the revision field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `revision` field.


### fn withServiceAccount

```ts
withServiceAccount()
```

`google.string.withServiceAccount` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the service_account field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `service_account` field.


### fn withSharedflowId

```ts
withSharedflowId()
```

`google.string.withSharedflowId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the sharedflow_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `sharedflow_id` field.


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


`google.apigee_sharedflow_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

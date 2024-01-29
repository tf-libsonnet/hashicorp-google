---
permalink: /securityposture_posture_deployment/
---

# securityposture_posture_deployment

`securityposture_posture_deployment` represents the `google_securityposture_posture_deployment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withParent()`](#fn-withparent)
* [`fn withPostureDeploymentId()`](#fn-withposturedeploymentid)
* [`fn withPostureId()`](#fn-withpostureid)
* [`fn withPostureRevisionId()`](#fn-withposturerevisionid)
* [`fn withTargetResource()`](#fn-withtargetresource)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.securityposture_posture_deployment.new` injects a new `google_securityposture_posture_deployment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.securityposture_posture_deployment.new('some_id')

You can get the reference to the `id` field of the created `google.securityposture_posture_deployment` using the reference:

    $._ref.google_securityposture_posture_deployment.some_id.get('id')

This is the same as directly entering `"${ google_securityposture_posture_deployment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): Description of the posture deployment. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource, eg. global&#39;.
  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.
  - `posture_deployment_id` (`string`): ID of the posture deployment.
  - `posture_id` (`string`): Relative name of the posture which needs to be deployed. It should be in the format:
  organizations/&lt;ORG_ID&gt;/locations/&lt;LOCATION&gt;/postures/&lt;postureID&gt;
  - `posture_revision_id` (`string`): Revision_id the posture which needs to be deployed.
  - `target_resource` (`string`): The resource on which the posture should be deployed. This can be in one of the following formats:
projects/&lt;project_number&gt;
folders/&lt;folder_number&gt;
organizations/&lt;organization_id&gt;
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.securityposture_posture_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `securityposture_posture_deployment`
Terraform resource.

Unlike [google.securityposture_posture_deployment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): Description of the posture deployment. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource, eg. global&#39;.
  - `parent` (`string`): The parent of the resource, an organization. Format should be &#39;organizations/{organization_id}&#39;.
  - `posture_deployment_id` (`string`): ID of the posture deployment.
  - `posture_id` (`string`): Relative name of the posture which needs to be deployed. It should be in the format:
  organizations/&lt;ORG_ID&gt;/locations/&lt;LOCATION&gt;/postures/&lt;postureID&gt;
  - `posture_revision_id` (`string`): Revision_id the posture which needs to be deployed.
  - `target_resource` (`string`): The resource on which the posture should be deployed. This can be in one of the following formats:
projects/&lt;project_number&gt;
folders/&lt;folder_number&gt;
organizations/&lt;organization_id&gt;
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.securityposture_posture_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `securityposture_posture_deployment` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withParent

```ts
withParent()
```

`google.string.withParent` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the parent field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `parent` field.


### fn withPostureDeploymentId

```ts
withPostureDeploymentId()
```

`google.string.withPostureDeploymentId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the posture_deployment_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `posture_deployment_id` field.


### fn withPostureId

```ts
withPostureId()
```

`google.string.withPostureId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the posture_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `posture_id` field.


### fn withPostureRevisionId

```ts
withPostureRevisionId()
```

`google.string.withPostureRevisionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the posture_revision_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `posture_revision_id` field.


### fn withTargetResource

```ts
withTargetResource()
```

`google.string.withTargetResource` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the target_resource field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `target_resource` field.


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


`google.securityposture_posture_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

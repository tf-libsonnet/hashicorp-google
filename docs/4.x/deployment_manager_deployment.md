---
permalink: /deployment_manager_deployment/
---

# deployment_manager_deployment

`deployment_manager_deployment` represents the `google_deployment_manager_deployment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCreatePolicy()`](#fn-withcreatepolicy)
* [`fn withDeletePolicy()`](#fn-withdeletepolicy)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLabelsMixin()`](#fn-withlabelsmixin)
* [`fn withName()`](#fn-withname)
* [`fn withPreview()`](#fn-withpreview)
* [`fn withProject()`](#fn-withproject)
* [`fn withTarget()`](#fn-withtarget)
* [`fn withTargetMixin()`](#fn-withtargetmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj labels`](#obj-labels)
  * [`fn new()`](#fn-labelsnew)
* [`obj target`](#obj-target)
  * [`fn new()`](#fn-targetnew)
  * [`obj target.config`](#obj-targetconfig)
    * [`fn new()`](#fn-targetconfignew)
  * [`obj target.imports`](#obj-targetimports)
    * [`fn new()`](#fn-targetimportsnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.deployment_manager_deployment.new` injects a new `google_deployment_manager_deployment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.deployment_manager_deployment.new('some_id')

You can get the reference to the `id` field of the created `google.deployment_manager_deployment` using the reference:

    $._ref.google_deployment_manager_deployment.some_id.get('id')

This is the same as directly entering `"${ google_deployment_manager_deployment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `create_policy` (`string`): Set the policy to use for creating new resources. Only used on
create and update. Valid values are &#39;CREATE_OR_ACQUIRE&#39; (default) or
&#39;ACQUIRE&#39;. If set to &#39;ACQUIRE&#39; and resources do not already exist,
the deployment will fail. Note that updating this field does not
actually affect the deployment, just how it is updated. Default value: &#34;CREATE_OR_ACQUIRE&#34; Possible values: [&#34;ACQUIRE&#34;, &#34;CREATE_OR_ACQUIRE&#34;] When `null`, the `create_policy` field will be omitted from the resulting object.
  - `delete_policy` (`string`): Set the policy to use for deleting new resources on update/delete.
Valid values are &#39;DELETE&#39; (default) or &#39;ABANDON&#39;. If &#39;DELETE&#39;,
resource is deleted after removal from Deployment Manager. If
&#39;ABANDON&#39;, the resource is only removed from Deployment Manager
and is not actually deleted. Note that updating this field does not
actually change the deployment, just how it is updated. Default value: &#34;DELETE&#34; Possible values: [&#34;ABANDON&#34;, &#34;DELETE&#34;] When `null`, the `delete_policy` field will be omitted from the resulting object.
  - `description` (`string`): Optional user-provided description of deployment. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Unique name for the deployment
  - `preview` (`bool`): If set to true, a deployment is created with &#34;shell&#34; resources
that are not actually instantiated. This allows you to preview a
deployment. It can be updated to false to actually deploy
with real resources.
 ~&gt;**NOTE:** Deployment Manager does not allow update
of a deployment in preview (unless updating to preview=false). Thus,
Terraform will force-recreate deployments if either preview is updated
to true or if other fields are updated while preview is true. When `null`, the `preview` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `labels` (`list[obj]`): Key-value pairs to apply to this labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.labels.new](#fn-labelsnew) constructor.
  - `target` (`list[obj]`): Parameters that define your deployment, including the deployment
configuration and relevant templates. When `null`, the `target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.new](#fn-targetnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.deployment_manager_deployment.newAttrs` constructs a new object with attributes and blocks configured for the `deployment_manager_deployment`
Terraform resource.

Unlike [google.deployment_manager_deployment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `create_policy` (`string`): Set the policy to use for creating new resources. Only used on
create and update. Valid values are &#39;CREATE_OR_ACQUIRE&#39; (default) or
&#39;ACQUIRE&#39;. If set to &#39;ACQUIRE&#39; and resources do not already exist,
the deployment will fail. Note that updating this field does not
actually affect the deployment, just how it is updated. Default value: &#34;CREATE_OR_ACQUIRE&#34; Possible values: [&#34;ACQUIRE&#34;, &#34;CREATE_OR_ACQUIRE&#34;] When `null`, the `create_policy` field will be omitted from the resulting object.
  - `delete_policy` (`string`): Set the policy to use for deleting new resources on update/delete.
Valid values are &#39;DELETE&#39; (default) or &#39;ABANDON&#39;. If &#39;DELETE&#39;,
resource is deleted after removal from Deployment Manager. If
&#39;ABANDON&#39;, the resource is only removed from Deployment Manager
and is not actually deleted. Note that updating this field does not
actually change the deployment, just how it is updated. Default value: &#34;DELETE&#34; Possible values: [&#34;ABANDON&#34;, &#34;DELETE&#34;] When `null`, the `delete_policy` field will be omitted from the resulting object.
  - `description` (`string`): Optional user-provided description of deployment. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Unique name for the deployment
  - `preview` (`bool`): If set to true, a deployment is created with &#34;shell&#34; resources
that are not actually instantiated. This allows you to preview a
deployment. It can be updated to false to actually deploy
with real resources.
 ~&gt;**NOTE:** Deployment Manager does not allow update
of a deployment in preview (unless updating to preview=false). Thus,
Terraform will force-recreate deployments if either preview is updated
to true or if other fields are updated while preview is true. When `null`, the `preview` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `labels` (`list[obj]`): Key-value pairs to apply to this labels. When `null`, the `labels` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.labels.new](#fn-labelsnew) constructor.
  - `target` (`list[obj]`): Parameters that define your deployment, including the deployment
configuration and relevant templates. When `null`, the `target` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.new](#fn-targetnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `deployment_manager_deployment` resource into the root Terraform configuration.


### fn withCreatePolicy

```ts
withCreatePolicy()
```

`google.string.withCreatePolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the create_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `create_policy` field.


### fn withDeletePolicy

```ts
withDeletePolicy()
```

`google.string.withDeletePolicy` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the delete_policy field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `delete_policy` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withLabels

```ts
withLabels()
```

`google.list[obj].withLabels` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the labels field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLabelsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `labels` field.


### fn withLabelsMixin

```ts
withLabelsMixin()
```

`google.list[obj].withLabelsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the labels field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLabels](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withPreview

```ts
withPreview()
```

`google.bool.withPreview` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the preview field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `preview` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withTarget

```ts
withTarget()
```

`google.list[obj].withTarget` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the target field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withTargetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `target` field.


### fn withTargetMixin

```ts
withTargetMixin()
```

`google.list[obj].withTargetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the target field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withTarget](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `target` field.


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


## obj labels



### fn labels.new

```ts
new()
```


`google.deployment_manager_deployment.labels.new` constructs a new object with attributes and blocks configured for the `labels`
Terraform sub block.



**Args**:
  - `key` (`string`): Key for label. When `null`, the `key` field will be omitted from the resulting object.
  - `value` (`string`): Value of label. When `null`, the `value` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `labels` sub block.


## obj target



### fn target.new

```ts
new()
```


`google.deployment_manager_deployment.target.new` constructs a new object with attributes and blocks configured for the `target`
Terraform sub block.



**Args**:
  - `config` (`list[obj]`): The root configuration file to use for this deployment. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.config.new](#fn-targetconfignew) constructor.
  - `imports` (`list[obj]`): Specifies import files for this configuration. This can be
used to import templates or other files. For example, you might
import a text file in order to use the file in a template. When `null`, the `imports` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.deployment_manager_deployment.target.imports.new](#fn-targetimportsnew) constructor.

**Returns**:
  - An attribute object that represents the `target` sub block.


## obj target.config



### fn target.config.new

```ts
new()
```


`google.deployment_manager_deployment.target.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `content` (`string`): The full YAML contents of your configuration file.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj target.imports



### fn target.imports.new

```ts
new()
```


`google.deployment_manager_deployment.target.imports.new` constructs a new object with attributes and blocks configured for the `imports`
Terraform sub block.



**Args**:
  - `content` (`string`): The full contents of the template that you want to import. When `null`, the `content` field will be omitted from the resulting object.
  - `name` (`string`): The name of the template to import, as declared in the YAML
configuration. When `null`, the `name` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `imports` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.deployment_manager_deployment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

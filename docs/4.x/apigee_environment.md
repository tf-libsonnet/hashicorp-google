---
permalink: /apigee_environment/
---

# apigee_environment

`apigee_environment` represents the `google_apigee_environment` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withApiProxyType()`](#fn-withapiproxytype)
* [`fn withDeploymentType()`](#fn-withdeploymenttype)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withName()`](#fn-withname)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withOrgId()`](#fn-withorgid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.apigee_environment.new` injects a new `google_apigee_environment` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.apigee_environment.new('some_id')

You can get the reference to the `id` field of the created `google.apigee_environment` using the reference:

    $._ref.google_apigee_environment.some_id.get('id')

This is the same as directly entering `"${ google_apigee_environment.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `api_proxy_type` (`string`): Optional. API Proxy type supported by the environment. The type can be set when creating
the Environment and cannot be changed. Possible values: [&#34;API_PROXY_TYPE_UNSPECIFIED&#34;, &#34;PROGRAMMABLE&#34;, &#34;CONFIGURABLE&#34;] When `null`, the `api_proxy_type` field will be omitted from the resulting object.
  - `deployment_type` (`string`): Optional. Deployment type supported by the environment. The deployment type can be
set when creating the environment and cannot be changed. When you enable archive
deployment, you will be prevented from performing a subset of actions within the
environment, including:
Managing the deployment of API proxy or shared flow revisions;
Creating, updating, or deleting resource files;
Creating, updating, or deleting target servers. Possible values: [&#34;DEPLOYMENT_TYPE_UNSPECIFIED&#34;, &#34;PROXY&#34;, &#34;ARCHIVE&#34;] When `null`, the `deployment_type` field will be omitted from the resulting object.
  - `description` (`string`): Description of the environment. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name of the environment. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The resource ID of the environment.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee environment,
in the format &#39;organizations/{{org_name}}&#39;.
  - `node_config` (`list[obj]`): NodeConfig for setting the min/max number of nodes associated with the environment. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.apigee_environment.newAttrs` constructs a new object with attributes and blocks configured for the `apigee_environment`
Terraform resource.

Unlike [google.apigee_environment.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `api_proxy_type` (`string`): Optional. API Proxy type supported by the environment. The type can be set when creating
the Environment and cannot be changed. Possible values: [&#34;API_PROXY_TYPE_UNSPECIFIED&#34;, &#34;PROGRAMMABLE&#34;, &#34;CONFIGURABLE&#34;] When `null`, the `api_proxy_type` field will be omitted from the resulting object.
  - `deployment_type` (`string`): Optional. Deployment type supported by the environment. The deployment type can be
set when creating the environment and cannot be changed. When you enable archive
deployment, you will be prevented from performing a subset of actions within the
environment, including:
Managing the deployment of API proxy or shared flow revisions;
Creating, updating, or deleting resource files;
Creating, updating, or deleting target servers. Possible values: [&#34;DEPLOYMENT_TYPE_UNSPECIFIED&#34;, &#34;PROXY&#34;, &#34;ARCHIVE&#34;] When `null`, the `deployment_type` field will be omitted from the resulting object.
  - `description` (`string`): Description of the environment. When `null`, the `description` field will be omitted from the resulting object.
  - `display_name` (`string`): Display name of the environment. When `null`, the `display_name` field will be omitted from the resulting object.
  - `name` (`string`): The resource ID of the environment.
  - `org_id` (`string`): The Apigee Organization associated with the Apigee environment,
in the format &#39;organizations/{{org_name}}&#39;.
  - `node_config` (`list[obj]`): NodeConfig for setting the min/max number of nodes associated with the environment. When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.apigee_environment.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `apigee_environment` resource into the root Terraform configuration.


### fn withApiProxyType

```ts
withApiProxyType()
```

`google.string.withApiProxyType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the api_proxy_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `api_proxy_type` field.


### fn withDeploymentType

```ts
withDeploymentType()
```

`google.string.withDeploymentType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the deployment_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `deployment_type` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodeConfig

```ts
withNodeConfig()
```

`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeConfigMixin

```ts
withNodeConfigMixin()
```

`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withOrgId

```ts
withOrgId()
```

`google.string.withOrgId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the org_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `org_id` field.


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


## obj node_config



### fn node_config.new

```ts
new()
```


`google.apigee_environment.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `max_node_count` (`string`): The maximum total number of gateway nodes that the is reserved for all instances that
has the specified environment. If not specified, the default is determined by the
recommended maximum number of nodes for that gateway. When `null`, the `max_node_count` field will be omitted from the resulting object.
  - `min_node_count` (`string`): The minimum total number of gateway nodes that the is reserved for all instances that
has the specified environment. If not specified, the default is determined by the
recommended minimum number of nodes for that gateway. When `null`, the `min_node_count` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.apigee_environment.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

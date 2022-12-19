---
permalink: /cloud_ids_endpoint/
---

# cloud_ids_endpoint

`cloud_ids_endpoint` represents the `google_cloud_ids_endpoint` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withSeverity()`](#fn-withseverity)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.cloud_ids_endpoint.new` injects a new `google_cloud_ids_endpoint` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.cloud_ids_endpoint.new('some_id')

You can get the reference to the `id` field of the created `google.cloud_ids_endpoint` using the reference:

    $._ref.google_cloud_ids_endpoint.some_id.get('id')

This is the same as directly entering `"${ google_cloud_ids_endpoint.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): An optional description of the endpoint. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the endpoint.
  - `name` (`string`): Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  - `network` (`string`): Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like &#34;src-net&#34;) or the full URL to the network (like &#34;projects/{project_id}/global/networks/src-net&#34;).
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `severity` (`string`): The minimum alert severity level that is reported by the endpoint. Possible values: [&#34;INFORMATIONAL&#34;, &#34;LOW&#34;, &#34;MEDIUM&#34;, &#34;HIGH&#34;, &#34;CRITICAL&#34;]
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_ids_endpoint.timeouts.new](#fn-cloud_ids_endpointtimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.cloud_ids_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_ids_endpoint`
Terraform resource.

Unlike [google.cloud_ids_endpoint.new](#fn-cloud_ids_endpointnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): An optional description of the endpoint. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the endpoint.
  - `name` (`string`): Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  - `network` (`string`): Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like &#34;src-net&#34;) or the full URL to the network (like &#34;projects/{project_id}/global/networks/src-net&#34;).
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `severity` (`string`): The minimum alert severity level that is reported by the endpoint. Possible values: [&#34;INFORMATIONAL&#34;, &#34;LOW&#34;, &#34;MEDIUM&#34;, &#34;HIGH&#34;, &#34;CRITICAL&#34;]
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_ids_endpoint.timeouts.new](#fn-cloud_ids_endpointtimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_ids_endpoint` resource into the root Terraform configuration.


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


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.string.withNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `network` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withSeverity

```ts
withSeverity()
```

`google.string.withSeverity` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the severity field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `severity` field.


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


`google.cloud_ids_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

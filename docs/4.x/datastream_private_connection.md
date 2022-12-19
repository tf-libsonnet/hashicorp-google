---
permalink: /datastream_private_connection/
---

# datastream_private_connection

`datastream_private_connection` represents the `google_datastream_private_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withPrivateConnectionId()`](#fn-withprivateconnectionid)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVpcPeeringConfig()`](#fn-withvpcpeeringconfig)
* [`fn withVpcPeeringConfigMixin()`](#fn-withvpcpeeringconfigmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vpc_peering_config`](#obj-vpc_peering_config)
  * [`fn new()`](#fn-vpc_peering_confignew)

## Fields

### fn new

```ts
new()
```


`google.datastream_private_connection.new` injects a new `google_datastream_private_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.datastream_private_connection.new('some_id')

You can get the reference to the `id` field of the created `google.datastream_private_connection` using the reference:

    $._ref.google_datastream_private_connection.some_id.get('id')

This is the same as directly entering `"${ google_datastream_private_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `display_name` (`string`): Display name.
  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in.
  - `private_connection_id` (`string`): The private connectivity identifier.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_private_connection.timeouts.new](#fn-datastreamprivateconnectiontimeoutsnew) constructor.
  - `vpc_peering_config` (`list[obj]`): The VPC Peering configuration is used to create VPC peering
between Datastream and the consumer&#39;s VPC. When `null`, the `vpc_peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_private_connection.vpc_peering_config.new](#fn-datastreamprivateconnectionvpcpeeringconfignew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.datastream_private_connection.newAttrs` constructs a new object with attributes and blocks configured for the `datastream_private_connection`
Terraform resource.

Unlike [google.datastream_private_connection.new](#fn-datastreamprivateconnectionnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `display_name` (`string`): Display name.
  - `labels` (`obj`): Labels. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The name of the location this repository is located in.
  - `private_connection_id` (`string`): The private connectivity identifier.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_private_connection.timeouts.new](#fn-datastreamprivateconnectiontimeoutsnew) constructor.
  - `vpc_peering_config` (`list[obj]`): The VPC Peering configuration is used to create VPC peering
between Datastream and the consumer&#39;s VPC. When `null`, the `vpc_peering_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.datastream_private_connection.vpc_peering_config.new](#fn-datastreamprivateconnectionvpcpeeringconfignew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `datastream_private_connection` resource into the root Terraform configuration.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withPrivateConnectionId

```ts
withPrivateConnectionId()
```

`google.string.withPrivateConnectionId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the private_connection_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `private_connection_id` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


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


### fn withVpcPeeringConfig

```ts
withVpcPeeringConfig()
```

`google.list[obj].withVpcPeeringConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_peering_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVpcPeeringConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_peering_config` field.


### fn withVpcPeeringConfigMixin

```ts
withVpcPeeringConfigMixin()
```

`google.list[obj].withVpcPeeringConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_peering_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVpcPeeringConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_peering_config` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.datastream_private_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vpc_peering_config



### fn vpc_peering_config.new

```ts
new()
```


`google.datastream_private_connection.vpc_peering_config.new` constructs a new object with attributes and blocks configured for the `vpc_peering_config`
Terraform sub block.



**Args**:
  - `subnet` (`string`): A free subnet for peering. (CIDR of /29)
  - `vpc` (`string`): Fully qualified name of the VPC that Datastream will peer to.
Format: projects/{project}/global/{networks}/{name}

**Returns**:
  - An attribute object that represents the `vpc_peering_config` sub block.

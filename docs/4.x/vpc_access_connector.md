---
permalink: /vpc_access_connector/
---

# vpc_access_connector

`vpc_access_connector` represents the `google_vpc_access_connector` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withIpCidrRange()`](#fn-withipcidrrange)
* [`fn withMachineType()`](#fn-withmachinetype)
* [`fn withMaxInstances()`](#fn-withmaxinstances)
* [`fn withMaxThroughput()`](#fn-withmaxthroughput)
* [`fn withMinInstances()`](#fn-withmininstances)
* [`fn withMinThroughput()`](#fn-withminthroughput)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withRegion()`](#fn-withregion)
* [`fn withSubnet()`](#fn-withsubnet)
* [`fn withSubnetMixin()`](#fn-withsubnetmixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj subnet`](#obj-subnet)
  * [`fn new()`](#fn-subnetnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vpc_access_connector.new` injects a new `google_vpc_access_connector` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vpc_access_connector.new('some_id')

You can get the reference to the `id` field of the created `google.vpc_access_connector` using the reference:

    $._ref.google_vpc_access_connector.some_id.get('id')

This is the same as directly entering `"${ google_vpc_access_connector.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `ip_cidr_range` (`string`): The range of internal addresses that follows RFC 4632 notation. Example: &#39;10.132.0.0/28&#39;. When `null`, the `ip_cidr_range` field will be omitted from the resulting object.
  - `machine_type` (`string`): Machine type of VM Instance underlying connector. Default is e2-micro When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_instances` (`number`): Maximum value of instances in autoscaling group underlying the connector. When `null`, the `max_instances` field will be omitted from the resulting object.
  - `max_throughput` (`number`): Maximum throughput of the connector in Mbps, must be greater than &#39;min_throughput&#39;. Default is 300. When `null`, the `max_throughput` field will be omitted from the resulting object.
  - `min_instances` (`number`): Minimum value of instances in autoscaling group underlying the connector. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `min_throughput` (`number`): Minimum throughput of the connector in Mbps. Default and min is 200. When `null`, the `min_throughput` field will be omitted from the resulting object.
  - `name` (`string`): The name of the resource (Max 25 characters).
  - `network` (`string`): Name or self_link of the VPC network. Required if &#39;ip_cidr_range&#39; is set. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the VPC Access connector resides. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `subnet` (`list[obj]`): The subnet in which to house the connector When `null`, the `subnet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.subnet.new](#fn-subnetnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vpc_access_connector.newAttrs` constructs a new object with attributes and blocks configured for the `vpc_access_connector`
Terraform resource.

Unlike [google.vpc_access_connector.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `ip_cidr_range` (`string`): The range of internal addresses that follows RFC 4632 notation. Example: &#39;10.132.0.0/28&#39;. When `null`, the `ip_cidr_range` field will be omitted from the resulting object.
  - `machine_type` (`string`): Machine type of VM Instance underlying connector. Default is e2-micro When `null`, the `machine_type` field will be omitted from the resulting object.
  - `max_instances` (`number`): Maximum value of instances in autoscaling group underlying the connector. When `null`, the `max_instances` field will be omitted from the resulting object.
  - `max_throughput` (`number`): Maximum throughput of the connector in Mbps, must be greater than &#39;min_throughput&#39;. Default is 300. When `null`, the `max_throughput` field will be omitted from the resulting object.
  - `min_instances` (`number`): Minimum value of instances in autoscaling group underlying the connector. When `null`, the `min_instances` field will be omitted from the resulting object.
  - `min_throughput` (`number`): Minimum throughput of the connector in Mbps. Default and min is 200. When `null`, the `min_throughput` field will be omitted from the resulting object.
  - `name` (`string`): The name of the resource (Max 25 characters).
  - `network` (`string`): Name or self_link of the VPC network. Required if &#39;ip_cidr_range&#39; is set. When `null`, the `network` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `region` (`string`): Region where the VPC Access connector resides. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.
  - `subnet` (`list[obj]`): The subnet in which to house the connector When `null`, the `subnet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.subnet.new](#fn-subnetnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vpc_access_connector` resource into the root Terraform configuration.


### fn withIpCidrRange

```ts
withIpCidrRange()
```

`google.string.withIpCidrRange` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the ip_cidr_range field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `ip_cidr_range` field.


### fn withMachineType

```ts
withMachineType()
```

`google.string.withMachineType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the machine_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `machine_type` field.


### fn withMaxInstances

```ts
withMaxInstances()
```

`google.number.withMaxInstances` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_instances` field.


### fn withMaxThroughput

```ts
withMaxThroughput()
```

`google.number.withMaxThroughput` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the max_throughput field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `max_throughput` field.


### fn withMinInstances

```ts
withMinInstances()
```

`google.number.withMinInstances` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the min_instances field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `min_instances` field.


### fn withMinThroughput

```ts
withMinThroughput()
```

`google.number.withMinThroughput` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the min_throughput field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `min_throughput` field.


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


### fn withRegion

```ts
withRegion()
```

`google.string.withRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `region` field.


### fn withSubnet

```ts
withSubnet()
```

`google.list[obj].withSubnet` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subnet field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSubnetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subnet` field.


### fn withSubnetMixin

```ts
withSubnetMixin()
```

`google.list[obj].withSubnetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the subnet field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSubnet](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `subnet` field.


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


## obj subnet



### fn subnet.new

```ts
new()
```


`google.vpc_access_connector.subnet.new` constructs a new object with attributes and blocks configured for the `subnet`
Terraform sub block.



**Args**:
  - `name` (`string`): Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}&#34; When `null`, the `name` field will be omitted from the resulting object.
  - `project_id` (`string`): Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `subnet` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vpc_access_connector.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

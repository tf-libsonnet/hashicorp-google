---
permalink: /edgenetwork_subnet/
---

# edgenetwork_subnet

`edgenetwork_subnet` represents the `google_edgenetwork_subnet` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withIpv4Cidr()`](#fn-withipv4cidr)
* [`fn withIpv6Cidr()`](#fn-withipv6cidr)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withProject()`](#fn-withproject)
* [`fn withSubnetId()`](#fn-withsubnetid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVlanId()`](#fn-withvlanid)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.edgenetwork_subnet.new` injects a new `google_edgenetwork_subnet` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.edgenetwork_subnet.new('some_id')

You can get the reference to the `id` field of the created `google.edgenetwork_subnet` using the reference:

    $._ref.google_edgenetwork_subnet.some_id.get('id')

This is the same as directly entering `"${ google_edgenetwork_subnet.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `ipv4_cidr` (`list`): The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv4_cidr` field will be omitted from the resulting object.
  - `ipv6_cidr` (`list`): The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv6_cidr` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels associated with this resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  - `network` (`string`): The ID of the network to which this router belongs.
Must be of the form: &#39;projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}&#39;
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `subnet_id` (`string`): A unique ID that identifies this subnet.
  - `vlan_id` (`number`): VLAN ID for this subnetwork. If not specified, one is assigned automatically. When `null`, the `vlan_id` field will be omitted from the resulting object.
  - `zone` (`string`): The name of the target Distributed Cloud Edge zone.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgenetwork_subnet.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.edgenetwork_subnet.newAttrs` constructs a new object with attributes and blocks configured for the `edgenetwork_subnet`
Terraform resource.

Unlike [google.edgenetwork_subnet.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `ipv4_cidr` (`list`): The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv4_cidr` field will be omitted from the resulting object.
  - `ipv6_cidr` (`list`): The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv6_cidr` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels associated with this resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The Google Cloud region to which the target Distributed Cloud Edge zone belongs.
  - `network` (`string`): The ID of the network to which this router belongs.
Must be of the form: &#39;projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}&#39;
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `subnet_id` (`string`): A unique ID that identifies this subnet.
  - `vlan_id` (`number`): VLAN ID for this subnetwork. If not specified, one is assigned automatically. When `null`, the `vlan_id` field will be omitted from the resulting object.
  - `zone` (`string`): The name of the target Distributed Cloud Edge zone.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgenetwork_subnet.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgenetwork_subnet` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withIpv4Cidr

```ts
withIpv4Cidr()
```

`google.list.withIpv4Cidr` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ipv4_cidr field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ipv4_cidr` field.


### fn withIpv6Cidr

```ts
withIpv6Cidr()
```

`google.list.withIpv6Cidr` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the ipv6_cidr field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `ipv6_cidr` field.


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


### fn withSubnetId

```ts
withSubnetId()
```

`google.string.withSubnetId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the subnet_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `subnet_id` field.


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


### fn withVlanId

```ts
withVlanId()
```

`google.number.withVlanId` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the vlan_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `vlan_id` field.


### fn withZone

```ts
withZone()
```

`google.string.withZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.edgenetwork_subnet.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

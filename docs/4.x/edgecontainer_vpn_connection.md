---
permalink: /edgecontainer_vpn_connection/
---

# edgecontainer_vpn_connection

`edgecontainer_vpn_connection` represents the `google_edgecontainer_vpn_connection` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withEnableHighAvailability()`](#fn-withenablehighavailability)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNatGatewayIp()`](#fn-withnatgatewayip)
* [`fn withProject()`](#fn-withproject)
* [`fn withRouter()`](#fn-withrouter)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVpc()`](#fn-withvpc)
* [`fn withVpcProject()`](#fn-withvpcproject)
* [`fn withVpcProjectMixin()`](#fn-withvpcprojectmixin)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)
* [`obj vpc_project`](#obj-vpc_project)
  * [`fn new()`](#fn-vpc_projectnew)

## Fields

### fn new

```ts
new()
```


`google.edgecontainer_vpn_connection.new` injects a new `google_edgecontainer_vpn_connection` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.edgecontainer_vpn_connection.new('some_id')

You can get the reference to the `id` field of the created `google.edgecontainer_vpn_connection` using the reference:

    $._ref.google_edgecontainer_vpn_connection.some_id.get('id')

This is the same as directly entering `"${ google_edgecontainer_vpn_connection.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster` (`string`): The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  - `enable_high_availability` (`bool`): Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs. When `null`, the `enable_high_availability` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Google Cloud Platform location.
  - `name` (`string`): The resource name of VPN connection
  - `nat_gateway_ip` (`string`): NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
This is empty if NAT is not used. When `null`, the `nat_gateway_ip` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `router` (`string`): The VPN connection Cloud Router name. When `null`, the `router` field will be omitted from the resulting object.
  - `vpc` (`string`): The network ID of VPC to connect to. When `null`, the `vpc` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.timeouts.new](#fn-timeoutsnew) constructor.
  - `vpc_project` (`list[obj]`): Project detail of the VPC network. Required if VPC is in a different project than the cluster project. When `null`, the `vpc_project` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.vpc_project.new](#fn-vpc_projectnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.edgecontainer_vpn_connection.newAttrs` constructs a new object with attributes and blocks configured for the `edgecontainer_vpn_connection`
Terraform resource.

Unlike [google.edgecontainer_vpn_connection.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster` (`string`): The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.
  - `enable_high_availability` (`bool`): Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs. When `null`, the `enable_high_availability` field will be omitted from the resulting object.
  - `labels` (`obj`): Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Google Cloud Platform location.
  - `name` (`string`): The resource name of VPN connection
  - `nat_gateway_ip` (`string`): NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.
This is empty if NAT is not used. When `null`, the `nat_gateway_ip` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `router` (`string`): The VPN connection Cloud Router name. When `null`, the `router` field will be omitted from the resulting object.
  - `vpc` (`string`): The network ID of VPC to connect to. When `null`, the `vpc` field will be omitted from the resulting object.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.timeouts.new](#fn-timeoutsnew) constructor.
  - `vpc_project` (`list[obj]`): Project detail of the VPC network. Required if VPC is in a different project than the cluster project. When `null`, the `vpc_project` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.vpc_project.new](#fn-vpc_projectnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgecontainer_vpn_connection` resource into the root Terraform configuration.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withEnableHighAvailability

```ts
withEnableHighAvailability()
```

`google.bool.withEnableHighAvailability` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the enable_high_availability field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `enable_high_availability` field.


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


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNatGatewayIp

```ts
withNatGatewayIp()
```

`google.string.withNatGatewayIp` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the nat_gateway_ip field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `nat_gateway_ip` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRouter

```ts
withRouter()
```

`google.string.withRouter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the router field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `router` field.


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


### fn withVpc

```ts
withVpc()
```

`google.string.withVpc` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vpc field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vpc` field.


### fn withVpcProject

```ts
withVpcProject()
```

`google.list[obj].withVpcProject` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_project field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withVpcProjectMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_project` field.


### fn withVpcProjectMixin

```ts
withVpcProjectMixin()
```

`google.list[obj].withVpcProjectMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the vpc_project field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withVpcProject](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `vpc_project` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.edgecontainer_vpn_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.


## obj vpc_project



### fn vpc_project.new

```ts
new()
```


`google.edgecontainer_vpn_connection.vpc_project.new` constructs a new object with attributes and blocks configured for the `vpc_project`
Terraform sub block.



**Args**:
  - `project_id` (`string`): The project of the VPC to connect to. If not specified, it is the same as the cluster project. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `vpc_project` sub block.

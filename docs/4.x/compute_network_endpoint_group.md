---
permalink: /compute_network_endpoint_group/
---

# compute_network_endpoint_group

`compute_network_endpoint_group` represents the `google_compute_network_endpoint_group` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDefaultPort()`](#fn-withdefaultport)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withName()`](#fn-withname)
* [`fn withNetwork()`](#fn-withnetwork)
* [`fn withNetworkEndpointType()`](#fn-withnetworkendpointtype)
* [`fn withProject()`](#fn-withproject)
* [`fn withSubnetwork()`](#fn-withsubnetwork)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withZone()`](#fn-withzone)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.compute_network_endpoint_group.new` injects a new `google_compute_network_endpoint_group` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.compute_network_endpoint_group.new('some_id')

You can get the reference to the `id` field of the created `google.compute_network_endpoint_group` using the reference:

    $._ref.google_compute_network_endpoint_group.some_id.get('id')

This is the same as directly entering `"${ google_compute_network_endpoint_group.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `default_port` (`number`): The default port used if the port number is not specified in the
network endpoint. When `null`, the `default_port` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The network to which all network endpoints in the NEG belong.
Uses &#34;default&#34; project network if unspecified.
  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group.
NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
CONNECTION balancing modes.

Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, and NON_GCP_PRIVATE_IP_PORT. Default value: &#34;GCE_VM_IP_PORT&#34; Possible values: [&#34;GCE_VM_IP&#34;, &#34;GCE_VM_IP_PORT&#34;, &#34;NON_GCP_PRIVATE_IP_PORT&#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Optional subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint_group.timeouts.new](#fn-computenetworkendpointgrouptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.compute_network_endpoint_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network_endpoint_group`
Terraform resource.

Unlike [google.compute_network_endpoint_group.new](#fn-computenetworkendpointgroupnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `default_port` (`number`): The default port used if the port number is not specified in the
network endpoint. When `null`, the `default_port` field will be omitted from the resulting object.
  - `description` (`string`): An optional description of this resource. Provide this property when
you create the resource. When `null`, the `description` field will be omitted from the resulting object.
  - `name` (`string`): Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash.
  - `network` (`string`): The network to which all network endpoints in the NEG belong.
Uses &#34;default&#34; project network if unspecified.
  - `network_endpoint_type` (`string`): Type of network endpoints in this network endpoint group.
NON_GCP_PRIVATE_IP_PORT is used for hybrid connectivity network
endpoint groups (see https://cloud.google.com/load-balancing/docs/hybrid).
Note that NON_GCP_PRIVATE_IP_PORT can only be used with Backend Services
that 1) have the following load balancing schemes: EXTERNAL, EXTERNAL_MANAGED,
INTERNAL_MANAGED, and INTERNAL_SELF_MANAGED and 2) support the RATE or
CONNECTION balancing modes.

Possible values include: GCE_VM_IP, GCE_VM_IP_PORT, and NON_GCP_PRIVATE_IP_PORT. Default value: &#34;GCE_VM_IP_PORT&#34; Possible values: [&#34;GCE_VM_IP&#34;, &#34;GCE_VM_IP_PORT&#34;, &#34;NON_GCP_PRIVATE_IP_PORT&#34;] When `null`, the `network_endpoint_type` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `subnetwork` (`string`): Optional subnetwork to which all network endpoints in the NEG belong. When `null`, the `subnetwork` field will be omitted from the resulting object.
  - `zone` (`string`): Zone where the network endpoint group is located. When `null`, the `zone` field will be omitted from the resulting object.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network_endpoint_group.timeouts.new](#fn-computenetworkendpointgrouptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network_endpoint_group` resource into the root Terraform configuration.


### fn withDefaultPort

```ts
withDefaultPort()
```

`google.compute_network_endpoint_group.withDefaultPort` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the default_port field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `default_port` field.


### fn withDescription

```ts
withDescription()
```

`google.compute_network_endpoint_group.withDescription` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `description` field.


### fn withName

```ts
withName()
```

`google.compute_network_endpoint_group.withName` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `name` field.


### fn withNetwork

```ts
withNetwork()
```

`google.compute_network_endpoint_group.withNetwork` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network` field.


### fn withNetworkEndpointType

```ts
withNetworkEndpointType()
```

`google.compute_network_endpoint_group.withNetworkEndpointType` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the network_endpoint_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `network_endpoint_type` field.


### fn withProject

```ts
withProject()
```

`google.compute_network_endpoint_group.withProject` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `project` field.


### fn withSubnetwork

```ts
withSubnetwork()
```

`google.compute_network_endpoint_group.withSubnetwork` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the subnetwork field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `subnetwork` field.


### fn withTimeouts

```ts
withTimeouts()
```

`google.compute_network_endpoint_group.withTimeouts` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the timeouts field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withTimeoutsMixin

```ts
withTimeoutsMixin()
```

`google.compute_network_endpoint_group.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the timeouts field.

This function will merge the passed in value to the existing map. If you wish
to instead replace the entire map with the passed in `value`, use the [google.compute_network_endpoint_group.withTimeouts](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `timeouts` field.


### fn withZone

```ts
withZone()
```

`google.compute_network_endpoint_group.withZone` constructs a mixin object that can be merged into the `compute_network_endpoint_group`
Terraform resource block to set or update the zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`TODO`): The value to set for the `zone` field.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.compute_network_endpoint_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

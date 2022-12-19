---
permalink: /network_management_connectivity_test/
---

# network_management_connectivity_test

`network_management_connectivity_test` represents the `google_network_management_connectivity_test` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withDestination()`](#fn-withdestination)
* [`fn withDestinationMixin()`](#fn-withdestinationmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withProtocol()`](#fn-withprotocol)
* [`fn withRelatedProjects()`](#fn-withrelatedprojects)
* [`fn withSource()`](#fn-withsource)
* [`fn withSourceMixin()`](#fn-withsourcemixin)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj destination`](#obj-destination)
  * [`fn new()`](#fn-destinationnew)
* [`obj source`](#obj-source)
  * [`fn new()`](#fn-sourcenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.network_management_connectivity_test.new` injects a new `google_network_management_connectivity_test` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.network_management_connectivity_test.new('some_id')

You can get the reference to the `id` field of the created `google.network_management_connectivity_test` using the reference:

    $._ref.google_network_management_connectivity_test.some_id.get('id')

This is the same as directly entering `"${ google_network_management_connectivity_test.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The user-supplied description of the Connectivity Test.
Maximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Unique name for the connectivity test.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `protocol` (`string`): IP Protocol of the test. When not provided, &#34;TCP&#34; is assumed. When `null`, the `protocol` field will be omitted from the resulting object.
  - `related_projects` (`list`): Other projects that may be relevant for reachability analysis.
This is applicable to scenarios where a test can cross project
boundaries. When `null`, the `related_projects` field will be omitted from the resulting object.
  - `destination` (`list[obj]`): Required. Destination specification of the Connectivity Test.

You can use a combination of destination IP address, Compute
Engine VM instance, or VPC network to uniquely identify the
destination location.

Even if the destination IP address is not unique, the source IP
location is unique. Usually, the analysis can infer the destination
endpoint from route information.

If the destination you specify is a VM instance and the instance has
multiple network interfaces, then you must also specify either a
destination IP address or VPC network to identify the destination
interface.

A reachability analysis proceeds even if the destination location
is ambiguous. However, the result can include endpoints that you
don&#39;t intend to test. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.destination.new](#fn-destinationnew) constructor.
  - `source` (`list[obj]`): Required. Source specification of the Connectivity Test.

You can use a combination of source IP address, virtual machine
(VM) instance, or Compute Engine network to uniquely identify the
source location.

Examples: If the source IP address is an internal IP address within
a Google Cloud Virtual Private Cloud (VPC) network, then you must
also specify the VPC network. Otherwise, specify the VM instance,
which already contains its internal IP address and VPC network
information.

If the source of the test is within an on-premises network, then
you must provide the destination VPC network.

If the source endpoint is a Compute Engine VM instance with multiple
network interfaces, the instance itself is not sufficient to
identify the endpoint. So, you must also specify the source IP
address or VPC network.

A reachability analysis proceeds even if the source location is
ambiguous. However, the test result may include endpoints that
you don&#39;t intend to test. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.source.new](#fn-sourcenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.network_management_connectivity_test.newAttrs` constructs a new object with attributes and blocks configured for the `network_management_connectivity_test`
Terraform resource.

Unlike [google.network_management_connectivity_test.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The user-supplied description of the Connectivity Test.
Maximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): Unique name for the connectivity test.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `protocol` (`string`): IP Protocol of the test. When not provided, &#34;TCP&#34; is assumed. When `null`, the `protocol` field will be omitted from the resulting object.
  - `related_projects` (`list`): Other projects that may be relevant for reachability analysis.
This is applicable to scenarios where a test can cross project
boundaries. When `null`, the `related_projects` field will be omitted from the resulting object.
  - `destination` (`list[obj]`): Required. Destination specification of the Connectivity Test.

You can use a combination of destination IP address, Compute
Engine VM instance, or VPC network to uniquely identify the
destination location.

Even if the destination IP address is not unique, the source IP
location is unique. Usually, the analysis can infer the destination
endpoint from route information.

If the destination you specify is a VM instance and the instance has
multiple network interfaces, then you must also specify either a
destination IP address or VPC network to identify the destination
interface.

A reachability analysis proceeds even if the destination location
is ambiguous. However, the result can include endpoints that you
don&#39;t intend to test. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.destination.new](#fn-destinationnew) constructor.
  - `source` (`list[obj]`): Required. Source specification of the Connectivity Test.

You can use a combination of source IP address, virtual machine
(VM) instance, or Compute Engine network to uniquely identify the
source location.

Examples: If the source IP address is an internal IP address within
a Google Cloud Virtual Private Cloud (VPC) network, then you must
also specify the VPC network. Otherwise, specify the VM instance,
which already contains its internal IP address and VPC network
information.

If the source of the test is within an on-premises network, then
you must provide the destination VPC network.

If the source endpoint is a Compute Engine VM instance with multiple
network interfaces, the instance itself is not sufficient to
identify the endpoint. So, you must also specify the source IP
address or VPC network.

A reachability analysis proceeds even if the source location is
ambiguous. However, the test result may include endpoints that
you don&#39;t intend to test. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.source.new](#fn-sourcenew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_management_connectivity_test` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withDestination

```ts
withDestination()
```

`google.list[obj].withDestination` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withDestinationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination` field.


### fn withDestinationMixin

```ts
withDestinationMixin()
```

`google.list[obj].withDestinationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the destination field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withDestination](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `destination` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withProtocol

```ts
withProtocol()
```

`google.string.withProtocol` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the protocol field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `protocol` field.


### fn withRelatedProjects

```ts
withRelatedProjects()
```

`google.list.withRelatedProjects` constructs a mixin object that can be merged into the `list`
Terraform resource block to set or update the related_projects field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list`): The value to set for the `related_projects` field.


### fn withSource

```ts
withSource()
```

`google.list[obj].withSource` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withSourceMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source` field.


### fn withSourceMixin

```ts
withSourceMixin()
```

`google.list[obj].withSourceMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the source field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withSource](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `source` field.


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


## obj destination



### fn destination.new

```ts
new()
```


`google.network_management_connectivity_test.destination.new` constructs a new object with attributes and blocks configured for the `destination`
Terraform sub block.



**Args**:
  - `instance` (`string`): A Compute Engine instance URI. When `null`, the `instance` field will be omitted from the resulting object.
  - `ip_address` (`string`): The IP address of the endpoint, which can be an external or
internal IP. An IPv6 address is only allowed when the test&#39;s
destination is a global load balancer VIP. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `network` (`string`): A Compute Engine network URI. When `null`, the `network` field will be omitted from the resulting object.
  - `port` (`number`): The IP protocol port of the endpoint. Only applicable when
protocol is TCP or UDP. When `null`, the `port` field will be omitted from the resulting object.
  - `project_id` (`string`): Project ID where the endpoint is located. The Project ID can be
derived from the URI if you provide a VM instance or network URI.
The following are two cases where you must provide the project ID:
1. Only the IP address is specified, and the IP address is within
a GCP project. 2. When you are using Shared VPC and the IP address
that you provide is from the service project. In this case, the
network that the IP address resides in is defined in the host
project. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `destination` sub block.


## obj source



### fn source.new

```ts
new()
```


`google.network_management_connectivity_test.source.new` constructs a new object with attributes and blocks configured for the `source`
Terraform sub block.



**Args**:
  - `instance` (`string`): A Compute Engine instance URI. When `null`, the `instance` field will be omitted from the resulting object.
  - `ip_address` (`string`): The IP address of the endpoint, which can be an external or
internal IP. An IPv6 address is only allowed when the test&#39;s
destination is a global load balancer VIP. When `null`, the `ip_address` field will be omitted from the resulting object.
  - `network` (`string`): A Compute Engine network URI. When `null`, the `network` field will be omitted from the resulting object.
  - `network_type` (`string`): Type of the network where the endpoint is located. Possible values: [&#34;GCP_NETWORK&#34;, &#34;NON_GCP_NETWORK&#34;] When `null`, the `network_type` field will be omitted from the resulting object.
  - `port` (`number`): The IP protocol port of the endpoint. Only applicable when
protocol is TCP or UDP. When `null`, the `port` field will be omitted from the resulting object.
  - `project_id` (`string`): Project ID where the endpoint is located. The Project ID can be
derived from the URI if you provide a VM instance or network URI.
The following are two cases where you must provide the project ID:

1. Only the IP address is specified, and the IP address is
   within a GCP project.
2. When you are using Shared VPC and the IP address
   that you provide is from the service project. In this case,
   the network that the IP address resides in is defined in the
   host project. When `null`, the `project_id` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `source` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.network_management_connectivity_test.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

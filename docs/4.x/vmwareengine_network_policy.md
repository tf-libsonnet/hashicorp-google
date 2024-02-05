---
permalink: /vmwareengine_network_policy/
---

# vmwareengine_network_policy

`vmwareengine_network_policy` represents the `google_vmwareengine_network_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withEdgeServicesCidr()`](#fn-withedgeservicescidr)
* [`fn withExternalIp()`](#fn-withexternalip)
* [`fn withExternalIpMixin()`](#fn-withexternalipmixin)
* [`fn withInternetAccess()`](#fn-withinternetaccess)
* [`fn withInternetAccessMixin()`](#fn-withinternetaccessmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVmwareEngineNetwork()`](#fn-withvmwareenginenetwork)
* [`obj external_ip`](#obj-external_ip)
  * [`fn new()`](#fn-external_ipnew)
* [`obj internet_access`](#obj-internet_access)
  * [`fn new()`](#fn-internet_accessnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.vmwareengine_network_policy.new` injects a new `google_vmwareengine_network_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.vmwareengine_network_policy.new('some_id')

You can get the reference to the `id` field of the created `google.vmwareengine_network_policy` using the reference:

    $._ref.google_vmwareengine_network_policy.some_id.get('id')

This is the same as directly entering `"${ google_vmwareengine_network_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): User-provided description for this network policy. When `null`, the `description` field will be omitted from the resulting object.
  - `edge_services_cidr` (`string`): IP address range in CIDR notation used to create internet access and external IP access.
An RFC 1918 CIDR block, with a &#34;/26&#34; prefix, is required. The range cannot overlap with any
prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  - `location` (`string`): The resource name of the location (region) to create the new network policy in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-central1
  - `name` (`string`): The ID of the Network Policy.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:
projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
can either be a project number or a project ID.
  - `external_ip` (`list[obj]`): Network service that allows External IP addresses to be assigned to VMware workloads.
This service can only be enabled when internetAccess is also enabled. When `null`, the `external_ip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.external_ip.new](#fn-external_ipnew) constructor.
  - `internet_access` (`list[obj]`): Network service that allows VMware workloads to access the internet. When `null`, the `internet_access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.internet_access.new](#fn-internet_accessnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.vmwareengine_network_policy.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_network_policy`
Terraform resource.

Unlike [google.vmwareengine_network_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): User-provided description for this network policy. When `null`, the `description` field will be omitted from the resulting object.
  - `edge_services_cidr` (`string`): IP address range in CIDR notation used to create internet access and external IP access.
An RFC 1918 CIDR block, with a &#34;/26&#34; prefix, is required. The range cannot overlap with any
prefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.
  - `location` (`string`): The resource name of the location (region) to create the new network policy in.
Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
For example: projects/my-project/locations/us-central1
  - `name` (`string`): The ID of the Network Policy.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:
projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}
can either be a project number or a project ID.
  - `external_ip` (`list[obj]`): Network service that allows External IP addresses to be assigned to VMware workloads.
This service can only be enabled when internetAccess is also enabled. When `null`, the `external_ip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.external_ip.new](#fn-external_ipnew) constructor.
  - `internet_access` (`list[obj]`): Network service that allows VMware workloads to access the internet. When `null`, the `internet_access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.internet_access.new](#fn-internet_accessnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_network_policy` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withEdgeServicesCidr

```ts
withEdgeServicesCidr()
```

`google.string.withEdgeServicesCidr` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the edge_services_cidr field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `edge_services_cidr` field.


### fn withExternalIp

```ts
withExternalIp()
```

`google.list[obj].withExternalIp` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the external_ip field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withExternalIpMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `external_ip` field.


### fn withExternalIpMixin

```ts
withExternalIpMixin()
```

`google.list[obj].withExternalIpMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the external_ip field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withExternalIp](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `external_ip` field.


### fn withInternetAccess

```ts
withInternetAccess()
```

`google.list[obj].withInternetAccess` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the internet_access field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withInternetAccessMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `internet_access` field.


### fn withInternetAccessMixin

```ts
withInternetAccessMixin()
```

`google.list[obj].withInternetAccessMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the internet_access field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withInternetAccess](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `internet_access` field.


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


### fn withVmwareEngineNetwork

```ts
withVmwareEngineNetwork()
```

`google.string.withVmwareEngineNetwork` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the vmware_engine_network field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `vmware_engine_network` field.


## obj external_ip



### fn external_ip.new

```ts
new()
```


`google.vmwareengine_network_policy.external_ip.new` constructs a new object with attributes and blocks configured for the `external_ip`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): True if the service is enabled; false otherwise. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `external_ip` sub block.


## obj internet_access



### fn internet_access.new

```ts
new()
```


`google.vmwareengine_network_policy.internet_access.new` constructs a new object with attributes and blocks configured for the `internet_access`
Terraform sub block.



**Args**:
  - `enabled` (`bool`): True if the service is enabled; false otherwise. When `null`, the `enabled` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `internet_access` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.vmwareengine_network_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

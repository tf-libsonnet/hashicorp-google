---
permalink: /dns_response_policy/
---

# dns_response_policy

`dns_response_policy` represents the `google_dns_response_policy` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withGkeClusters()`](#fn-withgkeclusters)
* [`fn withGkeClustersMixin()`](#fn-withgkeclustersmixin)
* [`fn withNetworks()`](#fn-withnetworks)
* [`fn withNetworksMixin()`](#fn-withnetworksmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withResponsePolicyName()`](#fn-withresponsepolicyname)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj gke_clusters`](#obj-gke_clusters)
  * [`fn new()`](#fn-gke_clustersnew)
* [`obj networks`](#obj-networks)
  * [`fn new()`](#fn-networksnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.dns_response_policy.new` injects a new `google_dns_response_policy` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.dns_response_policy.new('some_id')

You can get the reference to the `id` field of the created `google.dns_response_policy` using the reference:

    $._ref.google_dns_response_policy.some_id.get('id')

This is the same as directly entering `"${ google_dns_response_policy.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `description` (`string`): The description of the response policy, such as &#39;My new response policy&#39;. When `null`, the `description` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `response_policy_name` (`string`): The user assigned name for this Response Policy, such as &#39;myresponsepolicy&#39;.
  - `gke_clusters` (`list[obj]`): The list of Google Kubernetes Engine clusters that can see this zone. When `null`, the `gke_clusters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.gke_clusters.new](#fn-gke_clustersnew) constructor.
  - `networks` (`list[obj]`): The list of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.dns_response_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dns_response_policy`
Terraform resource.

Unlike [google.dns_response_policy.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `description` (`string`): The description of the response policy, such as &#39;My new response policy&#39;. When `null`, the `description` field will be omitted from the resulting object.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `response_policy_name` (`string`): The user assigned name for this Response Policy, such as &#39;myresponsepolicy&#39;.
  - `gke_clusters` (`list[obj]`): The list of Google Kubernetes Engine clusters that can see this zone. When `null`, the `gke_clusters` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.gke_clusters.new](#fn-gke_clustersnew) constructor.
  - `networks` (`list[obj]`): The list of network names specifying networks to which this policy is applied. When `null`, the `networks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.networks.new](#fn-networksnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dns_response_policy.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dns_response_policy` resource into the root Terraform configuration.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withGkeClusters

```ts
withGkeClusters()
```

`google.list[obj].withGkeClusters` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gke_clusters field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withGkeClustersMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gke_clusters` field.


### fn withGkeClustersMixin

```ts
withGkeClustersMixin()
```

`google.list[obj].withGkeClustersMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the gke_clusters field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withGkeClusters](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `gke_clusters` field.


### fn withNetworks

```ts
withNetworks()
```

`google.list[obj].withNetworks` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworksMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withNetworksMixin

```ts
withNetworksMixin()
```

`google.list[obj].withNetworksMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networks field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworks](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networks` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withResponsePolicyName

```ts
withResponsePolicyName()
```

`google.string.withResponsePolicyName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the response_policy_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `response_policy_name` field.


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


## obj gke_clusters



### fn gke_clusters.new

```ts
new()
```


`google.dns_response_policy.gke_clusters.new` constructs a new object with attributes and blocks configured for the `gke_clusters`
Terraform sub block.



**Args**:
  - `gke_cluster_name` (`string`): The resource name of the cluster to bind this ManagedZone to.
This should be specified in the format like
&#39;projects/*/locations/*/clusters/*&#39;

**Returns**:
  - An attribute object that represents the `gke_clusters` sub block.


## obj networks



### fn networks.new

```ts
new()
```


`google.dns_response_policy.networks.new` constructs a new object with attributes and blocks configured for the `networks`
Terraform sub block.



**Args**:
  - `network_url` (`string`): The fully qualified URL of the VPC network to bind to.
This should be formatted like
&#39;https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}&#39;

**Returns**:
  - An attribute object that represents the `networks` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.dns_response_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

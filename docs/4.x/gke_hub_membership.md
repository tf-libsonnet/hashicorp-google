---
permalink: /gke_hub_membership/
---

# gke_hub_membership

`gke_hub_membership` represents the `google_gke_hub_membership` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAuthority()`](#fn-withauthority)
* [`fn withAuthorityMixin()`](#fn-withauthoritymixin)
* [`fn withEndpoint()`](#fn-withendpoint)
* [`fn withEndpointMixin()`](#fn-withendpointmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withMembershipId()`](#fn-withmembershipid)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj authority`](#obj-authority)
  * [`fn new()`](#fn-authoritynew)
* [`obj endpoint`](#obj-endpoint)
  * [`fn new()`](#fn-endpointnew)
  * [`obj endpoint.gke_cluster`](#obj-endpointgke_cluster)
    * [`fn new()`](#fn-endpointgke_clusternew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.gke_hub_membership.new` injects a new `google_gke_hub_membership` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.gke_hub_membership.new('some_id')

You can get the reference to the `id` field of the created `google.gke_hub_membership` using the reference:

    $._ref.google_gke_hub_membership.some_id.get('id')

This is the same as directly entering `"${ google_gke_hub_membership.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `labels` (`obj`): Labels to apply to this membership. When `null`, the `labels` field will be omitted from the resulting object.
  - `membership_id` (`string`): The client-provided identifier of the membership.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `authority` (`list[obj]`): Authority encodes how Google will recognize identities from this Membership.
See the workload identity documentation for more details:
https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity When `null`, the `authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.authority.new](#fn-gkehubmembershipauthoritynew) constructor.
  - `endpoint` (`list[obj]`): If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. When `null`, the `endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.endpoint.new](#fn-gkehubmembershipendpointnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.timeouts.new](#fn-gkehubmembershiptimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.gke_hub_membership.newAttrs` constructs a new object with attributes and blocks configured for the `gke_hub_membership`
Terraform resource.

Unlike [google.gke_hub_membership.new](#fn-gkehubmembershipnew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `labels` (`obj`): Labels to apply to this membership. When `null`, the `labels` field will be omitted from the resulting object.
  - `membership_id` (`string`): The client-provided identifier of the membership.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `authority` (`list[obj]`): Authority encodes how Google will recognize identities from this Membership.
See the workload identity documentation for more details:
https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity When `null`, the `authority` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.authority.new](#fn-gkehubmembershipauthoritynew) constructor.
  - `endpoint` (`list[obj]`): If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. When `null`, the `endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.endpoint.new](#fn-gkehubmembershipendpointnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.timeouts.new](#fn-gkehubmembershiptimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `gke_hub_membership` resource into the root Terraform configuration.


### fn withAuthority

```ts
withAuthority()
```

`google.list[obj].withAuthority` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authority field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuthorityMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authority` field.


### fn withAuthorityMixin

```ts
withAuthorityMixin()
```

`google.list[obj].withAuthorityMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authority field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuthority](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authority` field.


### fn withEndpoint

```ts
withEndpoint()
```

`google.list[obj].withEndpoint` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the endpoint field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEndpointMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `endpoint` field.


### fn withEndpointMixin

```ts
withEndpointMixin()
```

`google.list[obj].withEndpointMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the endpoint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEndpoint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `endpoint` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withMembershipId

```ts
withMembershipId()
```

`google.string.withMembershipId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the membership_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `membership_id` field.


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


## obj authority



### fn authority.new

```ts
new()
```


`google.gke_hub_membership.authority.new` constructs a new object with attributes and blocks configured for the `authority`
Terraform sub block.



**Args**:
  - `issuer` (`string`): A JSON Web Token (JWT) issuer URI. &#39;issuer&#39; must start with &#39;https://&#39; and // be a valid 
with length &lt;2000 characters. For example: &#39;https://container.googleapis.com/v1/projects/my-project/locations/us-west1/clusters/my-cluster&#39; (must be &#39;locations&#39; rather than &#39;zones&#39;). If the cluster is provisioned with Terraform, this is &#39;&#34;https://container.googleapis.com/v1/${google_container_cluster.my-cluster.id}&#34;&#39;.

**Returns**:
  - An attribute object that represents the `authority` sub block.


## obj endpoint



### fn endpoint.new

```ts
new()
```


`google.gke_hub_membership.endpoint.new` constructs a new object with attributes and blocks configured for the `endpoint`
Terraform sub block.



**Args**:
  - `gke_cluster` (`list[obj]`): If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource. When `null`, the `gke_cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.gke_hub_membership.endpoint.gke_cluster.new](#fn-endpointgkeclusternew) constructor.

**Returns**:
  - An attribute object that represents the `endpoint` sub block.


## obj endpoint.gke_cluster



### fn endpoint.gke_cluster.new

```ts
new()
```


`google.gke_hub_membership.endpoint.gke_cluster.new` constructs a new object with attributes and blocks configured for the `gke_cluster`
Terraform sub block.



**Args**:
  - `resource_link` (`string`): Self-link of the GCP resource for the GKE cluster.
For example: &#39;//container.googleapis.com/projects/my-project/zones/us-west1-a/clusters/my-cluster&#39;.
It can be at the most 1000 characters in length. If the cluster is provisioned with Terraform,
this can be &#39;&#34;//container.googleapis.com/${google_container_cluster.my-cluster.id}&#34;&#39; or
&#39;google_container_cluster.my-cluster.id&#39;.

**Returns**:
  - An attribute object that represents the `gke_cluster` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.gke_hub_membership.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

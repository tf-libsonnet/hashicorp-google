---
permalink: /container_azure_node_pool/
---

# container_azure_node_pool

`container_azure_node_pool` represents the `google_container_azure_node_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAutoscaling()`](#fn-withautoscaling)
* [`fn withAutoscalingMixin()`](#fn-withautoscalingmixin)
* [`fn withAzureAvailabilityZone()`](#fn-withazureavailabilityzone)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withConfig()`](#fn-withconfig)
* [`fn withConfigMixin()`](#fn-withconfigmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withManagement()`](#fn-withmanagement)
* [`fn withManagementMixin()`](#fn-withmanagementmixin)
* [`fn withMaxPodsConstraint()`](#fn-withmaxpodsconstraint)
* [`fn withMaxPodsConstraintMixin()`](#fn-withmaxpodsconstraintmixin)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withSubnetId()`](#fn-withsubnetid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`fn withVersion()`](#fn-withversion)
* [`obj autoscaling`](#obj-autoscaling)
  * [`fn new()`](#fn-autoscalingnew)
* [`obj config`](#obj-config)
  * [`fn new()`](#fn-confignew)
  * [`obj config.proxy_config`](#obj-configproxy_config)
    * [`fn new()`](#fn-configproxy_confignew)
  * [`obj config.root_volume`](#obj-configroot_volume)
    * [`fn new()`](#fn-configroot_volumenew)
  * [`obj config.ssh_config`](#obj-configssh_config)
    * [`fn new()`](#fn-configssh_confignew)
* [`obj management`](#obj-management)
  * [`fn new()`](#fn-managementnew)
* [`obj max_pods_constraint`](#obj-max_pods_constraint)
  * [`fn new()`](#fn-max_pods_constraintnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.container_azure_node_pool.new` injects a new `google_container_azure_node_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_azure_node_pool.new('some_id')

You can get the reference to the `id` field of the created `google.container_azure_node_pool` using the reference:

    $._ref.google_container_azure_node_pool.some_id.get('id')

This is the same as directly entering `"${ google_container_azure_node_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.
  - `azure_availability_zone` (`string`): Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`. When `null`, the `azure_availability_zone` field will be omitted from the resulting object.
  - `cluster` (`string`): The azureCluster for the resource
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `subnet_id` (`string`): The ARM ID of the subnet where the node pool VMs run. Make sure it&#39;s a subnet under the virtual network in the cluster configuration.
  - `version` (`string`): The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  - `autoscaling` (`list[obj]`): Autoscaler configuration for this node pool. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.
  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.new](#fn-confignew) constructor.
  - `management` (`list[obj]`): The Management configuration for this node pool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.management.new](#fn-managementnew) constructor.
  - `max_pods_constraint` (`list[obj]`): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. When `null`, the `max_pods_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.max_pods_constraint.new](#fn-max_pods_constraintnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_azure_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `container_azure_node_pool`
Terraform resource.

Unlike [google.container_azure_node_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. Annotations on the node pool. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.
  - `azure_availability_zone` (`string`): Optional. The Azure availability zone of the nodes in this nodepool. When unspecified, it defaults to `1`. When `null`, the `azure_availability_zone` field will be omitted from the resulting object.
  - `cluster` (`string`): The azureCluster for the resource
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `subnet_id` (`string`): The ARM ID of the subnet where the node pool VMs run. Make sure it&#39;s a subnet under the virtual network in the cluster configuration.
  - `version` (`string`): The Kubernetes version (e.g. `1.19.10-gke.1000`) running on this node pool.
  - `autoscaling` (`list[obj]`): Autoscaler configuration for this node pool. When `null`, the `autoscaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.autoscaling.new](#fn-autoscalingnew) constructor.
  - `config` (`list[obj]`): The node configuration of the node pool. When `null`, the `config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.new](#fn-confignew) constructor.
  - `management` (`list[obj]`): The Management configuration for this node pool. When `null`, the `management` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.management.new](#fn-managementnew) constructor.
  - `max_pods_constraint` (`list[obj]`): The constraint on the maximum number of pods that can be run simultaneously on a node in the node pool. When `null`, the `max_pods_constraint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.max_pods_constraint.new](#fn-max_pods_constraintnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_azure_node_pool` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAutoscaling

```ts
withAutoscaling()
```

`google.list[obj].withAutoscaling` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAutoscalingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling` field.


### fn withAutoscalingMixin

```ts
withAutoscalingMixin()
```

`google.list[obj].withAutoscalingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the autoscaling field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscaling](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `autoscaling` field.


### fn withAzureAvailabilityZone

```ts
withAzureAvailabilityZone()
```

`google.string.withAzureAvailabilityZone` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the azure_availability_zone field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `azure_availability_zone` field.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withConfig

```ts
withConfig()
```

`google.list[obj].withConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withConfigMixin

```ts
withConfigMixin()
```

`google.list[obj].withConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `config` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withManagement

```ts
withManagement()
```

`google.list[obj].withManagement` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withManagementMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management` field.


### fn withManagementMixin

```ts
withManagementMixin()
```

`google.list[obj].withManagementMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the management field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withManagement](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `management` field.


### fn withMaxPodsConstraint

```ts
withMaxPodsConstraint()
```

`google.list[obj].withMaxPodsConstraint` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_pods_constraint field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withMaxPodsConstraintMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_pods_constraint` field.


### fn withMaxPodsConstraintMixin

```ts
withMaxPodsConstraintMixin()
```

`google.list[obj].withMaxPodsConstraintMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the max_pods_constraint field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withMaxPodsConstraint](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `max_pods_constraint` field.


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


### fn withVersion

```ts
withVersion()
```

`google.string.withVersion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the version field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `version` field.


## obj autoscaling



### fn autoscaling.new

```ts
new()
```


`google.container_azure_node_pool.autoscaling.new` constructs a new object with attributes and blocks configured for the `autoscaling`
Terraform sub block.



**Args**:
  - `max_node_count` (`number`): Maximum number of nodes in the node pool. Must be &gt;= min_node_count.
  - `min_node_count` (`number`): Minimum number of nodes in the node pool. Must be &gt;= 1 and &lt;= max_node_count.

**Returns**:
  - An attribute object that represents the `autoscaling` sub block.


## obj config



### fn config.new

```ts
new()
```


`google.container_azure_node_pool.config.new` constructs a new object with attributes and blocks configured for the `config`
Terraform sub block.



**Args**:
  - `tags` (`obj`): Optional. A set of tags to apply to all underlying Azure resources for this node pool. This currently only includes Virtual Machine Scale Sets. Specify at most 50 pairs containing alphanumerics, spaces, and symbols (.&#43;-=_:@/). Keys can be up to 127 Unicode characters. Values can be up to 255 Unicode characters. When `null`, the `tags` field will be omitted from the resulting object.
  - `vm_size` (`string`): Optional. The Azure VM size name. Example: `Standard_DS2_v2`. See (/anthos/clusters/docs/azure/reference/supported-vms) for options. When unspecified, it defaults to `Standard_DS2_v2`. When `null`, the `vm_size` field will be omitted from the resulting object.
  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.proxy_config.new](#fn-configproxy_confignew) constructor.
  - `root_volume` (`list[obj]`): Optional. Configuration related to the root volume provisioned for each node pool machine. When unspecified, it defaults to a 32-GiB Azure Disk. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.root_volume.new](#fn-configroot_volumenew) constructor.
  - `ssh_config` (`list[obj]`): SSH configuration for how to access the node pool machines. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_node_pool.config.ssh_config.new](#fn-configssh_confignew) constructor.

**Returns**:
  - An attribute object that represents the `config` sub block.


## obj config.proxy_config



### fn config.proxy_config.new

```ts
new()
```


`google.container_azure_node_pool.config.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`
Terraform sub block.



**Args**:
  - `resource_group_id` (`string`): The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-name&gt;`
  - `secret_id` (`string`): The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:&lt;key-vault-name&gt;.vault.azure.net/secrets/&lt;secret-name&gt;/&lt;secret-version&gt;`.

**Returns**:
  - An attribute object that represents the `proxy_config` sub block.


## obj config.root_volume



### fn config.root_volume.new

```ts
new()
```


`google.container_azure_node_pool.config.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`
Terraform sub block.



**Args**:
  - `size_gib` (`number`): Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `root_volume` sub block.


## obj config.ssh_config



### fn config.ssh_config.new

```ts
new()
```


`google.container_azure_node_pool.config.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`
Terraform sub block.



**Args**:
  - `authorized_key` (`string`): The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page.

**Returns**:
  - An attribute object that represents the `ssh_config` sub block.


## obj management



### fn management.new

```ts
new()
```


`google.container_azure_node_pool.management.new` constructs a new object with attributes and blocks configured for the `management`
Terraform sub block.



**Args**:
  - `auto_repair` (`bool`): Optional. Whether or not the nodes will be automatically repaired. When `null`, the `auto_repair` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `management` sub block.


## obj max_pods_constraint



### fn max_pods_constraint.new

```ts
new()
```


`google.container_azure_node_pool.max_pods_constraint.new` constructs a new object with attributes and blocks configured for the `max_pods_constraint`
Terraform sub block.



**Args**:
  - `max_pods_per_node` (`number`): The maximum number of pods to schedule on a single node.

**Returns**:
  - An attribute object that represents the `max_pods_constraint` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_azure_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

---
permalink: /container_azure_cluster/
---

# container_azure_cluster

`container_azure_cluster` represents the `google_container_azure_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withAnnotations()`](#fn-withannotations)
* [`fn withAuthorization()`](#fn-withauthorization)
* [`fn withAuthorizationMixin()`](#fn-withauthorizationmixin)
* [`fn withAzureRegion()`](#fn-withazureregion)
* [`fn withClient()`](#fn-withclient)
* [`fn withControlPlane()`](#fn-withcontrolplane)
* [`fn withControlPlaneMixin()`](#fn-withcontrolplanemixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withFleet()`](#fn-withfleet)
* [`fn withFleetMixin()`](#fn-withfleetmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withName()`](#fn-withname)
* [`fn withNetworking()`](#fn-withnetworking)
* [`fn withNetworkingMixin()`](#fn-withnetworkingmixin)
* [`fn withProject()`](#fn-withproject)
* [`fn withResourceGroupId()`](#fn-withresourcegroupid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj authorization`](#obj-authorization)
  * [`fn new()`](#fn-authorizationnew)
  * [`obj authorization.admin_users`](#obj-authorizationadmin_users)
    * [`fn new()`](#fn-authorizationadmin_usersnew)
* [`obj control_plane`](#obj-control_plane)
  * [`fn new()`](#fn-control_planenew)
  * [`obj control_plane.database_encryption`](#obj-control_planedatabase_encryption)
    * [`fn new()`](#fn-control_planedatabase_encryptionnew)
  * [`obj control_plane.main_volume`](#obj-control_planemain_volume)
    * [`fn new()`](#fn-control_planemain_volumenew)
  * [`obj control_plane.proxy_config`](#obj-control_planeproxy_config)
    * [`fn new()`](#fn-control_planeproxy_confignew)
  * [`obj control_plane.replica_placements`](#obj-control_planereplica_placements)
    * [`fn new()`](#fn-control_planereplica_placementsnew)
  * [`obj control_plane.root_volume`](#obj-control_planeroot_volume)
    * [`fn new()`](#fn-control_planeroot_volumenew)
  * [`obj control_plane.ssh_config`](#obj-control_planessh_config)
    * [`fn new()`](#fn-control_planessh_confignew)
* [`obj fleet`](#obj-fleet)
  * [`fn new()`](#fn-fleetnew)
* [`obj networking`](#obj-networking)
  * [`fn new()`](#fn-networkingnew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.container_azure_cluster.new` injects a new `google_container_azure_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.container_azure_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.container_azure_cluster` using the reference:

    $._ref.google_container_azure_cluster.some_id.get('id')

This is the same as directly entering `"${ google_container_azure_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.
  - `azure_region` (`string`): The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  - `client` (`string`): Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/&lt;project-number&gt;/locations/&lt;region&gt;/azureClients/&lt;client-id&gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `resource_group_id` (`string`): The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.authorization.new](#fn-container_azure_clusterauthorizationnew) constructor.
  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.new](#fn-container_azure_clustercontrol_planenew) constructor.
  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.fleet.new](#fn-container_azure_clusterfleetnew) constructor.
  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.networking.new](#fn-container_azure_clusternetworkingnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.timeouts.new](#fn-container_azure_clustertimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.container_azure_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `container_azure_cluster`
Terraform resource.

Unlike [google.container_azure_cluster.new](#fn-container_azure_clusternew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `annotations` (`obj`): Optional. Annotations on the cluster. This field has the same restrictions as Kubernetes annotations. The total size of all keys and values combined is limited to 256k. Keys can have 2 segments: prefix (optional) and name (required), separated by a slash (/). Prefix must be a DNS subdomain. Name must be 63 characters or less, begin and end with alphanumerics, with dashes (-), underscores (_), dots (.), and alphanumerics between. When `null`, the `annotations` field will be omitted from the resulting object.
  - `azure_region` (`string`): The Azure region where the cluster runs. Each Google Cloud region supports a subset of nearby Azure regions. You can call to list all supported Azure regions within a given Google Cloud region.
  - `client` (`string`): Name of the AzureClient. The `AzureClient` resource must reside on the same GCP project and region as the `AzureCluster`. `AzureClient` names are formatted as `projects/&lt;project-number&gt;/locations/&lt;region&gt;/azureClients/&lt;client-id&gt;`. See Resource Names (https:cloud.google.com/apis/design/resource_names) for more details on Google Cloud resource names.
  - `description` (`string`): Optional. A human readable description of this cluster. Cannot be longer than 255 UTF-8 encoded bytes. When `null`, the `description` field will be omitted from the resulting object.
  - `location` (`string`): The location for the resource
  - `name` (`string`): The name of this resource.
  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.
  - `resource_group_id` (`string`): The ARM ID of the resource group where the cluster resources are deployed. For example: `/subscriptions/*/resourceGroups/*`
  - `authorization` (`list[obj]`): Configuration related to the cluster RBAC settings. When `null`, the `authorization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.authorization.new](#fn-container_azure_clusterauthorizationnew) constructor.
  - `control_plane` (`list[obj]`): Configuration related to the cluster control plane. When `null`, the `control_plane` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.new](#fn-container_azure_clustercontrol_planenew) constructor.
  - `fleet` (`list[obj]`): Fleet configuration. When `null`, the `fleet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.fleet.new](#fn-container_azure_clusterfleetnew) constructor.
  - `networking` (`list[obj]`): Cluster-wide networking configuration. When `null`, the `networking` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.networking.new](#fn-container_azure_clusternetworkingnew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.timeouts.new](#fn-container_azure_clustertimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `container_azure_cluster` resource into the root Terraform configuration.


### fn withAnnotations

```ts
withAnnotations()
```

`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the annotations field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `annotations` field.


### fn withAuthorization

```ts
withAuthorization()
```

`google.list[obj].withAuthorization` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withAuthorizationMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAuthorizationMixin

```ts
withAuthorizationMixin()
```

`google.list[obj].withAuthorizationMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the authorization field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withAuthorization](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `authorization` field.


### fn withAzureRegion

```ts
withAzureRegion()
```

`google.string.withAzureRegion` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the azure_region field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `azure_region` field.


### fn withClient

```ts
withClient()
```

`google.string.withClient` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the client field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `client` field.


### fn withControlPlane

```ts
withControlPlane()
```

`google.list[obj].withControlPlane` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withControlPlaneMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane` field.


### fn withControlPlaneMixin

```ts
withControlPlaneMixin()
```

`google.list[obj].withControlPlaneMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the control_plane field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withControlPlane](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `control_plane` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


### fn withFleet

```ts
withFleet()
```

`google.list[obj].withFleet` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withFleetMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


### fn withFleetMixin

```ts
withFleetMixin()
```

`google.list[obj].withFleetMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the fleet field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withFleet](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `fleet` field.


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


### fn withNetworking

```ts
withNetworking()
```

`google.list[obj].withNetworking` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networking field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNetworkingMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networking` field.


### fn withNetworkingMixin

```ts
withNetworkingMixin()
```

`google.list[obj].withNetworkingMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the networking field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNetworking](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `networking` field.


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withResourceGroupId

```ts
withResourceGroupId()
```

`google.string.withResourceGroupId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the resource_group_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `resource_group_id` field.


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


## obj authorization



### fn authorization.new

```ts
new()
```


`google.container_azure_cluster.authorization.new` constructs a new object with attributes and blocks configured for the `authorization`
Terraform sub block.



**Args**:
  - `admin_users` (`list[obj]`): Users that can perform operations as a cluster admin. A new ClusterRoleBinding will be created to grant the cluster-admin ClusterRole to the users. Up to ten admin users can be provided. For more info on RBAC, see https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles When `null`, the `admin_users` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.authorization.admin_users.new](#fn-authorizationadmin_usersnew) constructor.

**Returns**:
  - An attribute object that represents the `authorization` sub block.


## obj authorization.admin_users



### fn authorization.admin_users.new

```ts
new()
```


`google.container_azure_cluster.authorization.admin_users.new` constructs a new object with attributes and blocks configured for the `admin_users`
Terraform sub block.



**Args**:
  - `username` (`string`): The name of the user, e.g. `my-gcp-id@gmail.com`.

**Returns**:
  - An attribute object that represents the `admin_users` sub block.


## obj control_plane



### fn control_plane.new

```ts
new()
```


`google.container_azure_cluster.control_plane.new` constructs a new object with attributes and blocks configured for the `control_plane`
Terraform sub block.



**Args**:
  - `subnet_id` (`string`): The ARM ID of the subnet where the control plane VMs are deployed. Example: `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`.
  - `tags` (`obj`): Optional. A set of tags to apply to all underlying control plane Azure resources. When `null`, the `tags` field will be omitted from the resulting object.
  - `version` (`string`): The Kubernetes version to run on control plane replicas (e.g. `1.19.10-gke.1000`). You can list all supported versions on a given Google Cloud region by calling GetAzureServerConfig.
  - `vm_size` (`string`): Optional. The Azure VM size name. Example: `Standard_DS2_v2`. For available VM sizes, see https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions. When unspecified, it defaults to `Standard_DS2_v2`. When `null`, the `vm_size` field will be omitted from the resulting object.
  - `database_encryption` (`list[obj]`): Optional. Configuration related to application-layer secrets encryption. When `null`, the `database_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.database_encryption.new](#fn-control_planedatabase_encryptionnew) constructor.
  - `main_volume` (`list[obj]`): Optional. Configuration related to the main volume provisioned for each control plane replica. The main volume is in charge of storing all of the cluster&#39;s etcd state. When unspecified, it defaults to a 8-GiB Azure Disk. When `null`, the `main_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.main_volume.new](#fn-control_planemain_volumenew) constructor.
  - `proxy_config` (`list[obj]`): Proxy configuration for outbound HTTP(S) traffic. When `null`, the `proxy_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.proxy_config.new](#fn-control_planeproxy_confignew) constructor.
  - `replica_placements` (`list[obj]`): Configuration for where to place the control plane replicas. Up to three replica placement instances can be specified. If replica_placements is set, the replica placement instances will be applied to the three control plane replicas as evenly as possible. When `null`, the `replica_placements` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.replica_placements.new](#fn-control_planereplica_placementsnew) constructor.
  - `root_volume` (`list[obj]`): Optional. Configuration related to the root volume provisioned for each control plane replica. When unspecified, it defaults to 32-GiB Azure Disk. When `null`, the `root_volume` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.root_volume.new](#fn-control_planeroot_volumenew) constructor.
  - `ssh_config` (`list[obj]`): SSH configuration for how to access the underlying control plane machines. When `null`, the `ssh_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.container_azure_cluster.control_plane.ssh_config.new](#fn-control_planessh_confignew) constructor.

**Returns**:
  - An attribute object that represents the `control_plane` sub block.


## obj control_plane.database_encryption



### fn control_plane.database_encryption.new

```ts
new()
```


`google.container_azure_cluster.control_plane.database_encryption.new` constructs a new object with attributes and blocks configured for the `database_encryption`
Terraform sub block.



**Args**:
  - `key_id` (`string`): The ARM ID of the Azure Key Vault key to encrypt / decrypt data. For example: `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-id&gt;/providers/Microsoft.KeyVault/vaults/&lt;key-vault-id&gt;/keys/&lt;key-name&gt;` Encryption will always take the latest version of the key and hence specific version is not supported.

**Returns**:
  - An attribute object that represents the `database_encryption` sub block.


## obj control_plane.main_volume



### fn control_plane.main_volume.new

```ts
new()
```


`google.container_azure_cluster.control_plane.main_volume.new` constructs a new object with attributes and blocks configured for the `main_volume`
Terraform sub block.



**Args**:
  - `size_gib` (`number`): Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `main_volume` sub block.


## obj control_plane.proxy_config



### fn control_plane.proxy_config.new

```ts
new()
```


`google.container_azure_cluster.control_plane.proxy_config.new` constructs a new object with attributes and blocks configured for the `proxy_config`
Terraform sub block.



**Args**:
  - `resource_group_id` (`string`): The ARM ID the of the resource group containing proxy keyvault. Resource group ids are formatted as `/subscriptions/&lt;subscription-id&gt;/resourceGroups/&lt;resource-group-name&gt;`
  - `secret_id` (`string`): The URL the of the proxy setting secret with its version. Secret ids are formatted as `https:&lt;key-vault-name&gt;.vault.azure.net/secrets/&lt;secret-name&gt;/&lt;secret-version&gt;`.

**Returns**:
  - An attribute object that represents the `proxy_config` sub block.


## obj control_plane.replica_placements



### fn control_plane.replica_placements.new

```ts
new()
```


`google.container_azure_cluster.control_plane.replica_placements.new` constructs a new object with attributes and blocks configured for the `replica_placements`
Terraform sub block.



**Args**:
  - `azure_availability_zone` (`string`): For a given replica, the Azure availability zone where to provision the control plane VM and the ETCD disk.
  - `subnet_id` (`string`): For a given replica, the ARM ID of the subnet where the control plane VM is deployed. Make sure it&#39;s a subnet under the virtual network in the cluster configuration.

**Returns**:
  - An attribute object that represents the `replica_placements` sub block.


## obj control_plane.root_volume



### fn control_plane.root_volume.new

```ts
new()
```


`google.container_azure_cluster.control_plane.root_volume.new` constructs a new object with attributes and blocks configured for the `root_volume`
Terraform sub block.



**Args**:
  - `size_gib` (`number`): Optional. The size of the disk, in GiBs. When unspecified, a default value is provided. See the specific reference in the parent resource. When `null`, the `size_gib` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `root_volume` sub block.


## obj control_plane.ssh_config



### fn control_plane.ssh_config.new

```ts
new()
```


`google.container_azure_cluster.control_plane.ssh_config.new` constructs a new object with attributes and blocks configured for the `ssh_config`
Terraform sub block.



**Args**:
  - `authorized_key` (`string`): The SSH public key data for VMs managed by Anthos. This accepts the authorized_keys file format used in OpenSSH according to the sshd(8) manual page.

**Returns**:
  - An attribute object that represents the `ssh_config` sub block.


## obj fleet



### fn fleet.new

```ts
new()
```


`google.container_azure_cluster.fleet.new` constructs a new object with attributes and blocks configured for the `fleet`
Terraform sub block.



**Args**:
  - `project` (`string`): The number of the Fleet host project where this cluster will be registered. When `null`, the `project` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `fleet` sub block.


## obj networking



### fn networking.new

```ts
new()
```


`google.container_azure_cluster.networking.new` constructs a new object with attributes and blocks configured for the `networking`
Terraform sub block.



**Args**:
  - `pod_address_cidr_blocks` (`list`): The IP address range of the pods in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All pods in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creation.
  - `service_address_cidr_blocks` (`list`): The IP address range for services in this cluster, in CIDR notation (e.g. `10.96.0.0/14`). All services in the cluster get assigned a unique RFC1918 IPv4 address from these ranges. Only a single range is supported. This field cannot be changed after creating a cluster.
  - `virtual_network_id` (`string`): The Azure Resource Manager (ARM) ID of the VNet associated with your cluster. All components in the cluster (i.e. control plane and node pools) run on a single VNet. Example: `/subscriptions/*/resourceGroups/*/providers/Microsoft.Network/virtualNetworks/*` This field cannot be changed after creation.

**Returns**:
  - An attribute object that represents the `networking` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.container_azure_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

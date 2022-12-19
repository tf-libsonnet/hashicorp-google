---
permalink: /game_services_game_server_cluster/
---

# game_services_game_server_cluster

`game_services_game_server_cluster` represents the `google_game_services_game_server_cluster` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withClusterId()`](#fn-withclusterid)
* [`fn withConnectionInfo()`](#fn-withconnectioninfo)
* [`fn withConnectionInfoMixin()`](#fn-withconnectioninfomixin)
* [`fn withDescription()`](#fn-withdescription)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withRealmId()`](#fn-withrealmid)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj connection_info`](#obj-connection_info)
  * [`fn new()`](#fn-connection_infonew)
  * [`obj connection_info.gke_cluster_reference`](#obj-connection_infogke_cluster_reference)
    * [`fn new()`](#fn-connection_infogke_cluster_referencenew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.game_services_game_server_cluster.new` injects a new `google_game_services_game_server_cluster` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.game_services_game_server_cluster.new('some_id')

You can get the reference to the `id` field of the created `google.game_services_game_server_cluster` using the reference:

    $._ref.google_game_services_game_server_cluster.some_id.get('id')

This is the same as directly entering `"${ google_game_services_game_server_cluster.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster_id` (`string`): Required. The resource name of the game server cluster
  - `description` (`string`): Human readable description of the cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this game server cluster. Each label is a
key-value pair. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Cluster. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `realm_id` (`string`): The realm id of the game server realm.
  - `connection_info` (`list[obj]`): Game server cluster connection information. This information is used to
manage game server clusters. When `null`, the `connection_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.connection_info.new](#fn-game_services_game_server_clusterconnection_infonew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.timeouts.new](#fn-game_services_game_server_clustertimeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.game_services_game_server_cluster.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_cluster`
Terraform resource.

Unlike [google.game_services_game_server_cluster.new](#fn-game_services_game_server_clusternew), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster_id` (`string`): Required. The resource name of the game server cluster
  - `description` (`string`): Human readable description of the cluster. When `null`, the `description` field will be omitted from the resulting object.
  - `labels` (`obj`): The labels associated with this game server cluster. Each label is a
key-value pair. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of the Cluster. When `null`, the `location` field will be omitted from the resulting object.
  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.
  - `realm_id` (`string`): The realm id of the game server realm.
  - `connection_info` (`list[obj]`): Game server cluster connection information. This information is used to
manage game server clusters. When `null`, the `connection_info` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.connection_info.new](#fn-game_services_game_server_clusterconnection_infonew) constructor.
  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.timeouts.new](#fn-game_services_game_server_clustertimeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_cluster` resource into the root Terraform configuration.


### fn withClusterId

```ts
withClusterId()
```

`google.string.withClusterId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster_id` field.


### fn withConnectionInfo

```ts
withConnectionInfo()
```

`google.list[obj].withConnectionInfo` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the connection_info field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withConnectionInfoMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `connection_info` field.


### fn withConnectionInfoMixin

```ts
withConnectionInfoMixin()
```

`google.list[obj].withConnectionInfoMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the connection_info field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withConnectionInfo](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `connection_info` field.


### fn withDescription

```ts
withDescription()
```

`google.string.withDescription` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the description field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `description` field.


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


### fn withProject

```ts
withProject()
```

`google.string.withProject` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the project field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `project` field.


### fn withRealmId

```ts
withRealmId()
```

`google.string.withRealmId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the realm_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `realm_id` field.


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


## obj connection_info



### fn connection_info.new

```ts
new()
```


`google.game_services_game_server_cluster.connection_info.new` constructs a new object with attributes and blocks configured for the `connection_info`
Terraform sub block.



**Args**:
  - `namespace` (`string`): Namespace designated on the game server cluster where the game server
instances will be created. The namespace existence will be validated
during creation.
  - `gke_cluster_reference` (`list[obj]`): Reference of the GKE cluster where the game servers are installed. When `null`, the `gke_cluster_reference` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_cluster.connection_info.gke_cluster_reference.new](#fn-connection_infogke_cluster_referencenew) constructor.

**Returns**:
  - An attribute object that represents the `connection_info` sub block.


## obj connection_info.gke_cluster_reference



### fn connection_info.gke_cluster_reference.new

```ts
new()
```


`google.game_services_game_server_cluster.connection_info.gke_cluster_reference.new` constructs a new object with attributes and blocks configured for the `gke_cluster_reference`
Terraform sub block.



**Args**:
  - `cluster` (`string`): The full or partial name of a GKE cluster, using one of the following
forms:

* &#39;projects/{project_id}/locations/{location}/clusters/{cluster_id}&#39;
* &#39;locations/{location}/clusters/{cluster_id}&#39;
* &#39;{cluster_id}&#39;

If project and location are not specified, the project and location of the
GameServerCluster resource are used to generate the full name of the
GKE cluster.

**Returns**:
  - An attribute object that represents the `gke_cluster_reference` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.game_services_game_server_cluster.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

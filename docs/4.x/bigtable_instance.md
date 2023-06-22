---
permalink: /bigtable_instance/
---

# bigtable_instance

`bigtable_instance` represents the `google_bigtable_instance` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withClusterMixin()`](#fn-withclustermixin)
* [`fn withDeletionProtection()`](#fn-withdeletionprotection)
* [`fn withDisplayName()`](#fn-withdisplayname)
* [`fn withInstanceType()`](#fn-withinstancetype)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withName()`](#fn-withname)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj cluster`](#obj-cluster)
  * [`fn new()`](#fn-clusternew)
  * [`obj cluster.autoscaling_config`](#obj-clusterautoscaling_config)
    * [`fn new()`](#fn-clusterautoscaling_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.bigtable_instance.new` injects a new `google_bigtable_instance` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.bigtable_instance.new('some_id')

You can get the reference to the `id` field of the created `google.bigtable_instance` using the reference:

    $._ref.google_bigtable_instance.some_id.get('id')

This is the same as directly entering `"${ google_bigtable_instance.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable display name of the Bigtable instance. Defaults to the instance name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `instance_type` (`string`): The instance type to create. One of &#34;DEVELOPMENT&#34; or &#34;PRODUCTION&#34;. Defaults to &#34;PRODUCTION&#34;. When `null`, the `instance_type` field will be omitted from the resulting object.
  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `cluster` (`list[obj]`): A block of cluster configuration options. This can be specified at least once. When `null`, the `cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.cluster.new](#fn-clusternew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.bigtable_instance.newAttrs` constructs a new object with attributes and blocks configured for the `bigtable_instance`
Terraform resource.

Unlike [google.bigtable_instance.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `deletion_protection` (`bool`): Whether or not to allow Terraform to destroy the instance. Unless this field is set to false in Terraform state, a terraform destroy or terraform apply that would delete the instance will fail. When `null`, the `deletion_protection` field will be omitted from the resulting object.
  - `display_name` (`string`): The human-readable display name of the Bigtable instance. Defaults to the instance name. When `null`, the `display_name` field will be omitted from the resulting object.
  - `instance_type` (`string`): The instance type to create. One of &#34;DEVELOPMENT&#34; or &#34;PRODUCTION&#34;. Defaults to &#34;PRODUCTION&#34;. When `null`, the `instance_type` field will be omitted from the resulting object.
  - `labels` (`obj`): A mapping of labels to assign to the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `name` (`string`): The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.
  - `cluster` (`list[obj]`): A block of cluster configuration options. This can be specified at least once. When `null`, the `cluster` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.cluster.new](#fn-clusternew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigtable_instance` resource into the root Terraform configuration.


### fn withCluster

```ts
withCluster()
```

`google.list[obj].withCluster` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withClusterMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster` field.


### fn withClusterMixin

```ts
withClusterMixin()
```

`google.list[obj].withClusterMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the cluster field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withCluster](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `cluster` field.


### fn withDeletionProtection

```ts
withDeletionProtection()
```

`google.bool.withDeletionProtection` constructs a mixin object that can be merged into the `bool`
Terraform resource block to set or update the deletion_protection field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`bool`): The value to set for the `deletion_protection` field.


### fn withDisplayName

```ts
withDisplayName()
```

`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the display_name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `display_name` field.


### fn withInstanceType

```ts
withInstanceType()
```

`google.string.withInstanceType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the instance_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `instance_type` field.


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


## obj cluster



### fn cluster.new

```ts
new()
```


`google.bigtable_instance.cluster.new` constructs a new object with attributes and blocks configured for the `cluster`
Terraform sub block.



**Args**:
  - `cluster_id` (`string`): The ID of the Cloud Bigtable cluster. Must be 6-30 characters and must only contain hyphens, lowercase letters and numbers.
  - `kms_key_name` (`string`): Describes the Cloud KMS encryption key that will be used to protect the destination Bigtable cluster. The requirements for this key are: 1) The Cloud Bigtable service account associated with the project that contains this cluster must be granted the cloudkms.cryptoKeyEncrypterDecrypter role on the CMEK key. 2) Only regional keys can be used and the region of the CMEK key must match the region of the cluster. 3) All clusters within an instance must use the same CMEK key. Values are of the form projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key} When `null`, the `kms_key_name` field will be omitted from the resulting object.
  - `num_nodes` (`number`): The number of nodes in your Cloud Bigtable cluster. Required, with a minimum of 1 for each cluster in an instance. When `null`, the `num_nodes` field will be omitted from the resulting object.
  - `storage_type` (`string`): The storage type to use. One of &#34;SSD&#34; or &#34;HDD&#34;. Defaults to &#34;SSD&#34;. When `null`, the `storage_type` field will be omitted from the resulting object.
  - `zone` (`string`): The zone to create the Cloud Bigtable cluster in. Each cluster must have a different zone in the same region. Zones that support Bigtable instances are noted on the Cloud Bigtable locations page. When `null`, the `zone` field will be omitted from the resulting object.
  - `autoscaling_config` (`list[obj]`): A list of Autoscaling configurations. Only one element is used and allowed. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigtable_instance.cluster.autoscaling_config.new](#fn-clusterautoscaling_confignew) constructor.

**Returns**:
  - An attribute object that represents the `cluster` sub block.


## obj cluster.autoscaling_config



### fn cluster.autoscaling_config.new

```ts
new()
```


`google.bigtable_instance.cluster.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`
Terraform sub block.



**Args**:
  - `cpu_target` (`number`): The target CPU utilization for autoscaling. Value must be between 10 and 80.
  - `max_nodes` (`number`): The maximum number of nodes for autoscaling.
  - `min_nodes` (`number`): The minimum number of nodes for autoscaling.
  - `storage_target` (`number`): The target storage utilization for autoscaling, in GB, for each node in a cluster. This number is limited between 2560 (2.5TiB) and 5120 (5TiB) for a SSD cluster and between 8192 (8TiB) and 16384 (16 TiB) for an HDD cluster. If not set, whatever is already set for the cluster will not change, or if the cluster is just being created, it will use the default value of 2560 for SSD clusters and 8192 for HDD clusters. When `null`, the `storage_target` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `autoscaling_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.bigtable_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

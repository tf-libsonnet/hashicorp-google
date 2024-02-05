---
permalink: /edgecontainer_node_pool/
---

# edgecontainer_node_pool

`edgecontainer_node_pool` represents the `google_edgecontainer_node_pool` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withCluster()`](#fn-withcluster)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocalDiskEncryption()`](#fn-withlocaldiskencryption)
* [`fn withLocalDiskEncryptionMixin()`](#fn-withlocaldiskencryptionmixin)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withMachineFilter()`](#fn-withmachinefilter)
* [`fn withName()`](#fn-withname)
* [`fn withNodeConfig()`](#fn-withnodeconfig)
* [`fn withNodeConfigMixin()`](#fn-withnodeconfigmixin)
* [`fn withNodeCount()`](#fn-withnodecount)
* [`fn withNodeLocation()`](#fn-withnodelocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj local_disk_encryption`](#obj-local_disk_encryption)
  * [`fn new()`](#fn-local_disk_encryptionnew)
* [`obj node_config`](#obj-node_config)
  * [`fn new()`](#fn-node_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.edgecontainer_node_pool.new` injects a new `google_edgecontainer_node_pool` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.edgecontainer_node_pool.new('some_id')

You can get the reference to the `id` field of the created `google.edgecontainer_node_pool` using the reference:

    $._ref.google_edgecontainer_node_pool.some_id.get('id')

This is the same as directly entering `"${ google_edgecontainer_node_pool.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `cluster` (`string`): The name of the target Distributed Cloud Edge Cluster.
  - `labels` (`obj`): Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `machine_filter` (`string`): Only machines matching this filter will be allowed to join the node pool.
The filtering language accepts strings like &#34;name=&lt;name&gt;&#34;, and is
documented in more detail in [AIP-160](https://google.aip.dev/160). When `null`, the `machine_filter` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the node pool.
  - `node_count` (`number`): The number of nodes in the pool.
  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: &#39;us-central1-edge-customer-a&#39;.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `local_disk_encryption` (`list[obj]`): Local disk encryption options. This field is only used when enabling CMEK support. When `null`, the `local_disk_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.local_disk_encryption.new](#fn-local_disk_encryptionnew) constructor.
  - `node_config` (`list[obj]`): Configuration for each node in the NodePool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.edgecontainer_node_pool.newAttrs` constructs a new object with attributes and blocks configured for the `edgecontainer_node_pool`
Terraform resource.

Unlike [google.edgecontainer_node_pool.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `cluster` (`string`): The name of the target Distributed Cloud Edge Cluster.
  - `labels` (`obj`): Labels associated with this resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): The location of the resource.
  - `machine_filter` (`string`): Only machines matching this filter will be allowed to join the node pool.
The filtering language accepts strings like &#34;name=&lt;name&gt;&#34;, and is
documented in more detail in [AIP-160](https://google.aip.dev/160). When `null`, the `machine_filter` field will be omitted from the resulting object.
  - `name` (`string`): The resource name of the node pool.
  - `node_count` (`number`): The number of nodes in the pool.
  - `node_location` (`string`): Name of the Google Distributed Cloud Edge zone where this node pool will be created. For example: &#39;us-central1-edge-customer-a&#39;.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `local_disk_encryption` (`list[obj]`): Local disk encryption options. This field is only used when enabling CMEK support. When `null`, the `local_disk_encryption` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.local_disk_encryption.new](#fn-local_disk_encryptionnew) constructor.
  - `node_config` (`list[obj]`): Configuration for each node in the NodePool When `null`, the `node_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.node_config.new](#fn-node_confignew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_node_pool.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgecontainer_node_pool` resource into the root Terraform configuration.


### fn withCluster

```ts
withCluster()
```

`google.string.withCluster` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the cluster field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `cluster` field.


### fn withLabels

```ts
withLabels()
```

`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`
Terraform resource block to set or update the labels field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`obj`): The value to set for the `labels` field.


### fn withLocalDiskEncryption

```ts
withLocalDiskEncryption()
```

`google.list[obj].withLocalDiskEncryption` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the local_disk_encryption field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withLocalDiskEncryptionMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `local_disk_encryption` field.


### fn withLocalDiskEncryptionMixin

```ts
withLocalDiskEncryptionMixin()
```

`google.list[obj].withLocalDiskEncryptionMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the local_disk_encryption field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withLocalDiskEncryption](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `local_disk_encryption` field.


### fn withLocation

```ts
withLocation()
```

`google.string.withLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `location` field.


### fn withMachineFilter

```ts
withMachineFilter()
```

`google.string.withMachineFilter` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the machine_filter field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `machine_filter` field.


### fn withName

```ts
withName()
```

`google.string.withName` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the name field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `name` field.


### fn withNodeConfig

```ts
withNodeConfig()
```

`google.list[obj].withNodeConfig` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withNodeConfigMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeConfigMixin

```ts
withNodeConfigMixin()
```

`google.list[obj].withNodeConfigMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the node_config field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withNodeConfig](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `node_config` field.


### fn withNodeCount

```ts
withNodeCount()
```

`google.number.withNodeCount` constructs a mixin object that can be merged into the `number`
Terraform resource block to set or update the node_count field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`number`): The value to set for the `node_count` field.


### fn withNodeLocation

```ts
withNodeLocation()
```

`google.string.withNodeLocation` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the node_location field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `node_location` field.


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


## obj local_disk_encryption



### fn local_disk_encryption.new

```ts
new()
```


`google.edgecontainer_node_pool.local_disk_encryption.new` constructs a new object with attributes and blocks configured for the `local_disk_encryption`
Terraform sub block.



**Args**:
  - `kms_key` (`string`): The Cloud KMS CryptoKey e.g. projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey} to use for protecting node local disks.
If not specified, a Google-managed key will be used instead. When `null`, the `kms_key` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `local_disk_encryption` sub block.


## obj node_config



### fn node_config.new

```ts
new()
```


`google.edgecontainer_node_pool.node_config.new` constructs a new object with attributes and blocks configured for the `node_config`
Terraform sub block.



**Args**:
  - `labels` (`obj`): &#34;The Kubernetes node labels&#34; When `null`, the `labels` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `node_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.edgecontainer_node_pool.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

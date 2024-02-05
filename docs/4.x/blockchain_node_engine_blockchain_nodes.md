---
permalink: /blockchain_node_engine_blockchain_nodes/
---

# blockchain_node_engine_blockchain_nodes

`blockchain_node_engine_blockchain_nodes` represents the `google_blockchain_node_engine_blockchain_nodes` Terraform resource.



This package contains functions and utilities for setting up the resource using Jsonnet code.


## Index

* [`fn new()`](#fn-new)
* [`fn newAttrs()`](#fn-newattrs)
* [`fn withBlockchainNodeId()`](#fn-withblockchainnodeid)
* [`fn withBlockchainType()`](#fn-withblockchaintype)
* [`fn withEthereumDetails()`](#fn-withethereumdetails)
* [`fn withEthereumDetailsMixin()`](#fn-withethereumdetailsmixin)
* [`fn withLabels()`](#fn-withlabels)
* [`fn withLocation()`](#fn-withlocation)
* [`fn withProject()`](#fn-withproject)
* [`fn withTimeouts()`](#fn-withtimeouts)
* [`fn withTimeoutsMixin()`](#fn-withtimeoutsmixin)
* [`obj ethereum_details`](#obj-ethereum_details)
  * [`fn new()`](#fn-ethereum_detailsnew)
  * [`obj ethereum_details.geth_details`](#obj-ethereum_detailsgeth_details)
    * [`fn new()`](#fn-ethereum_detailsgeth_detailsnew)
  * [`obj ethereum_details.validator_config`](#obj-ethereum_detailsvalidator_config)
    * [`fn new()`](#fn-ethereum_detailsvalidator_confignew)
* [`obj timeouts`](#obj-timeouts)
  * [`fn new()`](#fn-timeoutsnew)

## Fields

### fn new

```ts
new()
```


`google.blockchain_node_engine_blockchain_nodes.new` injects a new `google_blockchain_node_engine_blockchain_nodes` Terraform `resource`
block into the root module document.

Additionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the
resource. For example, if you added a new instance to the root using:

    # arguments omitted for brevity
    google.blockchain_node_engine_blockchain_nodes.new('some_id')

You can get the reference to the `id` field of the created `google.blockchain_node_engine_blockchain_nodes` using the reference:

    $._ref.google_blockchain_node_engine_blockchain_nodes.some_id.get('id')

This is the same as directly entering `"${ google_blockchain_node_engine_blockchain_nodes.some_id.id }"` as the value.

NOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,
or `$` to refer to the root object. Instead, make an explicit outer object using `local`.

**Args**:
  - `resourceLabel` (`string`): The name label of the block.
  - `blockchain_node_id` (`string`): ID of the requesting object.
  - `blockchain_type` (`string`): User-provided key-value pairs Possible values: [&#34;ETHEREUM&#34;] When `null`, the `blockchain_type` field will be omitted from the resulting object.
  - `labels` (`obj`): User-provided key-value pairs


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of Blockchain Node being created.
  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.
  - `ethereum_details` (`list[obj]`): User-provided key-value pairs When `null`, the `ethereum_details` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.new](#fn-ethereum_detailsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
- A mixin object that injects the new resource into the root Terraform configuration.


### fn newAttrs

```ts
newAttrs()
```


`google.blockchain_node_engine_blockchain_nodes.newAttrs` constructs a new object with attributes and blocks configured for the `blockchain_node_engine_blockchain_nodes`
Terraform resource.

Unlike [google.blockchain_node_engine_blockchain_nodes.new](#fn-new), this function will not inject the `resource`
block into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the
[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.

This is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to
injecting into a complete block.

**Args**:
  - `blockchain_node_id` (`string`): ID of the requesting object.
  - `blockchain_type` (`string`): User-provided key-value pairs Possible values: [&#34;ETHEREUM&#34;] When `null`, the `blockchain_type` field will be omitted from the resulting object.
  - `labels` (`obj`): User-provided key-value pairs


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.
  - `location` (`string`): Location of Blockchain Node being created.
  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.
  - `ethereum_details` (`list[obj]`): User-provided key-value pairs When `null`, the `ethereum_details` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.new](#fn-ethereum_detailsnew) constructor.
  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.timeouts.new](#fn-timeoutsnew) constructor.

**Returns**:
  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `blockchain_node_engine_blockchain_nodes` resource into the root Terraform configuration.


### fn withBlockchainNodeId

```ts
withBlockchainNodeId()
```

`google.string.withBlockchainNodeId` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the blockchain_node_id field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `blockchain_node_id` field.


### fn withBlockchainType

```ts
withBlockchainType()
```

`google.string.withBlockchainType` constructs a mixin object that can be merged into the `string`
Terraform resource block to set or update the blockchain_type field.



**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`string`): The value to set for the `blockchain_type` field.


### fn withEthereumDetails

```ts
withEthereumDetails()
```

`google.list[obj].withEthereumDetails` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ethereum_details field.

This function will replace the array with the passed in `value`. If you wish to instead append the
passed in value to the existing array, use the [google.list[obj].withEthereumDetailsMixin](TODO) function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ethereum_details` field.


### fn withEthereumDetailsMixin

```ts
withEthereumDetailsMixin()
```

`google.list[obj].withEthereumDetailsMixin` constructs a mixin object that can be merged into the `list[obj]`
Terraform resource block to set or update the ethereum_details field.

This function will append the passed in array or object to the existing array. If you wish
to instead replace the array with the passed in `value`, use the [google.list[obj].withEthereumDetails](TODO)
function.


**Args**:
  - `resourceLabel` (`string`): The name label of the block to update.
  - `value` (`list[obj]`): The value to set for the `ethereum_details` field.


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


## obj ethereum_details



### fn ethereum_details.new

```ts
new()
```


`google.blockchain_node_engine_blockchain_nodes.ethereum_details.new` constructs a new object with attributes and blocks configured for the `ethereum_details`
Terraform sub block.



**Args**:
  - `api_enable_admin` (`bool`): Enables JSON-RPC access to functions in the admin namespace. Defaults to false. When `null`, the `api_enable_admin` field will be omitted from the resulting object.
  - `api_enable_debug` (`bool`): Enables JSON-RPC access to functions in the debug namespace. Defaults to false. When `null`, the `api_enable_debug` field will be omitted from the resulting object.
  - `consensus_client` (`string`): The consensus client Possible values: [&#34;CONSENSUS_CLIENT_UNSPECIFIED&#34;, &#34;LIGHTHOUSE&#34;] When `null`, the `consensus_client` field will be omitted from the resulting object.
  - `execution_client` (`string`): The execution client Possible values: [&#34;EXECUTION_CLIENT_UNSPECIFIED&#34;, &#34;GETH&#34;, &#34;ERIGON&#34;] When `null`, the `execution_client` field will be omitted from the resulting object.
  - `network` (`string`): The Ethereum environment being accessed. Possible values: [&#34;MAINNET&#34;, &#34;TESTNET_GOERLI_PRATER&#34;, &#34;TESTNET_SEPOLIA&#34;] When `null`, the `network` field will be omitted from the resulting object.
  - `node_type` (`string`): The type of Ethereum node. Possible values: [&#34;LIGHT&#34;, &#34;FULL&#34;, &#34;ARCHIVE&#34;] When `null`, the `node_type` field will be omitted from the resulting object.
  - `geth_details` (`list[obj]`): User-provided key-value pairs When `null`, the `geth_details` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.geth_details.new](#fn-ethereum_detailsgeth_detailsnew) constructor.
  - `validator_config` (`list[obj]`): Configuration for validator-related parameters on the beacon client, and for any managed validator client. When `null`, the `validator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.validator_config.new](#fn-ethereum_detailsvalidator_confignew) constructor.

**Returns**:
  - An attribute object that represents the `ethereum_details` sub block.


## obj ethereum_details.geth_details



### fn ethereum_details.geth_details.new

```ts
new()
```


`google.blockchain_node_engine_blockchain_nodes.ethereum_details.geth_details.new` constructs a new object with attributes and blocks configured for the `geth_details`
Terraform sub block.



**Args**:
  - `garbage_collection_mode` (`string`): Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE. Possible values: [&#34;FULL&#34;, &#34;ARCHIVE&#34;] When `null`, the `garbage_collection_mode` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `geth_details` sub block.


## obj ethereum_details.validator_config



### fn ethereum_details.validator_config.new

```ts
new()
```


`google.blockchain_node_engine_blockchain_nodes.ethereum_details.validator_config.new` constructs a new object with attributes and blocks configured for the `validator_config`
Terraform sub block.



**Args**:
  - `mev_relay_urls` (`list`): URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client. When `null`, the `mev_relay_urls` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `validator_config` sub block.


## obj timeouts



### fn timeouts.new

```ts
new()
```


`google.blockchain_node_engine_blockchain_nodes.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`
Terraform sub block.



**Args**:
  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.
  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.
  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.

**Returns**:
  - An attribute object that represents the `timeouts` sub block.

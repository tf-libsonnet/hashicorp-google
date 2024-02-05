local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='blockchain_node_engine_blockchain_nodes', url='', help='`blockchain_node_engine_blockchain_nodes` represents the `google_blockchain_node_engine_blockchain_nodes` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  ethereum_details:: {
    geth_details:: {
      '#new':: d.fn(help='\n`google.blockchain_node_engine_blockchain_nodes.ethereum_details.geth_details.new` constructs a new object with attributes and blocks configured for the `geth_details`\nTerraform sub block.\n\n\n\n**Args**:\n  - `garbage_collection_mode` (`string`): Blockchain garbage collection modes. Only applicable when NodeType is FULL or ARCHIVE. Possible values: [&#34;FULL&#34;, &#34;ARCHIVE&#34;] When `null`, the `garbage_collection_mode` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `geth_details` sub block.\n', args=[]),
      new(
        garbage_collection_mode=null
      ):: std.prune(a={
        garbage_collection_mode: garbage_collection_mode,
      }),
    },
    '#new':: d.fn(help='\n`google.blockchain_node_engine_blockchain_nodes.ethereum_details.new` constructs a new object with attributes and blocks configured for the `ethereum_details`\nTerraform sub block.\n\n\n\n**Args**:\n  - `api_enable_admin` (`bool`): Enables JSON-RPC access to functions in the admin namespace. Defaults to false. When `null`, the `api_enable_admin` field will be omitted from the resulting object.\n  - `api_enable_debug` (`bool`): Enables JSON-RPC access to functions in the debug namespace. Defaults to false. When `null`, the `api_enable_debug` field will be omitted from the resulting object.\n  - `consensus_client` (`string`): The consensus client Possible values: [&#34;CONSENSUS_CLIENT_UNSPECIFIED&#34;, &#34;LIGHTHOUSE&#34;] When `null`, the `consensus_client` field will be omitted from the resulting object.\n  - `execution_client` (`string`): The execution client Possible values: [&#34;EXECUTION_CLIENT_UNSPECIFIED&#34;, &#34;GETH&#34;, &#34;ERIGON&#34;] When `null`, the `execution_client` field will be omitted from the resulting object.\n  - `network` (`string`): The Ethereum environment being accessed. Possible values: [&#34;MAINNET&#34;, &#34;TESTNET_GOERLI_PRATER&#34;, &#34;TESTNET_SEPOLIA&#34;] When `null`, the `network` field will be omitted from the resulting object.\n  - `node_type` (`string`): The type of Ethereum node. Possible values: [&#34;LIGHT&#34;, &#34;FULL&#34;, &#34;ARCHIVE&#34;] When `null`, the `node_type` field will be omitted from the resulting object.\n  - `geth_details` (`list[obj]`): User-provided key-value pairs When `null`, the `geth_details` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.geth_details.new](#fn-ethereum_detailsgeth_detailsnew) constructor.\n  - `validator_config` (`list[obj]`): Configuration for validator-related parameters on the beacon client, and for any managed validator client. When `null`, the `validator_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.validator_config.new](#fn-ethereum_detailsvalidator_confignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `ethereum_details` sub block.\n', args=[]),
    new(
      api_enable_admin=null,
      api_enable_debug=null,
      consensus_client=null,
      execution_client=null,
      geth_details=null,
      network=null,
      node_type=null,
      validator_config=null
    ):: std.prune(a={
      api_enable_admin: api_enable_admin,
      api_enable_debug: api_enable_debug,
      consensus_client: consensus_client,
      execution_client: execution_client,
      geth_details: geth_details,
      network: network,
      node_type: node_type,
      validator_config: validator_config,
    }),
    validator_config:: {
      '#new':: d.fn(help='\n`google.blockchain_node_engine_blockchain_nodes.ethereum_details.validator_config.new` constructs a new object with attributes and blocks configured for the `validator_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `mev_relay_urls` (`list`): URLs for MEV-relay services to use for block building. When set, a managed MEV-boost service is configured on the beacon client. When `null`, the `mev_relay_urls` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `validator_config` sub block.\n', args=[]),
      new(
        mev_relay_urls=null
      ):: std.prune(a={
        mev_relay_urls: mev_relay_urls,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.blockchain_node_engine_blockchain_nodes.new` injects a new `google_blockchain_node_engine_blockchain_nodes` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.blockchain_node_engine_blockchain_nodes.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.blockchain_node_engine_blockchain_nodes` using the reference:\n\n    $._ref.google_blockchain_node_engine_blockchain_nodes.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_blockchain_node_engine_blockchain_nodes.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `blockchain_node_id` (`string`): ID of the requesting object.\n  - `blockchain_type` (`string`): User-provided key-value pairs Possible values: [\u0026#34;ETHEREUM\u0026#34;] When `null`, the `blockchain_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-provided key-value pairs\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of Blockchain Node being created.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `ethereum_details` (`list[obj]`): User-provided key-value pairs When `null`, the `ethereum_details` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.new](#fn-ethereum_detailsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    blockchain_node_id,
    location,
    blockchain_type=null,
    ethereum_details=null,
    labels=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_blockchain_node_engine_blockchain_nodes',
    label=resourceLabel,
    attrs=self.newAttrs(
      blockchain_node_id=blockchain_node_id,
      blockchain_type=blockchain_type,
      ethereum_details=ethereum_details,
      labels=labels,
      location=location,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.blockchain_node_engine_blockchain_nodes.newAttrs` constructs a new object with attributes and blocks configured for the `blockchain_node_engine_blockchain_nodes`\nTerraform resource.\n\nUnlike [google.blockchain_node_engine_blockchain_nodes.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `blockchain_node_id` (`string`): ID of the requesting object.\n  - `blockchain_type` (`string`): User-provided key-value pairs Possible values: [&#34;ETHEREUM&#34;] When `null`, the `blockchain_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-provided key-value pairs\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of Blockchain Node being created.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `ethereum_details` (`list[obj]`): User-provided key-value pairs When `null`, the `ethereum_details` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.ethereum_details.new](#fn-ethereum_detailsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.blockchain_node_engine_blockchain_nodes.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `blockchain_node_engine_blockchain_nodes` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    blockchain_node_id,
    location,
    blockchain_type=null,
    ethereum_details=null,
    labels=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    blockchain_node_id: blockchain_node_id,
    blockchain_type: blockchain_type,
    ethereum_details: ethereum_details,
    labels: labels,
    location: location,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.blockchain_node_engine_blockchain_nodes.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  '#withBlockchainNodeId':: d.fn(help='`google.string.withBlockchainNodeId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the blockchain_node_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `blockchain_node_id` field.\n', args=[]),
  withBlockchainNodeId(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          blockchain_node_id: value,
        },
      },
    },
  },
  '#withBlockchainType':: d.fn(help='`google.string.withBlockchainType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the blockchain_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `blockchain_type` field.\n', args=[]),
  withBlockchainType(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          blockchain_type: value,
        },
      },
    },
  },
  '#withEthereumDetails':: d.fn(help='`google.list[obj].withEthereumDetails` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ethereum_details field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEthereumDetailsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ethereum_details` field.\n', args=[]),
  withEthereumDetails(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          ethereum_details: value,
        },
      },
    },
  },
  '#withEthereumDetailsMixin':: d.fn(help='`google.list[obj].withEthereumDetailsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the ethereum_details field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEthereumDetails](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `ethereum_details` field.\n', args=[]),
  withEthereumDetailsMixin(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          ethereum_details+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_blockchain_node_engine_blockchain_nodes+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

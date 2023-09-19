local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_index_endpoint', url='', help='`vertex_ai_index_endpoint` represents the `google_vertex_ai_index_endpoint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.vertex_ai_index_endpoint.new` injects a new `google_vertex_ai_index_endpoint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_index_endpoint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_index_endpoint` using the reference:\n\n    $._ref.google_vertex_ai_index_endpoint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_index_endpoint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `network` (`string`): The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.\nPrivate services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.\n[Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): \u0026#39;projects/{project}/global/networks/{network}\u0026#39;.\nWhere \u0026#39;{project}\u0026#39; is a project number, as in \u0026#39;12345\u0026#39;, and \u0026#39;{network}\u0026#39; is network name. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `public_endpoint_enabled` (`bool`): If true, the deployed index will be accessible through public endpoint. When `null`, the `public_endpoint_enabled` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the index endpoint. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    description=null,
    labels=null,
    network=null,
    project=null,
    public_endpoint_enabled=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_index_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      labels=labels,
      network=network,
      project=project,
      public_endpoint_enabled=public_endpoint_enabled,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_index_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_index_endpoint`\nTerraform resource.\n\nUnlike [google.vertex_ai_index_endpoint.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the Index. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Indexes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `network` (`string`): The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.\nPrivate services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.\n[Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): &#39;projects/{project}/global/networks/{network}&#39;.\nWhere &#39;{project}&#39; is a project number, as in &#39;12345&#39;, and &#39;{network}&#39; is network name. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `public_endpoint_enabled` (`bool`): If true, the deployed index will be accessible through public endpoint. When `null`, the `public_endpoint_enabled` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the index endpoint. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_index_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_index_endpoint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    description=null,
    labels=null,
    network=null,
    project=null,
    public_endpoint_enabled=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    labels: labels,
    network: network,
    project: project,
    public_endpoint_enabled: public_endpoint_enabled,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_index_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPublicEndpointEnabled':: d.fn(help='`google.bool.withPublicEndpointEnabled` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the public_endpoint_enabled field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `public_endpoint_enabled` field.\n', args=[]),
  withPublicEndpointEnabled(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          public_endpoint_enabled: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_index_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='beyondcorp_app_gateway', url='', help='`beyondcorp_app_gateway` represents the `google_beyondcorp_app_gateway` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.beyondcorp_app_gateway.new` injects a new `google_beyondcorp_app_gateway` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.beyondcorp_app_gateway.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.beyondcorp_app_gateway` using the reference:\n\n    $._ref.google_beyondcorp_app_gateway.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_beyondcorp_app_gateway.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `display_name` (`string`): An arbitrary user-provided name for the AppGateway. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `host_type` (`string`): The type of hosting used by the AppGateway. Default value: \u0026#34;HOST_TYPE_UNSPECIFIED\u0026#34; Possible values: [\u0026#34;HOST_TYPE_UNSPECIFIED\u0026#34;, \u0026#34;GCP_REGIONAL_MIG\u0026#34;] When `null`, the `host_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): ID of the AppGateway.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the AppGateway. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type of network connectivity used by the AppGateway. Default value: \u0026#34;TYPE_UNSPECIFIED\u0026#34; Possible values: [\u0026#34;TYPE_UNSPECIFIED\u0026#34;, \u0026#34;TCP_PROXY\u0026#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_gateway.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    display_name=null,
    host_type=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_beyondcorp_app_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      host_type=host_type,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.beyondcorp_app_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `beyondcorp_app_gateway`\nTerraform resource.\n\nUnlike [google.beyondcorp_app_gateway.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `display_name` (`string`): An arbitrary user-provided name for the AppGateway. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `host_type` (`string`): The type of hosting used by the AppGateway. Default value: &#34;HOST_TYPE_UNSPECIFIED&#34; Possible values: [&#34;HOST_TYPE_UNSPECIFIED&#34;, &#34;GCP_REGIONAL_MIG&#34;] When `null`, the `host_type` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): ID of the AppGateway.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the AppGateway. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type of network connectivity used by the AppGateway. Default value: &#34;TYPE_UNSPECIFIED&#34; Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;TCP_PROXY&#34;] When `null`, the `type` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_gateway.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `beyondcorp_app_gateway` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    display_name=null,
    host_type=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    display_name: display_name,
    host_type: host_type,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.beyondcorp_app_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withHostType':: d.fn(help='`google.string.withHostType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host_type` field.\n', args=[]),
  withHostType(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          host_type: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_gateway+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

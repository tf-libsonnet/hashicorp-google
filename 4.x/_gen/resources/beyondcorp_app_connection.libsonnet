local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='beyondcorp_app_connection', url='', help='`beyondcorp_app_connection` represents the `google_beyondcorp_app_connection` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  application_endpoint:: {
    '#new':: d.fn(help='\n`google.beyondcorp_app_connection.application_endpoint.new` constructs a new object with attributes and blocks configured for the `application_endpoint`\nTerraform sub block.\n\n\n\n**Args**:\n  - `host` (`string`): Hostname or IP address of the remote application endpoint.\n  - `port` (`number`): Port of the remote application endpoint.\n\n**Returns**:\n  - An attribute object that represents the `application_endpoint` sub block.\n', args=[]),
    new(
      host,
      port
    ):: std.prune(a={
      host: host,
      port: port,
    }),
  },
  gateway:: {
    '#new':: d.fn(help='\n`google.beyondcorp_app_connection.gateway.new` constructs a new object with attributes and blocks configured for the `gateway`\nTerraform sub block.\n\n\n\n**Args**:\n  - `app_gateway` (`string`): AppGateway name in following format: projects/{project_id}/locations/{locationId}/appgateways/{gateway_id}.\n  - `type` (`string`): The type of hosting used by the gateway. Refer to\nhttps://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#Type_1\nfor a list of possible values. When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `gateway` sub block.\n', args=[]),
    new(
      app_gateway,
      type=null
    ):: std.prune(a={
      app_gateway: app_gateway,
      type: type,
    }),
  },
  '#new':: d.fn(help="\n`google.beyondcorp_app_connection.new` injects a new `google_beyondcorp_app_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.beyondcorp_app_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.beyondcorp_app_connection` using the reference:\n\n    $._ref.google_beyondcorp_app_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_beyondcorp_app_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `connectors` (`list`): List of AppConnectors that are authorised to be associated with this AppConnection When `null`, the `connectors` field will be omitted from the resulting object.\n  - `display_name` (`string`): An arbitrary user-provided name for the AppConnection. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): ID of the AppConnection.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the AppConnection. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type of network connectivity used by the AppConnection. Refer to\nhttps://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type\nfor a list of possible values. When `null`, the `type` field will be omitted from the resulting object.\n  - `application_endpoint` (`list[obj]`): Address of the remote application endpoint for the BeyondCorp AppConnection. When `null`, the `application_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.application_endpoint.new](#fn-application_endpointnew) constructor.\n  - `gateway` (`list[obj]`): Gateway used by the AppConnection. When `null`, the `gateway` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.gateway.new](#fn-gatewaynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    application_endpoint=null,
    connectors=null,
    display_name=null,
    gateway=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    type=null,
    _meta={}
  ):: tf.withResource(
    type='google_beyondcorp_app_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      application_endpoint=application_endpoint,
      connectors=connectors,
      display_name=display_name,
      gateway=gateway,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.beyondcorp_app_connection.newAttrs` constructs a new object with attributes and blocks configured for the `beyondcorp_app_connection`\nTerraform resource.\n\nUnlike [google.beyondcorp_app_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `connectors` (`list`): List of AppConnectors that are authorised to be associated with this AppConnection When `null`, the `connectors` field will be omitted from the resulting object.\n  - `display_name` (`string`): An arbitrary user-provided name for the AppConnection. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user provided metadata.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): ID of the AppConnection.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the AppConnection. When `null`, the `region` field will be omitted from the resulting object.\n  - `type` (`string`): The type of network connectivity used by the AppConnection. Refer to\nhttps://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type\nfor a list of possible values. When `null`, the `type` field will be omitted from the resulting object.\n  - `application_endpoint` (`list[obj]`): Address of the remote application endpoint for the BeyondCorp AppConnection. When `null`, the `application_endpoint` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.application_endpoint.new](#fn-application_endpointnew) constructor.\n  - `gateway` (`list[obj]`): Gateway used by the AppConnection. When `null`, the `gateway` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.gateway.new](#fn-gatewaynew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.beyondcorp_app_connection.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `beyondcorp_app_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    application_endpoint=null,
    connectors=null,
    display_name=null,
    gateway=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    type=null
  ):: std.prune(a={
    application_endpoint: application_endpoint,
    connectors: connectors,
    display_name: display_name,
    gateway: gateway,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.beyondcorp_app_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withApplicationEndpoint':: d.fn(help='`google.list[obj].withApplicationEndpoint` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the application_endpoint field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withApplicationEndpointMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `application_endpoint` field.\n', args=[]),
  withApplicationEndpoint(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          application_endpoint: value,
        },
      },
    },
  },
  '#withApplicationEndpointMixin':: d.fn(help='`google.list[obj].withApplicationEndpointMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the application_endpoint field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withApplicationEndpoint](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `application_endpoint` field.\n', args=[]),
  withApplicationEndpointMixin(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          application_endpoint+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConnectors':: d.fn(help='`google.list.withConnectors` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the connectors field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `connectors` field.\n', args=[]),
  withConnectors(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          connectors: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withGateway':: d.fn(help='`google.list[obj].withGateway` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withGatewayMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway` field.\n', args=[]),
  withGateway(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          gateway: value,
        },
      },
    },
  },
  '#withGatewayMixin':: d.fn(help='`google.list[obj].withGatewayMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the gateway field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withGateway](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `gateway` field.\n', args=[]),
  withGatewayMixin(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          gateway+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_beyondcorp_app_connection+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

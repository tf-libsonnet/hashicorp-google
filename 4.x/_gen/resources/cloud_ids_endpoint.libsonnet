local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='cloud_ids_endpoint', url='', help='`cloud_ids_endpoint` represents the `google_cloud_ids_endpoint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.cloud_ids_endpoint.new` injects a new `google_cloud_ids_endpoint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.cloud_ids_endpoint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.cloud_ids_endpoint` using the reference:\n\n    $._ref.google_cloud_ids_endpoint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_cloud_ids_endpoint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of the endpoint. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the endpoint.\n  - `name` (`string`): Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.\n  - `network` (`string`): Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like \u0026#34;src-net\u0026#34;) or the full URL to the network (like \u0026#34;projects/{project_id}/global/networks/src-net\u0026#34;).\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `severity` (`string`): The minimum alert severity level that is reported by the endpoint. Possible values: [\u0026#34;INFORMATIONAL\u0026#34;, \u0026#34;LOW\u0026#34;, \u0026#34;MEDIUM\u0026#34;, \u0026#34;HIGH\u0026#34;, \u0026#34;CRITICAL\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_ids_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    network,
    severity,
    description=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_ids_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      location=location,
      name=name,
      network=network,
      project=project,
      severity=severity,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.cloud_ids_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `cloud_ids_endpoint`\nTerraform resource.\n\nUnlike [google.cloud_ids_endpoint.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of the endpoint. When `null`, the `description` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the endpoint.\n  - `name` (`string`): Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.\n  - `network` (`string`): Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like &#34;src-net&#34;) or the full URL to the network (like &#34;projects/{project_id}/global/networks/src-net&#34;).\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `severity` (`string`): The minimum alert severity level that is reported by the endpoint. Possible values: [&#34;INFORMATIONAL&#34;, &#34;LOW&#34;, &#34;MEDIUM&#34;, &#34;HIGH&#34;, &#34;CRITICAL&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.cloud_ids_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `cloud_ids_endpoint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    network,
    severity,
    description=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    location: location,
    name: name,
    network: network,
    project: project,
    severity: severity,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.cloud_ids_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSeverity':: d.fn(help='`google.string.withSeverity` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the severity field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `severity` field.\n', args=[]),
  withSeverity(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          severity: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_cloud_ids_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

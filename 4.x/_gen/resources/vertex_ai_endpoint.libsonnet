local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_endpoint', url='', help='`vertex_ai_endpoint` represents the `google_vertex_ai_endpoint` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_spec:: {
    '#new':: d.fn(help='\n`google.vertex_ai_endpoint.encryption_spec.new` constructs a new object with attributes and blocks configured for the `encryption_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: &#39;projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key&#39;. The key needs to be in the same region as where the compute resource is created.\n\n**Returns**:\n  - An attribute object that represents the `encryption_spec` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_endpoint.new` injects a new `google_vertex_ai_endpoint` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_endpoint.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_endpoint` using the reference:\n\n    $._ref.google_vertex_ai_endpoint.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_endpoint.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description of the Endpoint. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.\n  - `network` (`string`): The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): \u0026#39;projects/{project}/global/networks/{network}\u0026#39;. Where \u0026#39;{project}\u0026#39; is a project number, as in \u0026#39;12345\u0026#39;, and \u0026#39;{network}\u0026#39; is network name. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_endpoint.encryption_spec.new](#fn-encryption_specnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    location,
    name,
    description=null,
    encryption_spec=null,
    labels=null,
    network=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_endpoint',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      encryption_spec=encryption_spec,
      labels=labels,
      location=location,
      name=name,
      network=network,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_endpoint.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_endpoint`\nTerraform resource.\n\nUnlike [google.vertex_ai_endpoint.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description of the Endpoint. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): Required. The display name of the Endpoint. The name can be up to 128 characters long and can consist of any UTF-8 characters.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Endpoints. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. See https://goo.gl/xmQnxf for more information and examples of labels. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): The resource name of the Endpoint. The name must be numeric with no leading zeros and can be at most 10 digits.\n  - `network` (`string`): The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the Endpoint should be peered. Private services access must already be configured for the network. If left unspecified, the Endpoint is not peered with any network. Only one of the fields, network or enable_private_service_connect, can be set. [Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): &#39;projects/{project}/global/networks/{network}&#39;. Where &#39;{project}&#39; is a project number, as in &#39;12345&#39;, and &#39;{network}&#39; is network name. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for an Endpoint. If set, this Endpoint and all sub-resources of this Endpoint will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_endpoint.encryption_spec.new](#fn-encryption_specnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_endpoint.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_endpoint` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    location,
    name,
    description=null,
    encryption_spec=null,
    labels=null,
    network=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    encryption_spec: encryption_spec,
    labels: labels,
    location: location,
    name: name,
    network: network,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_endpoint.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEncryptionSpec':: d.fn(help='`google.list[obj].withEncryptionSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_spec` field.\n', args=[]),
  withEncryptionSpec(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  '#withEncryptionSpecMixin':: d.fn(help='`google.list[obj].withEncryptionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_spec` field.\n', args=[]),
  withEncryptionSpecMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_endpoint+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

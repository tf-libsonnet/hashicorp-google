local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_connectivity_service_connection_policy', url='', help='`network_connectivity_service_connection_policy` represents the `google_network_connectivity_service_connection_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.network_connectivity_service_connection_policy.new` injects a new `google_network_connectivity_service_connection_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_connectivity_service_connection_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_connectivity_service_connection_policy` using the reference:\n\n    $._ref.google_network_connectivity_service_connection_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_connectivity_service_connection_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the ServiceConnectionPolicy.\n  - `name` (`string`): The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names\n  - `network` (`string`): The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_class` (`string`): The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.\nIt is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.\n  - `psc_config` (`list[obj]`): Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. When `null`, the `psc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.psc_config.new](#fn-psc_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    network,
    service_class,
    description=null,
    labels=null,
    project=null,
    psc_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_connectivity_service_connection_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      location=location,
      name=name,
      network=network,
      project=project,
      psc_config=psc_config,
      service_class=service_class,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_connectivity_service_connection_policy.newAttrs` constructs a new object with attributes and blocks configured for the `network_connectivity_service_connection_policy`\nTerraform resource.\n\nUnlike [google.network_connectivity_service_connection_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Free-text description of the resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): User-defined labels.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the ServiceConnectionPolicy.\n  - `name` (`string`): The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names\n  - `network` (`string`): The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `service_class` (`string`): The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.\nIt is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx.\n  - `psc_config` (`list[obj]`): Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. When `null`, the `psc_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.psc_config.new](#fn-psc_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_connectivity_service_connection_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_connectivity_service_connection_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    network,
    service_class,
    description=null,
    labels=null,
    project=null,
    psc_config=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    location: location,
    name: name,
    network: network,
    project: project,
    psc_config: psc_config,
    service_class: service_class,
    timeouts: timeouts,
  }),
  psc_config:: {
    '#new':: d.fn(help='\n`google.network_connectivity_service_connection_policy.psc_config.new` constructs a new object with attributes and blocks configured for the `psc_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `limit` (`string`): Max number of PSC connections for this policy. When `null`, the `limit` field will be omitted from the resulting object.\n  - `subnetworks` (`list`): IDs of the subnetworks or fully qualified identifiers for the subnetworks\n\n**Returns**:\n  - An attribute object that represents the `psc_config` sub block.\n', args=[]),
    new(
      subnetworks,
      limit=null
    ):: std.prune(a={
      limit: limit,
      subnetworks: subnetworks,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_connectivity_service_connection_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withPscConfig':: d.fn(help='`google.list[obj].withPscConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the psc_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPscConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `psc_config` field.\n', args=[]),
  withPscConfig(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          psc_config: value,
        },
      },
    },
  },
  '#withPscConfigMixin':: d.fn(help='`google.list[obj].withPscConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the psc_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPscConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `psc_config` field.\n', args=[]),
  withPscConfigMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          psc_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withServiceClass':: d.fn(help='`google.string.withServiceClass` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_class field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_class` field.\n', args=[]),
  withServiceClass(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          service_class: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_connectivity_service_connection_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='service_networking_peered_dns_domain', url='', help='`service_networking_peered_dns_domain` represents the `google_service_networking_peered_dns_domain` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.service_networking_peered_dns_domain.new` injects a new `google_service_networking_peered_dns_domain` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.service_networking_peered_dns_domain.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.service_networking_peered_dns_domain` using the reference:\n\n    $._ref.google_service_networking_peered_dns_domain.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_service_networking_peered_dns_domain.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dns_suffix` (`string`): The DNS domain name suffix of the peered DNS domain.\n  - `name` (`string`): Name of the peered DNS domain.\n  - `network` (`string`): Network in the consumer project to peer with.\n  - `project` (`string`): The ID of the project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com When `null`, the `service` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_networking_peered_dns_domain.timeouts.new](#fn-service_networking_peered_dns_domaintimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dns_suffix,
    name,
    network,
    project=null,
    service=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_service_networking_peered_dns_domain',
    label=resourceLabel,
    attrs=self.newAttrs(
      dns_suffix=dns_suffix,
      name=name,
      network=network,
      project=project,
      service=service,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.service_networking_peered_dns_domain.newAttrs` constructs a new object with attributes and blocks configured for the `service_networking_peered_dns_domain`\nTerraform resource.\n\nUnlike [google.service_networking_peered_dns_domain.new](#fn-service_networking_peered_dns_domainnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dns_suffix` (`string`): The DNS domain name suffix of the peered DNS domain.\n  - `name` (`string`): Name of the peered DNS domain.\n  - `network` (`string`): Network in the consumer project to peer with.\n  - `project` (`string`): The ID of the project that the service account will be created in. Defaults to the provider project configuration. When `null`, the `project` field will be omitted from the resulting object.\n  - `service` (`string`): The name of the service to create a peered DNS domain for, e.g. servicenetworking.googleapis.com When `null`, the `service` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.service_networking_peered_dns_domain.timeouts.new](#fn-service_networking_peered_dns_domaintimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `service_networking_peered_dns_domain` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dns_suffix,
    name,
    network,
    project=null,
    service=null,
    timeouts=null
  ):: std.prune(a={
    dns_suffix: dns_suffix,
    name: name,
    network: network,
    project: project,
    service: service,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.service_networking_peered_dns_domain.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `read` (`string`):  When `null`, the `read` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null,
      read=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
    }),
  },
  '#withDnsSuffix':: d.fn(help='`google.string.withDnsSuffix` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dns_suffix field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dns_suffix` field.\n', args=[]),
  withDnsSuffix(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          dns_suffix: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withService':: d.fn(help='`google.string.withService` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service` field.\n', args=[]),
  withService(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_service_networking_peered_dns_domain+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

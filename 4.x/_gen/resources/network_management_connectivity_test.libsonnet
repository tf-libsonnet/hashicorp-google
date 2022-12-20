local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_management_connectivity_test', url='', help='`network_management_connectivity_test` represents the `google_network_management_connectivity_test` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  destination:: {
    '#new':: d.fn(help='\n`google.network_management_connectivity_test.destination.new` constructs a new object with attributes and blocks configured for the `destination`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance` (`string`): A Compute Engine instance URI. When `null`, the `instance` field will be omitted from the resulting object.\n  - `ip_address` (`string`): The IP address of the endpoint, which can be an external or\ninternal IP. An IPv6 address is only allowed when the test&#39;s\ndestination is a global load balancer VIP. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `network` (`string`): A Compute Engine network URI. When `null`, the `network` field will be omitted from the resulting object.\n  - `port` (`number`): The IP protocol port of the endpoint. Only applicable when\nprotocol is TCP or UDP. When `null`, the `port` field will be omitted from the resulting object.\n  - `project_id` (`string`): Project ID where the endpoint is located. The Project ID can be\nderived from the URI if you provide a VM instance or network URI.\nThe following are two cases where you must provide the project ID:\n1. Only the IP address is specified, and the IP address is within\na GCP project. 2. When you are using Shared VPC and the IP address\nthat you provide is from the service project. In this case, the\nnetwork that the IP address resides in is defined in the host\nproject. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destination` sub block.\n', args=[]),
    new(
      instance=null,
      ip_address=null,
      network=null,
      port=null,
      project_id=null
    ):: std.prune(a={
      instance: instance,
      ip_address: ip_address,
      network: network,
      port: port,
      project_id: project_id,
    }),
  },
  '#new':: d.fn(help="\n`google.network_management_connectivity_test.new` injects a new `google_network_management_connectivity_test` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_management_connectivity_test.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_management_connectivity_test` using the reference:\n\n    $._ref.google_network_management_connectivity_test.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_management_connectivity_test.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The user-supplied description of the Connectivity Test.\nMaximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Unique name for the connectivity test.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `protocol` (`string`): IP Protocol of the test. When not provided, \u0026#34;TCP\u0026#34; is assumed. When `null`, the `protocol` field will be omitted from the resulting object.\n  - `related_projects` (`list`): Other projects that may be relevant for reachability analysis.\nThis is applicable to scenarios where a test can cross project\nboundaries. When `null`, the `related_projects` field will be omitted from the resulting object.\n  - `destination` (`list[obj]`): Required. Destination specification of the Connectivity Test.\n\nYou can use a combination of destination IP address, Compute\nEngine VM instance, or VPC network to uniquely identify the\ndestination location.\n\nEven if the destination IP address is not unique, the source IP\nlocation is unique. Usually, the analysis can infer the destination\nendpoint from route information.\n\nIf the destination you specify is a VM instance and the instance has\nmultiple network interfaces, then you must also specify either a\ndestination IP address or VPC network to identify the destination\ninterface.\n\nA reachability analysis proceeds even if the destination location\nis ambiguous. However, the result can include endpoints that you\ndon\u0026#39;t intend to test. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.destination.new](#fn-destinationnew) constructor.\n  - `source` (`list[obj]`): Required. Source specification of the Connectivity Test.\n\nYou can use a combination of source IP address, virtual machine\n(VM) instance, or Compute Engine network to uniquely identify the\nsource location.\n\nExamples: If the source IP address is an internal IP address within\na Google Cloud Virtual Private Cloud (VPC) network, then you must\nalso specify the VPC network. Otherwise, specify the VM instance,\nwhich already contains its internal IP address and VPC network\ninformation.\n\nIf the source of the test is within an on-premises network, then\nyou must provide the destination VPC network.\n\nIf the source endpoint is a Compute Engine VM instance with multiple\nnetwork interfaces, the instance itself is not sufficient to\nidentify the endpoint. So, you must also specify the source IP\naddress or VPC network.\n\nA reachability analysis proceeds even if the source location is\nambiguous. However, the test result may include endpoints that\nyou don\u0026#39;t intend to test. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.source.new](#fn-sourcenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    destination=null,
    labels=null,
    project=null,
    protocol=null,
    related_projects=null,
    source=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_management_connectivity_test',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      destination=destination,
      labels=labels,
      name=name,
      project=project,
      protocol=protocol,
      related_projects=related_projects,
      source=source,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_management_connectivity_test.newAttrs` constructs a new object with attributes and blocks configured for the `network_management_connectivity_test`\nTerraform resource.\n\nUnlike [google.network_management_connectivity_test.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The user-supplied description of the Connectivity Test.\nMaximum of 512 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Resource labels to represent user-provided metadata. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): Unique name for the connectivity test.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `protocol` (`string`): IP Protocol of the test. When not provided, &#34;TCP&#34; is assumed. When `null`, the `protocol` field will be omitted from the resulting object.\n  - `related_projects` (`list`): Other projects that may be relevant for reachability analysis.\nThis is applicable to scenarios where a test can cross project\nboundaries. When `null`, the `related_projects` field will be omitted from the resulting object.\n  - `destination` (`list[obj]`): Required. Destination specification of the Connectivity Test.\n\nYou can use a combination of destination IP address, Compute\nEngine VM instance, or VPC network to uniquely identify the\ndestination location.\n\nEven if the destination IP address is not unique, the source IP\nlocation is unique. Usually, the analysis can infer the destination\nendpoint from route information.\n\nIf the destination you specify is a VM instance and the instance has\nmultiple network interfaces, then you must also specify either a\ndestination IP address or VPC network to identify the destination\ninterface.\n\nA reachability analysis proceeds even if the destination location\nis ambiguous. However, the result can include endpoints that you\ndon&#39;t intend to test. When `null`, the `destination` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.destination.new](#fn-destinationnew) constructor.\n  - `source` (`list[obj]`): Required. Source specification of the Connectivity Test.\n\nYou can use a combination of source IP address, virtual machine\n(VM) instance, or Compute Engine network to uniquely identify the\nsource location.\n\nExamples: If the source IP address is an internal IP address within\na Google Cloud Virtual Private Cloud (VPC) network, then you must\nalso specify the VPC network. Otherwise, specify the VM instance,\nwhich already contains its internal IP address and VPC network\ninformation.\n\nIf the source of the test is within an on-premises network, then\nyou must provide the destination VPC network.\n\nIf the source endpoint is a Compute Engine VM instance with multiple\nnetwork interfaces, the instance itself is not sufficient to\nidentify the endpoint. So, you must also specify the source IP\naddress or VPC network.\n\nA reachability analysis proceeds even if the source location is\nambiguous. However, the test result may include endpoints that\nyou don&#39;t intend to test. When `null`, the `source` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.source.new](#fn-sourcenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_management_connectivity_test.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_management_connectivity_test` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    destination=null,
    labels=null,
    project=null,
    protocol=null,
    related_projects=null,
    source=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    destination: destination,
    labels: labels,
    name: name,
    project: project,
    protocol: protocol,
    related_projects: related_projects,
    source: source,
    timeouts: timeouts,
  }),
  source:: {
    '#new':: d.fn(help='\n`google.network_management_connectivity_test.source.new` constructs a new object with attributes and blocks configured for the `source`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance` (`string`): A Compute Engine instance URI. When `null`, the `instance` field will be omitted from the resulting object.\n  - `ip_address` (`string`): The IP address of the endpoint, which can be an external or\ninternal IP. An IPv6 address is only allowed when the test&#39;s\ndestination is a global load balancer VIP. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `network` (`string`): A Compute Engine network URI. When `null`, the `network` field will be omitted from the resulting object.\n  - `network_type` (`string`): Type of the network where the endpoint is located. Possible values: [&#34;GCP_NETWORK&#34;, &#34;NON_GCP_NETWORK&#34;] When `null`, the `network_type` field will be omitted from the resulting object.\n  - `port` (`number`): The IP protocol port of the endpoint. Only applicable when\nprotocol is TCP or UDP. When `null`, the `port` field will be omitted from the resulting object.\n  - `project_id` (`string`): Project ID where the endpoint is located. The Project ID can be\nderived from the URI if you provide a VM instance or network URI.\nThe following are two cases where you must provide the project ID:\n\n1. Only the IP address is specified, and the IP address is\n   within a GCP project.\n2. When you are using Shared VPC and the IP address\n   that you provide is from the service project. In this case,\n   the network that the IP address resides in is defined in the\n   host project. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source` sub block.\n', args=[]),
    new(
      instance=null,
      ip_address=null,
      network=null,
      network_type=null,
      port=null,
      project_id=null
    ):: std.prune(a={
      instance: instance,
      ip_address: ip_address,
      network: network,
      network_type: network_type,
      port: port,
      project_id: project_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_management_connectivity_test.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDestination':: d.fn(help='`google.list[obj].withDestination` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDestinationMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination` field.\n', args=[]),
  withDestination(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  '#withDestinationMixin':: d.fn(help='`google.list[obj].withDestinationMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDestination](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination` field.\n', args=[]),
  withDestinationMixin(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          destination+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withProtocol':: d.fn(help='`google.string.withProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `protocol` field.\n', args=[]),
  withProtocol(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          protocol: value,
        },
      },
    },
  },
  '#withRelatedProjects':: d.fn(help='`google.list.withRelatedProjects` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the related_projects field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `related_projects` field.\n', args=[]),
  withRelatedProjects(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          related_projects: value,
        },
      },
    },
  },
  '#withSource':: d.fn(help='`google.list[obj].withSource` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source` field.\n', args=[]),
  withSource(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
  '#withSourceMixin':: d.fn(help='`google.list[obj].withSourceMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSource](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source` field.\n', args=[]),
  withSourceMixin(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_management_connectivity_test+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

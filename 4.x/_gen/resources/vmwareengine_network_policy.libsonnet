local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vmwareengine_network_policy', url='', help='`vmwareengine_network_policy` represents the `google_vmwareengine_network_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  external_ip:: {
    '#new':: d.fn(help='\n`google.vmwareengine_network_policy.external_ip.new` constructs a new object with attributes and blocks configured for the `external_ip`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): True if the service is enabled; false otherwise. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `external_ip` sub block.\n', args=[]),
    new(
      enabled=null
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  internet_access:: {
    '#new':: d.fn(help='\n`google.vmwareengine_network_policy.internet_access.new` constructs a new object with attributes and blocks configured for the `internet_access`\nTerraform sub block.\n\n\n\n**Args**:\n  - `enabled` (`bool`): True if the service is enabled; false otherwise. When `null`, the `enabled` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `internet_access` sub block.\n', args=[]),
    new(
      enabled=null
    ):: std.prune(a={
      enabled: enabled,
    }),
  },
  '#new':: d.fn(help="\n`google.vmwareengine_network_policy.new` injects a new `google_vmwareengine_network_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vmwareengine_network_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vmwareengine_network_policy` using the reference:\n\n    $._ref.google_vmwareengine_network_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vmwareengine_network_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): User-provided description for this network policy. When `null`, the `description` field will be omitted from the resulting object.\n  - `edge_services_cidr` (`string`): IP address range in CIDR notation used to create internet access and external IP access.\nAn RFC 1918 CIDR block, with a \u0026#34;/26\u0026#34; prefix, is required. The range cannot overlap with any\nprefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.\n  - `location` (`string`): The resource name of the location (region) to create the new network policy in.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-central1\n  - `name` (`string`): The ID of the Network Policy.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:\nprojects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}\ncan either be a project number or a project ID.\n  - `external_ip` (`list[obj]`): Network service that allows External IP addresses to be assigned to VMware workloads.\nThis service can only be enabled when internetAccess is also enabled. When `null`, the `external_ip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.external_ip.new](#fn-external_ipnew) constructor.\n  - `internet_access` (`list[obj]`): Network service that allows VMware workloads to access the internet. When `null`, the `internet_access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.internet_access.new](#fn-internet_accessnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    edge_services_cidr,
    location,
    name,
    vmware_engine_network,
    description=null,
    external_ip=null,
    internet_access=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vmwareengine_network_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      edge_services_cidr=edge_services_cidr,
      external_ip=external_ip,
      internet_access=internet_access,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts,
      vmware_engine_network=vmware_engine_network
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vmwareengine_network_policy.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_network_policy`\nTerraform resource.\n\nUnlike [google.vmwareengine_network_policy.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): User-provided description for this network policy. When `null`, the `description` field will be omitted from the resulting object.\n  - `edge_services_cidr` (`string`): IP address range in CIDR notation used to create internet access and external IP access.\nAn RFC 1918 CIDR block, with a &#34;/26&#34; prefix, is required. The range cannot overlap with any\nprefixes either in the consumer VPC network or in use by the private clouds attached to that VPC network.\n  - `location` (`string`): The resource name of the location (region) to create the new network policy in.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-central1\n  - `name` (`string`): The ID of the Network Policy.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `vmware_engine_network` (`string`): The relative resource name of the VMware Engine network. Specify the name in the following form:\nprojects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId} where {project}\ncan either be a project number or a project ID.\n  - `external_ip` (`list[obj]`): Network service that allows External IP addresses to be assigned to VMware workloads.\nThis service can only be enabled when internetAccess is also enabled. When `null`, the `external_ip` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.external_ip.new](#fn-external_ipnew) constructor.\n  - `internet_access` (`list[obj]`): Network service that allows VMware workloads to access the internet. When `null`, the `internet_access` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.internet_access.new](#fn-internet_accessnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_network_policy.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_network_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    edge_services_cidr,
    location,
    name,
    vmware_engine_network,
    description=null,
    external_ip=null,
    internet_access=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    edge_services_cidr: edge_services_cidr,
    external_ip: external_ip,
    internet_access: internet_access,
    location: location,
    name: name,
    project: project,
    timeouts: timeouts,
    vmware_engine_network: vmware_engine_network,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vmwareengine_network_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEdgeServicesCidr':: d.fn(help='`google.string.withEdgeServicesCidr` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the edge_services_cidr field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `edge_services_cidr` field.\n', args=[]),
  withEdgeServicesCidr(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          edge_services_cidr: value,
        },
      },
    },
  },
  '#withExternalIp':: d.fn(help='`google.list[obj].withExternalIp` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the external_ip field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withExternalIpMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `external_ip` field.\n', args=[]),
  withExternalIp(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          external_ip: value,
        },
      },
    },
  },
  '#withExternalIpMixin':: d.fn(help='`google.list[obj].withExternalIpMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the external_ip field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withExternalIp](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `external_ip` field.\n', args=[]),
  withExternalIpMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          external_ip+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withInternetAccess':: d.fn(help='`google.list[obj].withInternetAccess` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the internet_access field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInternetAccessMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `internet_access` field.\n', args=[]),
  withInternetAccess(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          internet_access: value,
        },
      },
    },
  },
  '#withInternetAccessMixin':: d.fn(help='`google.list[obj].withInternetAccessMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the internet_access field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInternetAccess](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `internet_access` field.\n', args=[]),
  withInternetAccessMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          internet_access+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVmwareEngineNetwork':: d.fn(help='`google.string.withVmwareEngineNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vmware_engine_network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vmware_engine_network` field.\n', args=[]),
  withVmwareEngineNetwork(resourceLabel, value): {
    resource+: {
      google_vmwareengine_network_policy+: {
        [resourceLabel]+: {
          vmware_engine_network: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='edgecontainer_vpn_connection', url='', help='`edgecontainer_vpn_connection` represents the `google_edgecontainer_vpn_connection` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.edgecontainer_vpn_connection.new` injects a new `google_edgecontainer_vpn_connection` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.edgecontainer_vpn_connection.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.edgecontainer_vpn_connection` using the reference:\n\n    $._ref.google_edgecontainer_vpn_connection.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_edgecontainer_vpn_connection.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `cluster` (`string`): The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.\n  - `enable_high_availability` (`bool`): Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs. When `null`, the `enable_high_availability` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels associated with this resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Google Cloud Platform location.\n  - `name` (`string`): The resource name of VPN connection\n  - `nat_gateway_ip` (`string`): NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.\nThis is empty if NAT is not used. When `null`, the `nat_gateway_ip` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `router` (`string`): The VPN connection Cloud Router name. When `null`, the `router` field will be omitted from the resulting object.\n  - `vpc` (`string`): The network ID of VPC to connect to. When `null`, the `vpc` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_project` (`list[obj]`): Project detail of the VPC network. Required if VPC is in a different project than the cluster project. When `null`, the `vpc_project` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.vpc_project.new](#fn-vpc_projectnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    cluster,
    location,
    name,
    enable_high_availability=null,
    labels=null,
    nat_gateway_ip=null,
    project=null,
    router=null,
    timeouts=null,
    vpc=null,
    vpc_project=null,
    _meta={}
  ):: tf.withResource(
    type='google_edgecontainer_vpn_connection',
    label=resourceLabel,
    attrs=self.newAttrs(
      cluster=cluster,
      enable_high_availability=enable_high_availability,
      labels=labels,
      location=location,
      name=name,
      nat_gateway_ip=nat_gateway_ip,
      project=project,
      router=router,
      timeouts=timeouts,
      vpc=vpc,
      vpc_project=vpc_project
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.edgecontainer_vpn_connection.newAttrs` constructs a new object with attributes and blocks configured for the `edgecontainer_vpn_connection`\nTerraform resource.\n\nUnlike [google.edgecontainer_vpn_connection.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `cluster` (`string`): The canonical Cluster name to connect to. It is in the form of projects/{project}/locations/{location}/clusters/{cluster}.\n  - `enable_high_availability` (`bool`): Whether this VPN connection has HA enabled on cluster side. If enabled, when creating VPN connection we will attempt to use 2 ANG floating IPs. When `null`, the `enable_high_availability` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels associated with this resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Google Cloud Platform location.\n  - `name` (`string`): The resource name of VPN connection\n  - `nat_gateway_ip` (`string`): NAT gateway IP, or WAN IP address. If a customer has multiple NAT IPs, the customer needs to configure NAT such that only one external IP maps to the GMEC Anthos cluster.\nThis is empty if NAT is not used. When `null`, the `nat_gateway_ip` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `router` (`string`): The VPN connection Cloud Router name. When `null`, the `router` field will be omitted from the resulting object.\n  - `vpc` (`string`): The network ID of VPC to connect to. When `null`, the `vpc` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.timeouts.new](#fn-timeoutsnew) constructor.\n  - `vpc_project` (`list[obj]`): Project detail of the VPC network. Required if VPC is in a different project than the cluster project. When `null`, the `vpc_project` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgecontainer_vpn_connection.vpc_project.new](#fn-vpc_projectnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgecontainer_vpn_connection` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    cluster,
    location,
    name,
    enable_high_availability=null,
    labels=null,
    nat_gateway_ip=null,
    project=null,
    router=null,
    timeouts=null,
    vpc=null,
    vpc_project=null
  ):: std.prune(a={
    cluster: cluster,
    enable_high_availability: enable_high_availability,
    labels: labels,
    location: location,
    name: name,
    nat_gateway_ip: nat_gateway_ip,
    project: project,
    router: router,
    timeouts: timeouts,
    vpc: vpc,
    vpc_project: vpc_project,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.edgecontainer_vpn_connection.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  vpc_project:: {
    '#new':: d.fn(help='\n`google.edgecontainer_vpn_connection.vpc_project.new` constructs a new object with attributes and blocks configured for the `vpc_project`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project_id` (`string`): The project of the VPC to connect to. If not specified, it is the same as the cluster project. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `vpc_project` sub block.\n', args=[]),
    new(
      project_id=null
    ):: std.prune(a={
      project_id: project_id,
    }),
  },
  '#withCluster':: d.fn(help='`google.string.withCluster` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the cluster field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `cluster` field.\n', args=[]),
  withCluster(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          cluster: value,
        },
      },
    },
  },
  '#withEnableHighAvailability':: d.fn(help='`google.bool.withEnableHighAvailability` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_high_availability field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_high_availability` field.\n', args=[]),
  withEnableHighAvailability(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          enable_high_availability: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNatGatewayIp':: d.fn(help='`google.string.withNatGatewayIp` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the nat_gateway_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `nat_gateway_ip` field.\n', args=[]),
  withNatGatewayIp(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          nat_gateway_ip: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRouter':: d.fn(help='`google.string.withRouter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `router` field.\n', args=[]),
  withRouter(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVpc':: d.fn(help='`google.string.withVpc` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vpc field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vpc` field.\n', args=[]),
  withVpc(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          vpc: value,
        },
      },
    },
  },
  '#withVpcProject':: d.fn(help='`google.list[obj].withVpcProject` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_project field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVpcProjectMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_project` field.\n', args=[]),
  withVpcProject(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          vpc_project: value,
        },
      },
    },
  },
  '#withVpcProjectMixin':: d.fn(help='`google.list[obj].withVpcProjectMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the vpc_project field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVpcProject](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `vpc_project` field.\n', args=[]),
  withVpcProjectMixin(resourceLabel, value): {
    resource+: {
      google_edgecontainer_vpn_connection+: {
        [resourceLabel]+: {
          vpc_project+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

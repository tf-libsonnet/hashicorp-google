local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_vpn_tunnel', url='', help='`compute_vpn_tunnel` represents the `google_compute_vpn_tunnel` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_vpn_tunnel.new` injects a new `google_compute_vpn_tunnel` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_vpn_tunnel.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_vpn_tunnel` using the reference:\n\n    $._ref.google_compute_vpn_tunnel.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_vpn_tunnel.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ike_version` (`number`): IKE protocol version to use when establishing the VPN tunnel with\npeer VPN gateway.\nAcceptable IKE versions are 1 or 2. Default version is 2. When `null`, the `ike_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this VpnTunnel.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `local_traffic_selector` (`list`): Local traffic selector to use when establishing the VPN tunnel with\npeer VPN gateway. The value should be a CIDR formatted string,\nfor example \u0026#39;192.168.0.0/16\u0026#39;. The ranges should be disjoint.\nOnly IPv4 is supported. When `null`, the `local_traffic_selector` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63\ncharacters long and match the regular expression\n\u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the first character\nmust be a lowercase letter, and all following characters must\nbe a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `peer_external_gateway` (`string`): URL of the peer side external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway` field will be omitted from the resulting object.\n  - `peer_external_gateway_interface` (`number`): The interface ID of the external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway_interface` field will be omitted from the resulting object.\n  - `peer_gcp_gateway` (`string`): URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.\nIf provided, the VPN tunnel will automatically use the same vpn_gateway_interface\nID in the peer GCP VPN gateway.\nThis field must reference a \u0026#39;google_compute_ha_vpn_gateway\u0026#39; resource. When `null`, the `peer_gcp_gateway` field will be omitted from the resulting object.\n  - `peer_ip` (`string`): IP address of the peer VPN gateway. Only IPv4 is supported. When `null`, the `peer_ip` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region where the tunnel is located. If unset, is set to the region of \u0026#39;target_vpn_gateway\u0026#39;. When `null`, the `region` field will be omitted from the resulting object.\n  - `remote_traffic_selector` (`list`): Remote traffic selector to use when establishing the VPN tunnel with\npeer VPN gateway. The value should be a CIDR formatted string,\nfor example \u0026#39;192.168.0.0/16\u0026#39;. The ranges should be disjoint.\nOnly IPv4 is supported. When `null`, the `remote_traffic_selector` field will be omitted from the resulting object.\n  - `router` (`string`): URL of router resource to be used for dynamic routing. When `null`, the `router` field will be omitted from the resulting object.\n  - `shared_secret` (`string`): Shared secret used to set the secure session between the Cloud VPN\ngateway and the peer VPN gateway.\n  - `target_vpn_gateway` (`string`): URL of the Target VPN gateway with which this VPN tunnel is\nassociated. When `null`, the `target_vpn_gateway` field will be omitted from the resulting object.\n  - `vpn_gateway` (`string`): URL of the VPN gateway with which this VPN tunnel is associated.\nThis must be used if a High Availability VPN gateway resource is created.\nThis field must reference a \u0026#39;google_compute_ha_vpn_gateway\u0026#39; resource. When `null`, the `vpn_gateway` field will be omitted from the resulting object.\n  - `vpn_gateway_interface` (`number`): The interface ID of the VPN gateway with which this VPN tunnel is associated. When `null`, the `vpn_gateway_interface` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_vpn_tunnel.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    shared_secret,
    description=null,
    ike_version=null,
    labels=null,
    local_traffic_selector=null,
    peer_external_gateway=null,
    peer_external_gateway_interface=null,
    peer_gcp_gateway=null,
    peer_ip=null,
    project=null,
    region=null,
    remote_traffic_selector=null,
    router=null,
    target_vpn_gateway=null,
    timeouts=null,
    vpn_gateway=null,
    vpn_gateway_interface=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_vpn_tunnel',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      ike_version=ike_version,
      labels=labels,
      local_traffic_selector=local_traffic_selector,
      name=name,
      peer_external_gateway=peer_external_gateway,
      peer_external_gateway_interface=peer_external_gateway_interface,
      peer_gcp_gateway=peer_gcp_gateway,
      peer_ip=peer_ip,
      project=project,
      region=region,
      remote_traffic_selector=remote_traffic_selector,
      router=router,
      shared_secret=shared_secret,
      target_vpn_gateway=target_vpn_gateway,
      timeouts=timeouts,
      vpn_gateway=vpn_gateway,
      vpn_gateway_interface=vpn_gateway_interface
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_vpn_tunnel.newAttrs` constructs a new object with attributes and blocks configured for the `compute_vpn_tunnel`\nTerraform resource.\n\nUnlike [google.compute_vpn_tunnel.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `ike_version` (`number`): IKE protocol version to use when establishing the VPN tunnel with\npeer VPN gateway.\nAcceptable IKE versions are 1 or 2. Default version is 2. When `null`, the `ike_version` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels to apply to this VpnTunnel.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `local_traffic_selector` (`list`): Local traffic selector to use when establishing the VPN tunnel with\npeer VPN gateway. The value should be a CIDR formatted string,\nfor example &#39;192.168.0.0/16&#39;. The ranges should be disjoint.\nOnly IPv4 is supported. When `null`, the `local_traffic_selector` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63\ncharacters long and match the regular expression\n&#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the first character\nmust be a lowercase letter, and all following characters must\nbe a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash.\n  - `peer_external_gateway` (`string`): URL of the peer side external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway` field will be omitted from the resulting object.\n  - `peer_external_gateway_interface` (`number`): The interface ID of the external VPN gateway to which this VPN tunnel is connected. When `null`, the `peer_external_gateway_interface` field will be omitted from the resulting object.\n  - `peer_gcp_gateway` (`string`): URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.\nIf provided, the VPN tunnel will automatically use the same vpn_gateway_interface\nID in the peer GCP VPN gateway.\nThis field must reference a &#39;google_compute_ha_vpn_gateway&#39; resource. When `null`, the `peer_gcp_gateway` field will be omitted from the resulting object.\n  - `peer_ip` (`string`): IP address of the peer VPN gateway. Only IPv4 is supported. When `null`, the `peer_ip` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region where the tunnel is located. If unset, is set to the region of &#39;target_vpn_gateway&#39;. When `null`, the `region` field will be omitted from the resulting object.\n  - `remote_traffic_selector` (`list`): Remote traffic selector to use when establishing the VPN tunnel with\npeer VPN gateway. The value should be a CIDR formatted string,\nfor example &#39;192.168.0.0/16&#39;. The ranges should be disjoint.\nOnly IPv4 is supported. When `null`, the `remote_traffic_selector` field will be omitted from the resulting object.\n  - `router` (`string`): URL of router resource to be used for dynamic routing. When `null`, the `router` field will be omitted from the resulting object.\n  - `shared_secret` (`string`): Shared secret used to set the secure session between the Cloud VPN\ngateway and the peer VPN gateway.\n  - `target_vpn_gateway` (`string`): URL of the Target VPN gateway with which this VPN tunnel is\nassociated. When `null`, the `target_vpn_gateway` field will be omitted from the resulting object.\n  - `vpn_gateway` (`string`): URL of the VPN gateway with which this VPN tunnel is associated.\nThis must be used if a High Availability VPN gateway resource is created.\nThis field must reference a &#39;google_compute_ha_vpn_gateway&#39; resource. When `null`, the `vpn_gateway` field will be omitted from the resulting object.\n  - `vpn_gateway_interface` (`number`): The interface ID of the VPN gateway with which this VPN tunnel is associated. When `null`, the `vpn_gateway_interface` field will be omitted from the resulting object.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_vpn_tunnel.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_vpn_tunnel` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    shared_secret,
    description=null,
    ike_version=null,
    labels=null,
    local_traffic_selector=null,
    peer_external_gateway=null,
    peer_external_gateway_interface=null,
    peer_gcp_gateway=null,
    peer_ip=null,
    project=null,
    region=null,
    remote_traffic_selector=null,
    router=null,
    target_vpn_gateway=null,
    timeouts=null,
    vpn_gateway=null,
    vpn_gateway_interface=null
  ):: std.prune(a={
    description: description,
    ike_version: ike_version,
    labels: labels,
    local_traffic_selector: local_traffic_selector,
    name: name,
    peer_external_gateway: peer_external_gateway,
    peer_external_gateway_interface: peer_external_gateway_interface,
    peer_gcp_gateway: peer_gcp_gateway,
    peer_ip: peer_ip,
    project: project,
    region: region,
    remote_traffic_selector: remote_traffic_selector,
    router: router,
    shared_secret: shared_secret,
    target_vpn_gateway: target_vpn_gateway,
    timeouts: timeouts,
    vpn_gateway: vpn_gateway,
    vpn_gateway_interface: vpn_gateway_interface,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_vpn_tunnel.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIkeVersion':: d.fn(help='`google.number.withIkeVersion` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the ike_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `ike_version` field.\n', args=[]),
  withIkeVersion(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          ike_version: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocalTrafficSelector':: d.fn(help='`google.list.withLocalTrafficSelector` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the local_traffic_selector field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `local_traffic_selector` field.\n', args=[]),
  withLocalTrafficSelector(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          local_traffic_selector: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPeerExternalGateway':: d.fn(help='`google.string.withPeerExternalGateway` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_external_gateway field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_external_gateway` field.\n', args=[]),
  withPeerExternalGateway(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_external_gateway: value,
        },
      },
    },
  },
  '#withPeerExternalGatewayInterface':: d.fn(help='`google.number.withPeerExternalGatewayInterface` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the peer_external_gateway_interface field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `peer_external_gateway_interface` field.\n', args=[]),
  withPeerExternalGatewayInterface(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_external_gateway_interface: value,
        },
      },
    },
  },
  '#withPeerGcpGateway':: d.fn(help='`google.string.withPeerGcpGateway` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_gcp_gateway field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_gcp_gateway` field.\n', args=[]),
  withPeerGcpGateway(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_gcp_gateway: value,
        },
      },
    },
  },
  '#withPeerIp':: d.fn(help='`google.string.withPeerIp` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the peer_ip field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `peer_ip` field.\n', args=[]),
  withPeerIp(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          peer_ip: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withRemoteTrafficSelector':: d.fn(help='`google.list.withRemoteTrafficSelector` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the remote_traffic_selector field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `remote_traffic_selector` field.\n', args=[]),
  withRemoteTrafficSelector(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          remote_traffic_selector: value,
        },
      },
    },
  },
  '#withRouter':: d.fn(help='`google.string.withRouter` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the router field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `router` field.\n', args=[]),
  withRouter(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          router: value,
        },
      },
    },
  },
  '#withSharedSecret':: d.fn(help='`google.string.withSharedSecret` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the shared_secret field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `shared_secret` field.\n', args=[]),
  withSharedSecret(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          shared_secret: value,
        },
      },
    },
  },
  '#withTargetVpnGateway':: d.fn(help='`google.string.withTargetVpnGateway` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target_vpn_gateway field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target_vpn_gateway` field.\n', args=[]),
  withTargetVpnGateway(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          target_vpn_gateway: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVpnGateway':: d.fn(help='`google.string.withVpnGateway` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the vpn_gateway field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `vpn_gateway` field.\n', args=[]),
  withVpnGateway(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          vpn_gateway: value,
        },
      },
    },
  },
  '#withVpnGatewayInterface':: d.fn(help='`google.number.withVpnGatewayInterface` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the vpn_gateway_interface field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `vpn_gateway_interface` field.\n', args=[]),
  withVpnGatewayInterface(resourceLabel, value): {
    resource+: {
      google_compute_vpn_tunnel+: {
        [resourceLabel]+: {
          vpn_gateway_interface: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='network_services_gateway', url='', help='`network_services_gateway` represents the `google_network_services_gateway` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.network_services_gateway.new` injects a new `google_network_services_gateway` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.network_services_gateway.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.network_services_gateway` using the reference:\n\n    $._ref.google_network_services_gateway.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_network_services_gateway.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `addresses` (`list`): Zero or one IPv4-address on which the Gateway will receive the traffic. When no address is provided,\nan IP from the subnetwork is allocated This field only applies to gateways of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39;.\nGateways of type \u0026#39;OPEN_MESH\u0026#39; listen on 0.0.0.0. When `null`, the `addresses` field will be omitted from the resulting object.\n  - `certificate_urls` (`list`): A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.\nThis feature only applies to gateways of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39;. When `null`, the `certificate_urls` field will be omitted from the resulting object.\n  - `delete_swg_autogen_router_on_destroy` (`bool`): When deleting a gateway of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39;, this boolean option will also delete auto generated router by the gateway creation.\nIf there is no other gateway of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39; remaining for that region and network it will be deleted. When `null`, the `delete_swg_autogen_router_on_destroy` field will be omitted from the resulting object.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateway_security_policy` (`string`): A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.\nFor example: \u0026#39;projects/*/locations/*/gatewaySecurityPolicies/swg-policy\u0026#39;.\nThis policy is specific to gateways of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39;. When `null`, the `gateway_security_policy` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the Gateway resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the gateway.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Short name of the Gateway resource to be created.\n  - `network` (`string`): The relative resource name identifying the VPC network that is using this configuration.\nFor example: \u0026#39;projects/*/global/networks/network-1\u0026#39;.\nCurrently, this field is specific to gateways of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39;. When `null`, the `network` field will be omitted from the resulting object.\n  - `ports` (`list`): One or more port numbers (1-65535), on which the Gateway will receive traffic.\nThe proxy binds to the specified ports. Gateways of type \u0026#39;SECURE_WEB_GATEWAY\u0026#39; are\nlimited to 1 port. Gateways of type \u0026#39;OPEN_MESH\u0026#39; listen on 0.0.0.0 and support multiple ports.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): Immutable. Scope determines how configuration across multiple Gateway instances are merged.\nThe configuration for multiple Gateway instances with the same scope will be merged as presented as\na single coniguration to the proxy/load balancer.\nMax length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens. When `null`, the `scope` field will be omitted from the resulting object.\n  - `server_tls_policy` (`string`): A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated.\nIf empty, TLS termination is disabled. When `null`, the `server_tls_policy` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The relative resource name identifying the subnetwork in which this SWG is allocated.\nFor example: \u0026#39;projects/*/regions/us-central1/subnetworks/network-1\u0026#39;.\nCurrently, this field is specific to gateways of type \u0026#39;SECURE_WEB_GATEWAY. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `type` (`string`): Immutable. The type of the customer-managed gateway. Possible values are: * OPEN_MESH * SECURE_WEB_GATEWAY. Possible values: [\u0026#34;TYPE_UNSPECIFIED\u0026#34;, \u0026#34;OPEN_MESH\u0026#34;, \u0026#34;SECURE_WEB_GATEWAY\u0026#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_gateway.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    ports,
    type,
    addresses=null,
    certificate_urls=null,
    delete_swg_autogen_router_on_destroy=null,
    description=null,
    gateway_security_policy=null,
    labels=null,
    location=null,
    network=null,
    project=null,
    scope=null,
    server_tls_policy=null,
    subnetwork=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_network_services_gateway',
    label=resourceLabel,
    attrs=self.newAttrs(
      addresses=addresses,
      certificate_urls=certificate_urls,
      delete_swg_autogen_router_on_destroy=delete_swg_autogen_router_on_destroy,
      description=description,
      gateway_security_policy=gateway_security_policy,
      labels=labels,
      location=location,
      name=name,
      network=network,
      ports=ports,
      project=project,
      scope=scope,
      server_tls_policy=server_tls_policy,
      subnetwork=subnetwork,
      timeouts=timeouts,
      type=type
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.network_services_gateway.newAttrs` constructs a new object with attributes and blocks configured for the `network_services_gateway`\nTerraform resource.\n\nUnlike [google.network_services_gateway.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `addresses` (`list`): Zero or one IPv4-address on which the Gateway will receive the traffic. When no address is provided,\nan IP from the subnetwork is allocated This field only applies to gateways of type &#39;SECURE_WEB_GATEWAY&#39;.\nGateways of type &#39;OPEN_MESH&#39; listen on 0.0.0.0. When `null`, the `addresses` field will be omitted from the resulting object.\n  - `certificate_urls` (`list`): A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.\nThis feature only applies to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `certificate_urls` field will be omitted from the resulting object.\n  - `delete_swg_autogen_router_on_destroy` (`bool`): When deleting a gateway of type &#39;SECURE_WEB_GATEWAY&#39;, this boolean option will also delete auto generated router by the gateway creation.\nIf there is no other gateway of type &#39;SECURE_WEB_GATEWAY&#39; remaining for that region and network it will be deleted. When `null`, the `delete_swg_autogen_router_on_destroy` field will be omitted from the resulting object.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `gateway_security_policy` (`string`): A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.\nFor example: &#39;projects/*/locations/*/gatewaySecurityPolicies/swg-policy&#39;.\nThis policy is specific to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `gateway_security_policy` field will be omitted from the resulting object.\n  - `labels` (`obj`): Set of label tags associated with the Gateway resource.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location of the gateway.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `name` (`string`): Short name of the Gateway resource to be created.\n  - `network` (`string`): The relative resource name identifying the VPC network that is using this configuration.\nFor example: &#39;projects/*/global/networks/network-1&#39;.\nCurrently, this field is specific to gateways of type &#39;SECURE_WEB_GATEWAY&#39;. When `null`, the `network` field will be omitted from the resulting object.\n  - `ports` (`list`): One or more port numbers (1-65535), on which the Gateway will receive traffic.\nThe proxy binds to the specified ports. Gateways of type &#39;SECURE_WEB_GATEWAY&#39; are\nlimited to 1 port. Gateways of type &#39;OPEN_MESH&#39; listen on 0.0.0.0 and support multiple ports.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `scope` (`string`): Immutable. Scope determines how configuration across multiple Gateway instances are merged.\nThe configuration for multiple Gateway instances with the same scope will be merged as presented as\na single coniguration to the proxy/load balancer.\nMax length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens. When `null`, the `scope` field will be omitted from the resulting object.\n  - `server_tls_policy` (`string`): A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated.\nIf empty, TLS termination is disabled. When `null`, the `server_tls_policy` field will be omitted from the resulting object.\n  - `subnetwork` (`string`): The relative resource name identifying the subnetwork in which this SWG is allocated.\nFor example: &#39;projects/*/regions/us-central1/subnetworks/network-1&#39;.\nCurrently, this field is specific to gateways of type &#39;SECURE_WEB_GATEWAY. When `null`, the `subnetwork` field will be omitted from the resulting object.\n  - `type` (`string`): Immutable. The type of the customer-managed gateway. Possible values are: * OPEN_MESH * SECURE_WEB_GATEWAY. Possible values: [&#34;TYPE_UNSPECIFIED&#34;, &#34;OPEN_MESH&#34;, &#34;SECURE_WEB_GATEWAY&#34;]\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.network_services_gateway.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `network_services_gateway` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    ports,
    type,
    addresses=null,
    certificate_urls=null,
    delete_swg_autogen_router_on_destroy=null,
    description=null,
    gateway_security_policy=null,
    labels=null,
    location=null,
    network=null,
    project=null,
    scope=null,
    server_tls_policy=null,
    subnetwork=null,
    timeouts=null
  ):: std.prune(a={
    addresses: addresses,
    certificate_urls: certificate_urls,
    delete_swg_autogen_router_on_destroy: delete_swg_autogen_router_on_destroy,
    description: description,
    gateway_security_policy: gateway_security_policy,
    labels: labels,
    location: location,
    name: name,
    network: network,
    ports: ports,
    project: project,
    scope: scope,
    server_tls_policy: server_tls_policy,
    subnetwork: subnetwork,
    timeouts: timeouts,
    type: type,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.network_services_gateway.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAddresses':: d.fn(help='`google.list.withAddresses` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the addresses field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `addresses` field.\n', args=[]),
  withAddresses(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          addresses: value,
        },
      },
    },
  },
  '#withCertificateUrls':: d.fn(help='`google.list.withCertificateUrls` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the certificate_urls field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `certificate_urls` field.\n', args=[]),
  withCertificateUrls(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          certificate_urls: value,
        },
      },
    },
  },
  '#withDeleteSwgAutogenRouterOnDestroy':: d.fn(help='`google.bool.withDeleteSwgAutogenRouterOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the delete_swg_autogen_router_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `delete_swg_autogen_router_on_destroy` field.\n', args=[]),
  withDeleteSwgAutogenRouterOnDestroy(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          delete_swg_autogen_router_on_destroy: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withGatewaySecurityPolicy':: d.fn(help='`google.string.withGatewaySecurityPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the gateway_security_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `gateway_security_policy` field.\n', args=[]),
  withGatewaySecurityPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          gateway_security_policy: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withPorts':: d.fn(help='`google.list.withPorts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ports field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ports` field.\n', args=[]),
  withPorts(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          ports: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withScope':: d.fn(help='`google.string.withScope` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the scope field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `scope` field.\n', args=[]),
  withScope(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          scope: value,
        },
      },
    },
  },
  '#withServerTlsPolicy':: d.fn(help='`google.string.withServerTlsPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the server_tls_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `server_tls_policy` field.\n', args=[]),
  withServerTlsPolicy(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          server_tls_policy: value,
        },
      },
    },
  },
  '#withSubnetwork':: d.fn(help='`google.string.withSubnetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnetwork field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnetwork` field.\n', args=[]),
  withSubnetwork(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          subnetwork: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withType':: d.fn(help='`google.string.withType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `type` field.\n', args=[]),
  withType(resourceLabel, value): {
    resource+: {
      google_network_services_gateway+: {
        [resourceLabel]+: {
          type: value,
        },
      },
    },
  },
}

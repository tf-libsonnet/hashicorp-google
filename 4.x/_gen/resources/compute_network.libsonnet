local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_network', url='', help='`compute_network` represents the `google_compute_network` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_network.new` injects a new `google_compute_network` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_network.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_network` using the reference:\n\n    $._ref.google_compute_network.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_network.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `auto_create_subnetworks` (`bool`): When set to \u0026#39;true\u0026#39;, the network is created in \u0026#34;auto subnet mode\u0026#34; and\nit will create a subnet for each region automatically across the\n\u0026#39;10.128.0.0/9\u0026#39; address range.\n\nWhen set to \u0026#39;false\u0026#39;, the network is created in \u0026#34;custom subnet mode\u0026#34; so\nthe user can explicitly connect subnetwork resources. When `null`, the `auto_create_subnetworks` field will be omitted from the resulting object.\n  - `delete_default_routes_on_create` (`bool`): If set to \u0026#39;true\u0026#39;, default routes (\u0026#39;0.0.0.0/0\u0026#39;) will be deleted\nimmediately after network creation. Defaults to \u0026#39;false\u0026#39;. When `null`, the `delete_default_routes_on_create` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. The resource must be\nrecreated to modify this field. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_ula_internal_ipv6` (`bool`): Enable ULA internal ipv6 on this network. Enabling this feature will assign \na /48 from google defined ULA prefix fd20::/20. When `null`, the `enable_ula_internal_ipv6` field will be omitted from the resulting object.\n  - `internal_ipv6_range` (`string`): When enabling ula internal ipv6, caller optionally can specify the /48 range \nthey want from the google defined ULA prefix fd20::/20. The input must be a \nvalid /48 ULA IPv6 address and must be within the fd20::/20. Operation will \nfail if the speficied /48 is already in used by another resource. \nIf the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. When `null`, the `internal_ipv6_range` field will be omitted from the resulting object.\n  - `mtu` (`number`): Maximum Transmission Unit in bytes. The minimum value for this field is 1460\nand the maximum value is 1500 bytes. When `null`, the `mtu` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `routing_mode` (`string`): The network-wide routing mode to use. If set to \u0026#39;REGIONAL\u0026#39;, this\nnetwork\u0026#39;s cloud routers will only advertise routes with subnetworks\nof this network in the same region as the router. If set to \u0026#39;GLOBAL\u0026#39;,\nthis network\u0026#39;s cloud routers will advertise routes with all\nsubnetworks of this network, across regions. Possible values: [\u0026#34;REGIONAL\u0026#34;, \u0026#34;GLOBAL\u0026#34;] When `null`, the `routing_mode` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    auto_create_subnetworks=null,
    delete_default_routes_on_create=null,
    description=null,
    enable_ula_internal_ipv6=null,
    internal_ipv6_range=null,
    mtu=null,
    project=null,
    routing_mode=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_network',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_create_subnetworks=auto_create_subnetworks,
      delete_default_routes_on_create=delete_default_routes_on_create,
      description=description,
      enable_ula_internal_ipv6=enable_ula_internal_ipv6,
      internal_ipv6_range=internal_ipv6_range,
      mtu=mtu,
      name=name,
      project=project,
      routing_mode=routing_mode,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_network.newAttrs` constructs a new object with attributes and blocks configured for the `compute_network`\nTerraform resource.\n\nUnlike [google.compute_network.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `auto_create_subnetworks` (`bool`): When set to &#39;true&#39;, the network is created in &#34;auto subnet mode&#34; and\nit will create a subnet for each region automatically across the\n&#39;10.128.0.0/9&#39; address range.\n\nWhen set to &#39;false&#39;, the network is created in &#34;custom subnet mode&#34; so\nthe user can explicitly connect subnetwork resources. When `null`, the `auto_create_subnetworks` field will be omitted from the resulting object.\n  - `delete_default_routes_on_create` (`bool`): If set to &#39;true&#39;, default routes (&#39;0.0.0.0/0&#39;) will be deleted\nimmediately after network creation. Defaults to &#39;false&#39;. When `null`, the `delete_default_routes_on_create` field will be omitted from the resulting object.\n  - `description` (`string`): An optional description of this resource. The resource must be\nrecreated to modify this field. When `null`, the `description` field will be omitted from the resulting object.\n  - `enable_ula_internal_ipv6` (`bool`): Enable ULA internal ipv6 on this network. Enabling this feature will assign \na /48 from google defined ULA prefix fd20::/20. When `null`, the `enable_ula_internal_ipv6` field will be omitted from the resulting object.\n  - `internal_ipv6_range` (`string`): When enabling ula internal ipv6, caller optionally can specify the /48 range \nthey want from the google defined ULA prefix fd20::/20. The input must be a \nvalid /48 ULA IPv6 address and must be within the fd20::/20. Operation will \nfail if the speficied /48 is already in used by another resource. \nIf the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field. When `null`, the `internal_ipv6_range` field will be omitted from the resulting object.\n  - `mtu` (`number`): Maximum Transmission Unit in bytes. The minimum value for this field is 1460\nand the maximum value is 1500 bytes. When `null`, the `mtu` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `routing_mode` (`string`): The network-wide routing mode to use. If set to &#39;REGIONAL&#39;, this\nnetwork&#39;s cloud routers will only advertise routes with subnetworks\nof this network in the same region as the router. If set to &#39;GLOBAL&#39;,\nthis network&#39;s cloud routers will advertise routes with all\nsubnetworks of this network, across regions. Possible values: [&#34;REGIONAL&#34;, &#34;GLOBAL&#34;] When `null`, the `routing_mode` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_network.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_network` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    auto_create_subnetworks=null,
    delete_default_routes_on_create=null,
    description=null,
    enable_ula_internal_ipv6=null,
    internal_ipv6_range=null,
    mtu=null,
    project=null,
    routing_mode=null,
    timeouts=null
  ):: std.prune(a={
    auto_create_subnetworks: auto_create_subnetworks,
    delete_default_routes_on_create: delete_default_routes_on_create,
    description: description,
    enable_ula_internal_ipv6: enable_ula_internal_ipv6,
    internal_ipv6_range: internal_ipv6_range,
    mtu: mtu,
    name: name,
    project: project,
    routing_mode: routing_mode,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_network.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoCreateSubnetworks':: d.fn(help='`google.bool.withAutoCreateSubnetworks` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the auto_create_subnetworks field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `auto_create_subnetworks` field.\n', args=[]),
  withAutoCreateSubnetworks(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          auto_create_subnetworks: value,
        },
      },
    },
  },
  '#withDeleteDefaultRoutesOnCreate':: d.fn(help='`google.bool.withDeleteDefaultRoutesOnCreate` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the delete_default_routes_on_create field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `delete_default_routes_on_create` field.\n', args=[]),
  withDeleteDefaultRoutesOnCreate(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          delete_default_routes_on_create: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withEnableUlaInternalIpv6':: d.fn(help='`google.bool.withEnableUlaInternalIpv6` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the enable_ula_internal_ipv6 field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `enable_ula_internal_ipv6` field.\n', args=[]),
  withEnableUlaInternalIpv6(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          enable_ula_internal_ipv6: value,
        },
      },
    },
  },
  '#withInternalIpv6Range':: d.fn(help='`google.string.withInternalIpv6Range` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the internal_ipv6_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `internal_ipv6_range` field.\n', args=[]),
  withInternalIpv6Range(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          internal_ipv6_range: value,
        },
      },
    },
  },
  '#withMtu':: d.fn(help='`google.number.withMtu` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the mtu field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `mtu` field.\n', args=[]),
  withMtu(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          mtu: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRoutingMode':: d.fn(help='`google.string.withRoutingMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the routing_mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `routing_mode` field.\n', args=[]),
  withRoutingMode(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          routing_mode: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_network+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

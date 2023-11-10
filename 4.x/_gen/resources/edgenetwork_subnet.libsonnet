local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='edgenetwork_subnet', url='', help='`edgenetwork_subnet` represents the `google_edgenetwork_subnet` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.edgenetwork_subnet.new` injects a new `google_edgenetwork_subnet` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.edgenetwork_subnet.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.edgenetwork_subnet` using the reference:\n\n    $._ref.google_edgenetwork_subnet.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_edgenetwork_subnet.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `ipv4_cidr` (`list`): The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv4_cidr` field will be omitted from the resulting object.\n  - `ipv6_cidr` (`list`): The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv6_cidr` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels associated with this resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The Google Cloud region to which the target Distributed Cloud Edge zone belongs.\n  - `network` (`string`): The ID of the network to which this router belongs.\nMust be of the form: \u0026#39;projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}\u0026#39;\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `subnet_id` (`string`): A unique ID that identifies this subnet.\n  - `vlan_id` (`number`): VLAN ID for this subnetwork. If not specified, one is assigned automatically. When `null`, the `vlan_id` field will be omitted from the resulting object.\n  - `zone` (`string`): The name of the target Distributed Cloud Edge zone.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgenetwork_subnet.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    network,
    subnet_id,
    zone,
    description=null,
    ipv4_cidr=null,
    ipv6_cidr=null,
    labels=null,
    project=null,
    timeouts=null,
    vlan_id=null,
    _meta={}
  ):: tf.withResource(
    type='google_edgenetwork_subnet',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      ipv4_cidr=ipv4_cidr,
      ipv6_cidr=ipv6_cidr,
      labels=labels,
      location=location,
      network=network,
      project=project,
      subnet_id=subnet_id,
      timeouts=timeouts,
      vlan_id=vlan_id,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.edgenetwork_subnet.newAttrs` constructs a new object with attributes and blocks configured for the `edgenetwork_subnet`\nTerraform resource.\n\nUnlike [google.edgenetwork_subnet.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A free-text description of the resource. Max length 1024 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `ipv4_cidr` (`list`): The ranges of ipv4 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv4_cidr` field will be omitted from the resulting object.\n  - `ipv6_cidr` (`list`): The ranges of ipv6 addresses that are owned by this subnetwork, in CIDR format. When `null`, the `ipv6_cidr` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels associated with this resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The Google Cloud region to which the target Distributed Cloud Edge zone belongs.\n  - `network` (`string`): The ID of the network to which this router belongs.\nMust be of the form: &#39;projects/{{project}}/locations/{{location}}/zones/{{zone}}/networks/{{network_id}}&#39;\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `subnet_id` (`string`): A unique ID that identifies this subnet.\n  - `vlan_id` (`number`): VLAN ID for this subnetwork. If not specified, one is assigned automatically. When `null`, the `vlan_id` field will be omitted from the resulting object.\n  - `zone` (`string`): The name of the target Distributed Cloud Edge zone.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.edgenetwork_subnet.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `edgenetwork_subnet` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    network,
    subnet_id,
    zone,
    description=null,
    ipv4_cidr=null,
    ipv6_cidr=null,
    labels=null,
    project=null,
    timeouts=null,
    vlan_id=null
  ):: std.prune(a={
    description: description,
    ipv4_cidr: ipv4_cidr,
    ipv6_cidr: ipv6_cidr,
    labels: labels,
    location: location,
    network: network,
    project: project,
    subnet_id: subnet_id,
    timeouts: timeouts,
    vlan_id: vlan_id,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.edgenetwork_subnet.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withIpv4Cidr':: d.fn(help='`google.list.withIpv4Cidr` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ipv4_cidr field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ipv4_cidr` field.\n', args=[]),
  withIpv4Cidr(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          ipv4_cidr: value,
        },
      },
    },
  },
  '#withIpv6Cidr':: d.fn(help='`google.list.withIpv6Cidr` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the ipv6_cidr field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `ipv6_cidr` field.\n', args=[]),
  withIpv6Cidr(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          ipv6_cidr: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSubnetId':: d.fn(help='`google.string.withSubnetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the subnet_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `subnet_id` field.\n', args=[]),
  withSubnetId(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          subnet_id: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withVlanId':: d.fn(help='`google.number.withVlanId` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the vlan_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `vlan_id` field.\n', args=[]),
  withVlanId(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          vlan_id: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_edgenetwork_subnet+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

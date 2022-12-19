local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_packet_mirroring', url='', help='`compute_packet_mirroring` represents the `google_compute_packet_mirroring` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  collector_ilb:: {
    '#new':: d.fn(help='\n`google.compute_packet_mirroring.collector_ilb.new` constructs a new object with attributes and blocks configured for the `collector_ilb`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The URL of the forwarding rule.\n\n**Returns**:\n  - An attribute object that represents the `collector_ilb` sub block.\n', args=[]),
    new(
      url
    ):: std.prune(a={
      url: url,
    }),
  },
  filter:: {
    '#new':: d.fn(help='\n`google.compute_packet_mirroring.filter.new` constructs a new object with attributes and blocks configured for the `filter`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cidr_ranges` (`list`): IP CIDR ranges that apply as a filter on the source (ingress) or\ndestination (egress) IP in the IP header. Only IPv4 is supported. When `null`, the `cidr_ranges` field will be omitted from the resulting object.\n  - `direction` (`string`): Direction of traffic to mirror. Default value: &#34;BOTH&#34; Possible values: [&#34;INGRESS&#34;, &#34;EGRESS&#34;, &#34;BOTH&#34;] When `null`, the `direction` field will be omitted from the resulting object.\n  - `ip_protocols` (`list`): Possible IP protocols including tcp, udp, icmp and esp When `null`, the `ip_protocols` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `filter` sub block.\n', args=[]),
    new(
      cidr_ranges=null,
      direction=null,
      ip_protocols=null
    ):: std.prune(a={
      cidr_ranges: cidr_ranges,
      direction: direction,
      ip_protocols: ip_protocols,
    }),
  },
  mirrored_resources:: {
    instances:: {
      '#new':: d.fn(help='\n`google.compute_packet_mirroring.mirrored_resources.instances.new` constructs a new object with attributes and blocks configured for the `instances`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The URL of the instances where this rule should be active.\n\n**Returns**:\n  - An attribute object that represents the `instances` sub block.\n', args=[]),
      new(
        url
      ):: std.prune(a={
        url: url,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_packet_mirroring.mirrored_resources.new` constructs a new object with attributes and blocks configured for the `mirrored_resources`\nTerraform sub block.\n\n\n\n**Args**:\n  - `tags` (`list`): All instances with these tags will be mirrored. When `null`, the `tags` field will be omitted from the resulting object.\n  - `instances` (`list[obj]`): All the listed instances will be mirrored.  Specify at most 50. When `null`, the `instances` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.instances.new](#fn-mirrored_resourcesinstancesnew) constructor.\n  - `subnetworks` (`list[obj]`): All instances in one of these subnetworks will be mirrored. When `null`, the `subnetworks` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.subnetworks.new](#fn-mirrored_resourcessubnetworksnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `mirrored_resources` sub block.\n', args=[]),
    new(
      instances=null,
      subnetworks=null,
      tags=null
    ):: std.prune(a={
      instances: instances,
      subnetworks: subnetworks,
      tags: tags,
    }),
    subnetworks:: {
      '#new':: d.fn(help='\n`google.compute_packet_mirroring.mirrored_resources.subnetworks.new` constructs a new object with attributes and blocks configured for the `subnetworks`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The URL of the subnetwork where this rule should be active.\n\n**Returns**:\n  - An attribute object that represents the `subnetworks` sub block.\n', args=[]),
      new(
        url
      ):: std.prune(a={
        url: url,
      }),
    },
  },
  network:: {
    '#new':: d.fn(help='\n`google.compute_packet_mirroring.network.new` constructs a new object with attributes and blocks configured for the `network`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The full self_link URL of the network where this rule is active.\n\n**Returns**:\n  - An attribute object that represents the `network` sub block.\n', args=[]),
    new(
      url
    ):: std.prune(a={
      url: url,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_packet_mirroring.new` injects a new `google_compute_packet_mirroring` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_packet_mirroring.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_packet_mirroring` using the reference:\n\n    $._ref.google_compute_packet_mirroring.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_packet_mirroring.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A human-readable description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the packet mirroring rule\n  - `priority` (`number`): Since only one rule can be active at a time, priority is\nused to break ties in the case of two rules that apply to\nthe same instances. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created address should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `collector_ilb` (`list[obj]`): The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)\nthat will be used as collector for mirrored traffic. The\nspecified forwarding rule must have is_mirroring_collector\nset to true. When `null`, the `collector_ilb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.collector_ilb.new](#fn-compute_packet_mirroringcollector_ilbnew) constructor.\n  - `filter` (`list[obj]`): A filter for mirrored traffic.  If unset, all traffic is mirrored. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.filter.new](#fn-compute_packet_mirroringfilternew) constructor.\n  - `mirrored_resources` (`list[obj]`): A means of specifying which resources to mirror. When `null`, the `mirrored_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.new](#fn-compute_packet_mirroringmirrored_resourcesnew) constructor.\n  - `network` (`list[obj]`): Specifies the mirrored VPC network. Only packets in this network\nwill be mirrored. All mirrored VMs should have a NIC in the given\nnetwork. All mirrored subnetworks should belong to the given network. When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.network.new](#fn-compute_packet_mirroringnetworknew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.timeouts.new](#fn-compute_packet_mirroringtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    collector_ilb=null,
    description=null,
    filter=null,
    mirrored_resources=null,
    network=null,
    priority=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_packet_mirroring',
    label=resourceLabel,
    attrs=self.newAttrs(
      collector_ilb=collector_ilb,
      description=description,
      filter=filter,
      mirrored_resources=mirrored_resources,
      name=name,
      network=network,
      priority=priority,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_packet_mirroring.newAttrs` constructs a new object with attributes and blocks configured for the `compute_packet_mirroring`\nTerraform resource.\n\nUnlike [google.compute_packet_mirroring.new](#fn-compute_packet_mirroringnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A human-readable description of the rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the packet mirroring rule\n  - `priority` (`number`): Since only one rule can be active at a time, priority is\nused to break ties in the case of two rules that apply to\nthe same instances. When `null`, the `priority` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The Region in which the created address should reside.\nIf it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `collector_ilb` (`list[obj]`): The Forwarding Rule resource (of type load_balancing_scheme=INTERNAL)\nthat will be used as collector for mirrored traffic. The\nspecified forwarding rule must have is_mirroring_collector\nset to true. When `null`, the `collector_ilb` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.collector_ilb.new](#fn-compute_packet_mirroringcollector_ilbnew) constructor.\n  - `filter` (`list[obj]`): A filter for mirrored traffic.  If unset, all traffic is mirrored. When `null`, the `filter` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.filter.new](#fn-compute_packet_mirroringfilternew) constructor.\n  - `mirrored_resources` (`list[obj]`): A means of specifying which resources to mirror. When `null`, the `mirrored_resources` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.mirrored_resources.new](#fn-compute_packet_mirroringmirrored_resourcesnew) constructor.\n  - `network` (`list[obj]`): Specifies the mirrored VPC network. Only packets in this network\nwill be mirrored. All mirrored VMs should have a NIC in the given\nnetwork. All mirrored subnetworks should belong to the given network. When `null`, the `network` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.network.new](#fn-compute_packet_mirroringnetworknew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_packet_mirroring.timeouts.new](#fn-compute_packet_mirroringtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_packet_mirroring` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    collector_ilb=null,
    description=null,
    filter=null,
    mirrored_resources=null,
    network=null,
    priority=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    collector_ilb: collector_ilb,
    description: description,
    filter: filter,
    mirrored_resources: mirrored_resources,
    name: name,
    network: network,
    priority: priority,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_packet_mirroring.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withCollectorIlb':: d.fn(help='`google.list[obj].withCollectorIlb` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the collector_ilb field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withCollectorIlbMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `collector_ilb` field.\n', args=[]),
  withCollectorIlb(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          collector_ilb: value,
        },
      },
    },
  },
  '#withCollectorIlbMixin':: d.fn(help='`google.list[obj].withCollectorIlbMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the collector_ilb field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withCollectorIlb](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `collector_ilb` field.\n', args=[]),
  withCollectorIlbMixin(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          collector_ilb+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFilter':: d.fn(help='`google.list[obj].withFilter` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the filter field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFilterMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `filter` field.\n', args=[]),
  withFilter(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  '#withFilterMixin':: d.fn(help='`google.list[obj].withFilterMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the filter field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFilter](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `filter` field.\n', args=[]),
  withFilterMixin(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          filter+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withMirroredResources':: d.fn(help='`google.list[obj].withMirroredResources` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mirrored_resources field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withMirroredResourcesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mirrored_resources` field.\n', args=[]),
  withMirroredResources(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          mirrored_resources: value,
        },
      },
    },
  },
  '#withMirroredResourcesMixin':: d.fn(help='`google.list[obj].withMirroredResourcesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the mirrored_resources field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withMirroredResources](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `mirrored_resources` field.\n', args=[]),
  withMirroredResourcesMixin(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          mirrored_resources+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.list[obj].withNetwork` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNetworkMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withNetworkMixin':: d.fn(help='`google.list[obj].withNetworkMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the network field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNetwork](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `network` field.\n', args=[]),
  withNetworkMixin(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          network+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_packet_mirroring+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

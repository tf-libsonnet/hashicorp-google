local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vmwareengine_external_access_rule', url='', help='`vmwareengine_external_access_rule` represents the `google_vmwareengine_external_access_rule` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  destination_ip_ranges:: {
    '#new':: d.fn(help='\n`google.vmwareengine_external_access_rule.destination_ip_ranges.new` constructs a new object with attributes and blocks configured for the `destination_ip_ranges`\nTerraform sub block.\n\n\n\n**Args**:\n  - `external_address` (`string`): The name of an &#39;ExternalAddress&#39; resource. When `null`, the `external_address` field will be omitted from the resulting object.\n  - `ip_address_range` (`string`): An IP address range in the CIDR format. When `null`, the `ip_address_range` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `destination_ip_ranges` sub block.\n', args=[]),
    new(
      external_address=null,
      ip_address_range=null
    ):: std.prune(a={
      external_address: external_address,
      ip_address_range: ip_address_range,
    }),
  },
  '#new':: d.fn(help="\n`google.vmwareengine_external_access_rule.new` injects a new `google_vmwareengine_external_access_rule` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vmwareengine_external_access_rule.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vmwareengine_external_access_rule` using the reference:\n\n    $._ref.google_vmwareengine_external_access_rule.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vmwareengine_external_access_rule.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `action` (`string`): The action that the external access rule performs. Possible values: [\u0026#34;ALLOW\u0026#34;, \u0026#34;DENY\u0026#34;]\n  - `description` (`string`): User-provided description for the external access rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `destination_ports` (`list`): A list of destination ports to which the external access rule applies.\n  - `ip_protocol` (`string`): The IP protocol to which the external access rule applies.\n  - `name` (`string`): The ID of the external access rule.\n  - `parent` (`string`): The resource name of the network policy.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy\n  - `priority` (`number`): External access rule priority, which determines the external access rule to use when multiple rules apply.\n  - `source_ports` (`list`): A list of source ports to which the external access rule applies.\n  - `destination_ip_ranges` (`list[obj]`): If destination ranges are specified, the external access rule applies only to\ntraffic that has a destination IP address in these ranges. When `null`, the `destination_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.destination_ip_ranges.new](#fn-destination_ip_rangesnew) constructor.\n  - `source_ip_ranges` (`list[obj]`): If source ranges are specified, the external access rule applies only to\ntraffic that has a source IP address in these ranges. When `null`, the `source_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.source_ip_ranges.new](#fn-source_ip_rangesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    action,
    destination_ports,
    ip_protocol,
    name,
    parent,
    priority,
    source_ports,
    description=null,
    destination_ip_ranges=null,
    source_ip_ranges=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vmwareengine_external_access_rule',
    label=resourceLabel,
    attrs=self.newAttrs(
      action=action,
      description=description,
      destination_ip_ranges=destination_ip_ranges,
      destination_ports=destination_ports,
      ip_protocol=ip_protocol,
      name=name,
      parent=parent,
      priority=priority,
      source_ip_ranges=source_ip_ranges,
      source_ports=source_ports,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vmwareengine_external_access_rule.newAttrs` constructs a new object with attributes and blocks configured for the `vmwareengine_external_access_rule`\nTerraform resource.\n\nUnlike [google.vmwareengine_external_access_rule.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `action` (`string`): The action that the external access rule performs. Possible values: [&#34;ALLOW&#34;, &#34;DENY&#34;]\n  - `description` (`string`): User-provided description for the external access rule. When `null`, the `description` field will be omitted from the resulting object.\n  - `destination_ports` (`list`): A list of destination ports to which the external access rule applies.\n  - `ip_protocol` (`string`): The IP protocol to which the external access rule applies.\n  - `name` (`string`): The ID of the external access rule.\n  - `parent` (`string`): The resource name of the network policy.\nResource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.\nFor example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy\n  - `priority` (`number`): External access rule priority, which determines the external access rule to use when multiple rules apply.\n  - `source_ports` (`list`): A list of source ports to which the external access rule applies.\n  - `destination_ip_ranges` (`list[obj]`): If destination ranges are specified, the external access rule applies only to\ntraffic that has a destination IP address in these ranges. When `null`, the `destination_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.destination_ip_ranges.new](#fn-destination_ip_rangesnew) constructor.\n  - `source_ip_ranges` (`list[obj]`): If source ranges are specified, the external access rule applies only to\ntraffic that has a source IP address in these ranges. When `null`, the `source_ip_ranges` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.source_ip_ranges.new](#fn-source_ip_rangesnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vmwareengine_external_access_rule.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vmwareengine_external_access_rule` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    action,
    destination_ports,
    ip_protocol,
    name,
    parent,
    priority,
    source_ports,
    description=null,
    destination_ip_ranges=null,
    source_ip_ranges=null,
    timeouts=null
  ):: std.prune(a={
    action: action,
    description: description,
    destination_ip_ranges: destination_ip_ranges,
    destination_ports: destination_ports,
    ip_protocol: ip_protocol,
    name: name,
    parent: parent,
    priority: priority,
    source_ip_ranges: source_ip_ranges,
    source_ports: source_ports,
    timeouts: timeouts,
  }),
  source_ip_ranges:: {
    '#new':: d.fn(help='\n`google.vmwareengine_external_access_rule.source_ip_ranges.new` constructs a new object with attributes and blocks configured for the `source_ip_ranges`\nTerraform sub block.\n\n\n\n**Args**:\n  - `ip_address` (`string`): A single IP address. When `null`, the `ip_address` field will be omitted from the resulting object.\n  - `ip_address_range` (`string`): An IP address range in the CIDR format. When `null`, the `ip_address_range` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `source_ip_ranges` sub block.\n', args=[]),
    new(
      ip_address=null,
      ip_address_range=null
    ):: std.prune(a={
      ip_address: ip_address,
      ip_address_range: ip_address_range,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.vmwareengine_external_access_rule.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAction':: d.fn(help='`google.string.withAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `action` field.\n', args=[]),
  withAction(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          action: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDestinationIpRanges':: d.fn(help='`google.list[obj].withDestinationIpRanges` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination_ip_ranges field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDestinationIpRangesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination_ip_ranges` field.\n', args=[]),
  withDestinationIpRanges(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          destination_ip_ranges: value,
        },
      },
    },
  },
  '#withDestinationIpRangesMixin':: d.fn(help='`google.list[obj].withDestinationIpRangesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the destination_ip_ranges field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDestinationIpRanges](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `destination_ip_ranges` field.\n', args=[]),
  withDestinationIpRangesMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          destination_ip_ranges+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDestinationPorts':: d.fn(help='`google.list.withDestinationPorts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the destination_ports field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `destination_ports` field.\n', args=[]),
  withDestinationPorts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          destination_ports: value,
        },
      },
    },
  },
  '#withIpProtocol':: d.fn(help='`google.string.withIpProtocol` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_protocol field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_protocol` field.\n', args=[]),
  withIpProtocol(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          ip_protocol: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withPriority':: d.fn(help='`google.number.withPriority` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the priority field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `priority` field.\n', args=[]),
  withPriority(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          priority: value,
        },
      },
    },
  },
  '#withSourceIpRanges':: d.fn(help='`google.list[obj].withSourceIpRanges` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_ip_ranges field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSourceIpRangesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_ip_ranges` field.\n', args=[]),
  withSourceIpRanges(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          source_ip_ranges: value,
        },
      },
    },
  },
  '#withSourceIpRangesMixin':: d.fn(help='`google.list[obj].withSourceIpRangesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the source_ip_ranges field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSourceIpRanges](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `source_ip_ranges` field.\n', args=[]),
  withSourceIpRangesMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          source_ip_ranges+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSourcePorts':: d.fn(help='`google.list.withSourcePorts` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the source_ports field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `source_ports` field.\n', args=[]),
  withSourcePorts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          source_ports: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vmwareengine_external_access_rule+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

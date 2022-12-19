local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_instance_group', url='', help='`compute_instance_group` represents the `google_compute_instance_group` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  named_port:: {
    '#new':: d.fn(help='\n`google.compute_instance_group.named_port.new` constructs a new object with attributes and blocks configured for the `named_port`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name which the port will be mapped to.\n  - `port` (`number`): The port number to map the name to.\n\n**Returns**:\n  - An attribute object that represents the `named_port` sub block.\n', args=[]),
    new(
      name,
      port
    ):: std.prune(a={
      name: name,
      port: port,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_instance_group.new` injects a new `google_compute_instance_group` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_instance_group.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_instance_group` using the reference:\n\n    $._ref.google_compute_instance_group.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_instance_group.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional textual description of the instance group. When `null`, the `description` field will be omitted from the resulting object.\n  - `instances` (`list`): The list of instances in the group, in self_link format. When adding instances they must all be in the same network and zone as the instance group. When `null`, the `instances` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.\n  - `network` (`string`): The URL of the network the instance group is in. If this is different from the network where the instances are in, the creation fails. Defaults to the network where the instances are in (if neither network nor instances is specified, this field will be blank). When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone that this instance group should be created in. When `null`, the `zone` field will be omitted from the resulting object.\n  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.named_port.new](#fn-compute_instance_groupnamed_portnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.timeouts.new](#fn-compute_instance_grouptimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    description=null,
    instances=null,
    named_port=null,
    network=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      instances=instances,
      name=name,
      named_port=named_port,
      network=network,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_instance_group.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_group`\nTerraform resource.\n\nUnlike [google.compute_instance_group.new](#fn-compute_instance_groupnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional textual description of the instance group. When `null`, the `description` field will be omitted from the resulting object.\n  - `instances` (`list`): The list of instances in the group, in self_link format. When adding instances they must all be in the same network and zone as the instance group. When `null`, the `instances` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.\n  - `network` (`string`): The URL of the network the instance group is in. If this is different from the network where the instances are in, the creation fails. Defaults to the network where the instances are in (if neither network nor instances is specified, this field will be blank). When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone that this instance group should be created in. When `null`, the `zone` field will be omitted from the resulting object.\n  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.named_port.new](#fn-compute_instance_groupnamed_portnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group.timeouts.new](#fn-compute_instance_grouptimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_instance_group` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    description=null,
    instances=null,
    named_port=null,
    network=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    description: description,
    instances: instances,
    name: name,
    named_port: named_port,
    network: network,
    project: project,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_instance_group.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_compute_instance_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withInstances':: d.fn(help='`google.list.withInstances` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `instances` field.\n', args=[]),
  withInstances(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          instances: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNamedPort':: d.fn(help='`google.list[obj].withNamedPort` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the named_port field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNamedPortMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `named_port` field.\n', args=[]),
  withNamedPort(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          named_port: value,
        },
      },
    },
  },
  '#withNamedPortMixin':: d.fn(help='`google.list[obj].withNamedPortMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the named_port field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNamedPort](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `named_port` field.\n', args=[]),
  withNamedPortMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          named_port+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

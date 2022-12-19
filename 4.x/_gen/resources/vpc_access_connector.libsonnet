local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vpc_access_connector', url='', help='`vpc_access_connector` represents the `google_vpc_access_connector` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.vpc_access_connector.new` injects a new `google_vpc_access_connector` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vpc_access_connector.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vpc_access_connector` using the reference:\n\n    $._ref.google_vpc_access_connector.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vpc_access_connector.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `ip_cidr_range` (`string`): The range of internal addresses that follows RFC 4632 notation. Example: \u0026#39;10.132.0.0/28\u0026#39;. When `null`, the `ip_cidr_range` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Machine type of VM Instance underlying connector. Default is e2-micro When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_instances` (`number`): Maximum value of instances in autoscaling group underlying the connector. When `null`, the `max_instances` field will be omitted from the resulting object.\n  - `max_throughput` (`number`): Maximum throughput of the connector in Mbps, must be greater than \u0026#39;min_throughput\u0026#39;. Default is 300. When `null`, the `max_throughput` field will be omitted from the resulting object.\n  - `min_instances` (`number`): Minimum value of instances in autoscaling group underlying the connector. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `min_throughput` (`number`): Minimum throughput of the connector in Mbps. Default and min is 200. When `null`, the `min_throughput` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the resource (Max 25 characters).\n  - `network` (`string`): Name or self_link of the VPC network. Required if \u0026#39;ip_cidr_range\u0026#39; is set. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the VPC Access connector resides. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnet` (`list[obj]`): The subnet in which to house the connector When `null`, the `subnet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.subnet.new](#fn-subnetnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    ip_cidr_range=null,
    machine_type=null,
    max_instances=null,
    max_throughput=null,
    min_instances=null,
    min_throughput=null,
    network=null,
    project=null,
    region=null,
    subnet=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vpc_access_connector',
    label=resourceLabel,
    attrs=self.newAttrs(
      ip_cidr_range=ip_cidr_range,
      machine_type=machine_type,
      max_instances=max_instances,
      max_throughput=max_throughput,
      min_instances=min_instances,
      min_throughput=min_throughput,
      name=name,
      network=network,
      project=project,
      region=region,
      subnet=subnet,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vpc_access_connector.newAttrs` constructs a new object with attributes and blocks configured for the `vpc_access_connector`\nTerraform resource.\n\nUnlike [google.vpc_access_connector.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `ip_cidr_range` (`string`): The range of internal addresses that follows RFC 4632 notation. Example: &#39;10.132.0.0/28&#39;. When `null`, the `ip_cidr_range` field will be omitted from the resulting object.\n  - `machine_type` (`string`): Machine type of VM Instance underlying connector. Default is e2-micro When `null`, the `machine_type` field will be omitted from the resulting object.\n  - `max_instances` (`number`): Maximum value of instances in autoscaling group underlying the connector. When `null`, the `max_instances` field will be omitted from the resulting object.\n  - `max_throughput` (`number`): Maximum throughput of the connector in Mbps, must be greater than &#39;min_throughput&#39;. Default is 300. When `null`, the `max_throughput` field will be omitted from the resulting object.\n  - `min_instances` (`number`): Minimum value of instances in autoscaling group underlying the connector. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `min_throughput` (`number`): Minimum throughput of the connector in Mbps. Default and min is 200. When `null`, the `min_throughput` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the resource (Max 25 characters).\n  - `network` (`string`): Name or self_link of the VPC network. Required if &#39;ip_cidr_range&#39; is set. When `null`, the `network` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): Region where the VPC Access connector resides. If it is not provided, the provider region is used. When `null`, the `region` field will be omitted from the resulting object.\n  - `subnet` (`list[obj]`): The subnet in which to house the connector When `null`, the `subnet` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.subnet.new](#fn-subnetnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vpc_access_connector.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vpc_access_connector` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    ip_cidr_range=null,
    machine_type=null,
    max_instances=null,
    max_throughput=null,
    min_instances=null,
    min_throughput=null,
    network=null,
    project=null,
    region=null,
    subnet=null,
    timeouts=null
  ):: std.prune(a={
    ip_cidr_range: ip_cidr_range,
    machine_type: machine_type,
    max_instances: max_instances,
    max_throughput: max_throughput,
    min_instances: min_instances,
    min_throughput: min_throughput,
    name: name,
    network: network,
    project: project,
    region: region,
    subnet: subnet,
    timeouts: timeouts,
  }),
  subnet:: {
    '#new':: d.fn(help='\n`google.vpc_access_connector.subnet.new` constructs a new object with attributes and blocks configured for the `subnet`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is\nhttps://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName}&#34; When `null`, the `name` field will be omitted from the resulting object.\n  - `project_id` (`string`): Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `subnet` sub block.\n', args=[]),
    new(
      name=null,
      project_id=null
    ):: std.prune(a={
      name: name,
      project_id: project_id,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.vpc_access_connector.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withIpCidrRange':: d.fn(help='`google.string.withIpCidrRange` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the ip_cidr_range field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `ip_cidr_range` field.\n', args=[]),
  withIpCidrRange(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          ip_cidr_range: value,
        },
      },
    },
  },
  '#withMachineType':: d.fn(help='`google.string.withMachineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the machine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `machine_type` field.\n', args=[]),
  withMachineType(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          machine_type: value,
        },
      },
    },
  },
  '#withMaxInstances':: d.fn(help='`google.number.withMaxInstances` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_instances` field.\n', args=[]),
  withMaxInstances(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          max_instances: value,
        },
      },
    },
  },
  '#withMaxThroughput':: d.fn(help='`google.number.withMaxThroughput` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the max_throughput field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `max_throughput` field.\n', args=[]),
  withMaxThroughput(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          max_throughput: value,
        },
      },
    },
  },
  '#withMinInstances':: d.fn(help='`google.number.withMinInstances` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the min_instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `min_instances` field.\n', args=[]),
  withMinInstances(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          min_instances: value,
        },
      },
    },
  },
  '#withMinThroughput':: d.fn(help='`google.number.withMinThroughput` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the min_throughput field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `min_throughput` field.\n', args=[]),
  withMinThroughput(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          min_throughput: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNetwork':: d.fn(help='`google.string.withNetwork` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the network field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `network` field.\n', args=[]),
  withNetwork(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withSubnet':: d.fn(help='`google.list[obj].withSubnet` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subnet field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSubnetMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subnet` field.\n', args=[]),
  withSubnet(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          subnet: value,
        },
      },
    },
  },
  '#withSubnetMixin':: d.fn(help='`google.list[obj].withSubnetMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the subnet field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSubnet](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `subnet` field.\n', args=[]),
  withSubnetMixin(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          subnet+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vpc_access_connector+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

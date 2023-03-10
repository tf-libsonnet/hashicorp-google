local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_shared_vpc_service_project', url='', help='`compute_shared_vpc_service_project` represents the `google_compute_shared_vpc_service_project` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_shared_vpc_service_project.new` injects a new `google_compute_shared_vpc_service_project` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_shared_vpc_service_project.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_shared_vpc_service_project` using the reference:\n\n    $._ref.google_compute_shared_vpc_service_project.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_shared_vpc_service_project.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `deletion_policy` (`string`): The deletion policy for the shared VPC service. Setting ABANDON allows the resource\n\t\t\t\tto be abandoned rather than deleted. Possible values are: \u0026#34;ABANDON\u0026#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `host_project` (`string`): The ID of a host project to associate.\n  - `service_project` (`string`): The ID of the project that will serve as a Shared VPC service project.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_shared_vpc_service_project.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    host_project,
    service_project,
    deletion_policy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_shared_vpc_service_project',
    label=resourceLabel,
    attrs=self.newAttrs(
      deletion_policy=deletion_policy,
      host_project=host_project,
      service_project=service_project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_shared_vpc_service_project.newAttrs` constructs a new object with attributes and blocks configured for the `compute_shared_vpc_service_project`\nTerraform resource.\n\nUnlike [google.compute_shared_vpc_service_project.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deletion_policy` (`string`): The deletion policy for the shared VPC service. Setting ABANDON allows the resource\n\t\t\t\tto be abandoned rather than deleted. Possible values are: &#34;ABANDON&#34;. When `null`, the `deletion_policy` field will be omitted from the resulting object.\n  - `host_project` (`string`): The ID of a host project to associate.\n  - `service_project` (`string`): The ID of the project that will serve as a Shared VPC service project.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_shared_vpc_service_project.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_shared_vpc_service_project` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    host_project,
    service_project,
    deletion_policy=null,
    timeouts=null
  ):: std.prune(a={
    deletion_policy: deletion_policy,
    host_project: host_project,
    service_project: service_project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_shared_vpc_service_project.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDeletionPolicy':: d.fn(help='`google.string.withDeletionPolicy` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deletion_policy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deletion_policy` field.\n', args=[]),
  withDeletionPolicy(resourceLabel, value): {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          deletion_policy: value,
        },
      },
    },
  },
  '#withHostProject':: d.fn(help='`google.string.withHostProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the host_project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `host_project` field.\n', args=[]),
  withHostProject(resourceLabel, value): {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          host_project: value,
        },
      },
    },
  },
  '#withServiceProject':: d.fn(help='`google.string.withServiceProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the service_project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `service_project` field.\n', args=[]),
  withServiceProject(resourceLabel, value): {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          service_project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_shared_vpc_service_project+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

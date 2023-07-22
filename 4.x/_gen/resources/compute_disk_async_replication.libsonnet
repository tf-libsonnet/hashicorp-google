local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_disk_async_replication', url='', help='`compute_disk_async_replication` represents the `google_compute_disk_async_replication` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_disk_async_replication.new` injects a new `google_compute_disk_async_replication` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_disk_async_replication.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_disk_async_replication` using the reference:\n\n    $._ref.google_compute_disk_async_replication.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_disk_async_replication.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `primary_disk` (`string`): Primary disk for asynchronous replication.\n  - `secondary_disk` (`list[obj]`): Secondary disk for asynchronous replication. When `null`, the `secondary_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.secondary_disk.new](#fn-secondary_disknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    primary_disk,
    secondary_disk=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk_async_replication',
    label=resourceLabel,
    attrs=self.newAttrs(primary_disk=primary_disk, secondary_disk=secondary_disk, timeouts=timeouts),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_disk_async_replication.newAttrs` constructs a new object with attributes and blocks configured for the `compute_disk_async_replication`\nTerraform resource.\n\nUnlike [google.compute_disk_async_replication.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `primary_disk` (`string`): Primary disk for asynchronous replication.\n  - `secondary_disk` (`list[obj]`): Secondary disk for asynchronous replication. When `null`, the `secondary_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.secondary_disk.new](#fn-secondary_disknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_disk_async_replication.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_disk_async_replication` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    primary_disk,
    secondary_disk=null,
    timeouts=null
  ):: std.prune(a={
    primary_disk: primary_disk,
    secondary_disk: secondary_disk,
    timeouts: timeouts,
  }),
  secondary_disk:: {
    '#new':: d.fn(help='\n`google.compute_disk_async_replication.secondary_disk.new` constructs a new object with attributes and blocks configured for the `secondary_disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk` (`string`): Secondary disk for asynchronous replication.\n\n**Returns**:\n  - An attribute object that represents the `secondary_disk` sub block.\n', args=[]),
    new(
      disk
    ):: std.prune(a={
      disk: disk,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_disk_async_replication.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withPrimaryDisk':: d.fn(help='`google.string.withPrimaryDisk` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the primary_disk field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `primary_disk` field.\n', args=[]),
  withPrimaryDisk(resourceLabel, value): {
    resource+: {
      google_compute_disk_async_replication+: {
        [resourceLabel]+: {
          primary_disk: value,
        },
      },
    },
  },
  '#withSecondaryDisk':: d.fn(help='`google.list[obj].withSecondaryDisk` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secondary_disk field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecondaryDiskMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secondary_disk` field.\n', args=[]),
  withSecondaryDisk(resourceLabel, value): {
    resource+: {
      google_compute_disk_async_replication+: {
        [resourceLabel]+: {
          secondary_disk: value,
        },
      },
    },
  },
  '#withSecondaryDiskMixin':: d.fn(help='`google.list[obj].withSecondaryDiskMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secondary_disk field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecondaryDisk](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secondary_disk` field.\n', args=[]),
  withSecondaryDiskMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk_async_replication+: {
        [resourceLabel]+: {
          secondary_disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_disk_async_replication+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_disk_async_replication+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

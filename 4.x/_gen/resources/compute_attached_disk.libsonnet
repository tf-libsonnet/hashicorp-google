local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_attached_disk', url='', help='`compute_attached_disk` represents the `google_compute_attached_disk` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_attached_disk.new` injects a new `google_compute_attached_disk` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_attached_disk.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_attached_disk` using the reference:\n\n    $._ref.google_compute_attached_disk.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_attached_disk.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `device_name` (`string`): Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disks-x, where x is a number assigned by Google Compute Engine. When `null`, the `device_name` field will be omitted from the resulting object.\n  - `disk` (`string`): name or self_link of the disk that will be attached.\n  - `instance` (`string`): name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider.\n  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. When `null`, the `mode` field will be omitted from the resulting object.\n  - `project` (`string`): The project that the referenced compute instance is a part of. If instance is referenced by its self_link the project defined in the link will take precedence. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone that the referenced compute instance is located within. If instance is referenced by its self_link the zone defined in the link will take precedence. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_attached_disk.timeouts.new](#fn-computeattacheddisktimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    disk,
    instance,
    device_name=null,
    mode=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_attached_disk',
    label=resourceLabel,
    attrs=self.newAttrs(
      device_name=device_name,
      disk=disk,
      instance=instance,
      mode=mode,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_attached_disk.newAttrs` constructs a new object with attributes and blocks configured for the `compute_attached_disk`\nTerraform resource.\n\nUnlike [google.compute_attached_disk.new](#fn-computeattacheddisknew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `device_name` (`string`): Specifies a unique device name of your choice that is reflected into the /dev/disk/by-id/google-* tree of a Linux operating system running within the instance. This name can be used to reference the device for mounting, resizing, and so on, from within the instance. If not specified, the server chooses a default device name to apply to this disk, in the form persistent-disks-x, where x is a number assigned by Google Compute Engine. When `null`, the `device_name` field will be omitted from the resulting object.\n  - `disk` (`string`): name or self_link of the disk that will be attached.\n  - `instance` (`string`): name or self_link of the compute instance that the disk will be attached to. If the self_link is provided then zone and project are extracted from the self link. If only the name is used then zone and project must be defined as properties on the resource or provider.\n  - `mode` (`string`): The mode in which to attach this disk, either READ_WRITE or READ_ONLY. If not specified, the default is to attach the disk in READ_WRITE mode. When `null`, the `mode` field will be omitted from the resulting object.\n  - `project` (`string`): The project that the referenced compute instance is a part of. If instance is referenced by its self_link the project defined in the link will take precedence. When `null`, the `project` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone that the referenced compute instance is located within. If instance is referenced by its self_link the zone defined in the link will take precedence. When `null`, the `zone` field will be omitted from the resulting object.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_attached_disk.timeouts.new](#fn-computeattacheddisktimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_attached_disk` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    disk,
    instance,
    device_name=null,
    mode=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    device_name: device_name,
    disk: disk,
    instance: instance,
    mode: mode,
    project: project,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_attached_disk.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDeviceName':: d.fn(help='`google.string.withDeviceName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the device_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `device_name` field.\n', args=[]),
  withDeviceName(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          device_name: value,
        },
      },
    },
  },
  '#withDisk':: d.fn(help='`google.string.withDisk` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the disk field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `disk` field.\n', args=[]),
  withDisk(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          disk: value,
        },
      },
    },
  },
  '#withInstance':: d.fn(help='`google.string.withInstance` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance` field.\n', args=[]),
  withInstance(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  '#withMode':: d.fn(help='`google.string.withMode` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the mode field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `mode` field.\n', args=[]),
  withMode(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          mode: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

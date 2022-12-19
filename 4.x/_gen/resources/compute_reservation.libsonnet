local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_reservation', url='', help='`compute_reservation` represents the `google_compute_reservation` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_reservation.new` injects a new `google_compute_reservation` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_reservation.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_reservation` using the reference:\n\n    $._ref.google_compute_reservation.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_reservation.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `specific_reservation_required` (`bool`): When set to true, only VMs that target this reservation by name can\nconsume this reservation. Otherwise, it can be consumed by VMs with\naffinity for any reservation. Defaults to false. When `null`, the `specific_reservation_required` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone where the reservation is made.\n  - `share_settings` (`list[obj]`): The share setting for reservations. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.share_settings.new](#fn-computereservationsharesettingsnew) constructor.\n  - `specific_reservation` (`list[obj]`): Reservation for instances with specific machine shapes. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.new](#fn-computereservationspecificreservationnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.timeouts.new](#fn-computereservationtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    zone,
    description=null,
    project=null,
    share_settings=null,
    specific_reservation=null,
    specific_reservation_required=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_reservation',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      name=name,
      project=project,
      share_settings=share_settings,
      specific_reservation=specific_reservation,
      specific_reservation_required=specific_reservation_required,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_reservation.newAttrs` constructs a new object with attributes and blocks configured for the `compute_reservation`\nTerraform resource.\n\nUnlike [google.compute_reservation.new](#fn-computereservationnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `specific_reservation_required` (`bool`): When set to true, only VMs that target this reservation by name can\nconsume this reservation. Otherwise, it can be consumed by VMs with\naffinity for any reservation. Defaults to false. When `null`, the `specific_reservation_required` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone where the reservation is made.\n  - `share_settings` (`list[obj]`): The share setting for reservations. When `null`, the `share_settings` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.share_settings.new](#fn-computereservationsharesettingsnew) constructor.\n  - `specific_reservation` (`list[obj]`): Reservation for instances with specific machine shapes. When `null`, the `specific_reservation` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.new](#fn-computereservationspecificreservationnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.timeouts.new](#fn-computereservationtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_reservation` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    zone,
    description=null,
    project=null,
    share_settings=null,
    specific_reservation=null,
    specific_reservation_required=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    name: name,
    project: project,
    share_settings: share_settings,
    specific_reservation: specific_reservation,
    specific_reservation_required: specific_reservation_required,
    timeouts: timeouts,
    zone: zone,
  }),
  share_settings:: {
    '#new':: d.fn(help='\n`google.compute_reservation.share_settings.new` constructs a new object with attributes and blocks configured for the `share_settings`\nTerraform sub block.\n\n\n\n**Args**:\n  - `share_type` (`string`): Type of sharing for this shared-reservation Possible values: [&#34;LOCAL&#34;, &#34;SPECIFIC_PROJECTS&#34;] When `null`, the `share_type` field will be omitted from the resulting object.\n  - `project_map` (`list[obj]`): A map of project number and project config. This is only valid when shareType&#39;s value is SPECIFIC_PROJECTS. When `null`, the `project_map` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.share_settings.project_map.new](#fn-sharesettingsprojectmapnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `share_settings` sub block.\n', args=[]),
    new(
      project_map=null,
      share_type=null
    ):: std.prune(a={
      project_map: project_map,
      share_type: share_type,
    }),
    project_map:: {
      '#new':: d.fn(help='\n`google.compute_reservation.share_settings.project_map.new` constructs a new object with attributes and blocks configured for the `project_map`\nTerraform sub block.\n\n\n\n**Args**:\n  - `project_id` (`string`): The project id/number, should be same as the key of this project config in the project map. When `null`, the `project_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `project_map` sub block.\n', args=[]),
      new(
        project_id=null
      ):: std.prune(a={
        project_id: project_id,
      }),
    },
  },
  specific_reservation:: {
    instance_properties:: {
      guest_accelerators:: {
        '#new':: d.fn(help='\n`google.compute_reservation.specific_reservation.instance_properties.guest_accelerators.new` constructs a new object with attributes and blocks configured for the `guest_accelerators`\nTerraform sub block.\n\n\n\n**Args**:\n  - `accelerator_count` (`number`): The number of the guest accelerator cards exposed to\nthis instance.\n  - `accelerator_type` (`string`): The full or partial URL of the accelerator type to\nattach to this instance. For example:\n&#39;projects/my-project/zones/us-central1-c/acceleratorTypes/nvidia-tesla-p100&#39;\n\nIf you are creating an instance template, specify only the accelerator name.\n\n**Returns**:\n  - An attribute object that represents the `guest_accelerators` sub block.\n', args=[]),
        new(
          accelerator_count,
          accelerator_type
        ):: std.prune(a={
          accelerator_count: accelerator_count,
          accelerator_type: accelerator_type,
        }),
      },
      local_ssds:: {
        '#new':: d.fn(help='\n`google.compute_reservation.specific_reservation.instance_properties.local_ssds.new` constructs a new object with attributes and blocks configured for the `local_ssds`\nTerraform sub block.\n\n\n\n**Args**:\n  - `disk_size_gb` (`number`): The size of the disk in base-2 GB.\n  - `interface` (`string`): The disk interface to use for attaching this disk. Default value: &#34;SCSI&#34; Possible values: [&#34;SCSI&#34;, &#34;NVME&#34;] When `null`, the `interface` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `local_ssds` sub block.\n', args=[]),
        new(
          disk_size_gb,
          interface=null
        ):: std.prune(a={
          disk_size_gb: disk_size_gb,
          interface: interface,
        }),
      },
      '#new':: d.fn(help='\n`google.compute_reservation.specific_reservation.instance_properties.new` constructs a new object with attributes and blocks configured for the `instance_properties`\nTerraform sub block.\n\n\n\n**Args**:\n  - `machine_type` (`string`): The name of the machine type to reserve.\n  - `min_cpu_platform` (`string`): The minimum CPU platform for the reservation. For example,\n&#39;&#34;Intel Skylake&#34;&#39;. See\nthe CPU platform availability reference](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform#availablezones)\nfor information on available CPU platforms. When `null`, the `min_cpu_platform` field will be omitted from the resulting object.\n  - `guest_accelerators` (`list[obj]`): Guest accelerator type and count. When `null`, the `guest_accelerators` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.instance_properties.guest_accelerators.new](#fn-instancepropertiesguestacceleratorsnew) constructor.\n  - `local_ssds` (`list[obj]`): The amount of local ssd to reserve with each instance. This\nreserves disks of type &#39;local-ssd&#39;. When `null`, the `local_ssds` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.instance_properties.local_ssds.new](#fn-instancepropertieslocalssdsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `instance_properties` sub block.\n', args=[]),
      new(
        machine_type,
        guest_accelerators=null,
        local_ssds=null,
        min_cpu_platform=null
      ):: std.prune(a={
        guest_accelerators: guest_accelerators,
        local_ssds: local_ssds,
        machine_type: machine_type,
        min_cpu_platform: min_cpu_platform,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_reservation.specific_reservation.new` constructs a new object with attributes and blocks configured for the `specific_reservation`\nTerraform sub block.\n\n\n\n**Args**:\n  - `count` (`number`): The number of resources that are allocated.\n  - `instance_properties` (`list[obj]`): The instance properties for the reservation. When `null`, the `instance_properties` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_reservation.specific_reservation.instance_properties.new](#fn-specificreservationinstancepropertiesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `specific_reservation` sub block.\n', args=[]),
    new(
      count,
      instance_properties=null
    ):: std.prune(a={
      count: count,
      instance_properties: instance_properties,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_reservation.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.compute_reservation.withDescription` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.compute_reservation.withName` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.compute_reservation.withProject` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withShareSettings':: d.fn(help='`google.compute_reservation.withShareSettings` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the share_settings field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `share_settings` field.\n', args=[]),
  withShareSettings(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          share_settings: value,
        },
      },
    },
  },
  '#withShareSettingsMixin':: d.fn(help='`google.compute_reservation.withShareSettingsMixin` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the share_settings field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.compute_reservation.withShareSettings](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `share_settings` field.\n', args=[]),
  withShareSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          share_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSpecificReservation':: d.fn(help='`google.compute_reservation.withSpecificReservation` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the specific_reservation field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `specific_reservation` field.\n', args=[]),
  withSpecificReservation(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          specific_reservation: value,
        },
      },
    },
  },
  '#withSpecificReservationMixin':: d.fn(help='`google.compute_reservation.withSpecificReservationMixin` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the specific_reservation field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.compute_reservation.withSpecificReservation](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `specific_reservation` field.\n', args=[]),
  withSpecificReservationMixin(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          specific_reservation+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSpecificReservationRequired':: d.fn(help='`google.compute_reservation.withSpecificReservationRequired` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the specific_reservation_required field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `specific_reservation_required` field.\n', args=[]),
  withSpecificReservationRequired(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          specific_reservation_required: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.compute_reservation.withTimeouts` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.compute_reservation.withTimeoutsMixin` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.compute_reservation.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.compute_reservation.withZone` constructs a mixin object that can be merged into the `compute_reservation`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_reservation+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_per_instance_config', url='', help='`compute_per_instance_config` represents the `google_compute_per_instance_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.compute_per_instance_config.new` injects a new `google_compute_per_instance_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_per_instance_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_per_instance_config` using the reference:\n\n    $._ref.google_compute_per_instance_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_per_instance_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `instance_group_manager` (`string`): The instance group manager this instance config is part of.\n  - `minimal_action` (`string`): The minimal action to perform on the instance during an update.\nDefault is \u0026#39;NONE\u0026#39;. Possible values are:\n* REPLACE\n* RESTART\n* REFRESH\n* NONE When `null`, the `minimal_action` field will be omitted from the resulting object.\n  - `most_disruptive_allowed_action` (`string`): The most disruptive action to perform on the instance during an update.\nDefault is \u0026#39;REPLACE\u0026#39;. Possible values are:\n* REPLACE\n* RESTART\n* REFRESH\n* NONE When `null`, the `most_disruptive_allowed_action` field will be omitted from the resulting object.\n  - `name` (`string`): The name for this per-instance config and its corresponding instance.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `remove_instance_state_on_destroy` (`bool`): When true, deleting this config will immediately remove any specified state from the underlying instance.\nWhen false, deleting this config will *not* immediately remove any state from the underlying instance.\nState will be removed on the next instance recreation or update. When `null`, the `remove_instance_state_on_destroy` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the containing instance group manager is located When `null`, the `zone` field will be omitted from the resulting object.\n  - `preserved_state` (`list[obj]`): The preserved state for this instance. When `null`, the `preserved_state` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.preserved_state.new](#fn-preserved_statenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    instance_group_manager,
    name,
    minimal_action=null,
    most_disruptive_allowed_action=null,
    preserved_state=null,
    project=null,
    remove_instance_state_on_destroy=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_per_instance_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance_group_manager=instance_group_manager,
      minimal_action=minimal_action,
      most_disruptive_allowed_action=most_disruptive_allowed_action,
      name=name,
      preserved_state=preserved_state,
      project=project,
      remove_instance_state_on_destroy=remove_instance_state_on_destroy,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_per_instance_config.newAttrs` constructs a new object with attributes and blocks configured for the `compute_per_instance_config`\nTerraform resource.\n\nUnlike [google.compute_per_instance_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `instance_group_manager` (`string`): The instance group manager this instance config is part of.\n  - `minimal_action` (`string`): The minimal action to perform on the instance during an update.\nDefault is &#39;NONE&#39;. Possible values are:\n* REPLACE\n* RESTART\n* REFRESH\n* NONE When `null`, the `minimal_action` field will be omitted from the resulting object.\n  - `most_disruptive_allowed_action` (`string`): The most disruptive action to perform on the instance during an update.\nDefault is &#39;REPLACE&#39;. Possible values are:\n* REPLACE\n* RESTART\n* REFRESH\n* NONE When `null`, the `most_disruptive_allowed_action` field will be omitted from the resulting object.\n  - `name` (`string`): The name for this per-instance config and its corresponding instance.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `remove_instance_state_on_destroy` (`bool`): When true, deleting this config will immediately remove any specified state from the underlying instance.\nWhen false, deleting this config will *not* immediately remove any state from the underlying instance.\nState will be removed on the next instance recreation or update. When `null`, the `remove_instance_state_on_destroy` field will be omitted from the resulting object.\n  - `zone` (`string`): Zone where the containing instance group manager is located When `null`, the `zone` field will be omitted from the resulting object.\n  - `preserved_state` (`list[obj]`): The preserved state for this instance. When `null`, the `preserved_state` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.preserved_state.new](#fn-preserved_statenew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_per_instance_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    instance_group_manager,
    name,
    minimal_action=null,
    most_disruptive_allowed_action=null,
    preserved_state=null,
    project=null,
    remove_instance_state_on_destroy=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    instance_group_manager: instance_group_manager,
    minimal_action: minimal_action,
    most_disruptive_allowed_action: most_disruptive_allowed_action,
    name: name,
    preserved_state: preserved_state,
    project: project,
    remove_instance_state_on_destroy: remove_instance_state_on_destroy,
    timeouts: timeouts,
    zone: zone,
  }),
  preserved_state:: {
    disk:: {
      '#new':: d.fn(help='\n`google.compute_per_instance_config.preserved_state.disk.new` constructs a new object with attributes and blocks configured for the `disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `delete_rule` (`string`): A value that prescribes what should happen to the stateful disk when the VM instance is deleted.\nThe available options are &#39;NEVER&#39; and &#39;ON_PERMANENT_INSTANCE_DELETION&#39;.\n&#39;NEVER&#39; - detach the disk when the VM is deleted, but do not delete the disk.\n&#39;ON_PERMANENT_INSTANCE_DELETION&#39; will delete the stateful disk when the VM is permanently\ndeleted from the instance group. Default value: &#34;NEVER&#34; Possible values: [&#34;NEVER&#34;, &#34;ON_PERMANENT_INSTANCE_DELETION&#34;] When `null`, the `delete_rule` field will be omitted from the resulting object.\n  - `device_name` (`string`): A unique device name that is reflected into the /dev/ tree of a Linux operating system running within the instance.\n  - `mode` (`string`): The mode of the disk. Default value: &#34;READ_WRITE&#34; Possible values: [&#34;READ_ONLY&#34;, &#34;READ_WRITE&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `source` (`string`): The URI of an existing persistent disk to attach under the specified device-name in the format\n&#39;projects/project-id/zones/zone/disks/disk-name&#39;.\n\n**Returns**:\n  - An attribute object that represents the `disk` sub block.\n', args=[]),
      new(
        device_name,
        source,
        delete_rule=null,
        mode=null
      ):: std.prune(a={
        delete_rule: delete_rule,
        device_name: device_name,
        mode: mode,
        source: source,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_per_instance_config.preserved_state.new` constructs a new object with attributes and blocks configured for the `preserved_state`\nTerraform sub block.\n\n\n\n**Args**:\n  - `metadata` (`obj`): Preserved metadata defined for this instance. This is a list of key-&gt;value pairs. When `null`, the `metadata` field will be omitted from the resulting object.\n  - `disk` (`list[obj]`): Stateful disks for the instance. When `null`, the `disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_per_instance_config.preserved_state.disk.new](#fn-preserved_statedisknew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `preserved_state` sub block.\n', args=[]),
    new(
      disk=null,
      metadata=null
    ):: std.prune(a={
      disk: disk,
      metadata: metadata,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_per_instance_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withInstanceGroupManager':: d.fn(help='`google.string.withInstanceGroupManager` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the instance_group_manager field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `instance_group_manager` field.\n', args=[]),
  withInstanceGroupManager(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          instance_group_manager: value,
        },
      },
    },
  },
  '#withMinimalAction':: d.fn(help='`google.string.withMinimalAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the minimal_action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `minimal_action` field.\n', args=[]),
  withMinimalAction(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          minimal_action: value,
        },
      },
    },
  },
  '#withMostDisruptiveAllowedAction':: d.fn(help='`google.string.withMostDisruptiveAllowedAction` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the most_disruptive_allowed_action field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `most_disruptive_allowed_action` field.\n', args=[]),
  withMostDisruptiveAllowedAction(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          most_disruptive_allowed_action: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withPreservedState':: d.fn(help='`google.list[obj].withPreservedState` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the preserved_state field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withPreservedStateMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `preserved_state` field.\n', args=[]),
  withPreservedState(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          preserved_state: value,
        },
      },
    },
  },
  '#withPreservedStateMixin':: d.fn(help='`google.list[obj].withPreservedStateMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the preserved_state field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withPreservedState](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `preserved_state` field.\n', args=[]),
  withPreservedStateMixin(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          preserved_state+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRemoveInstanceStateOnDestroy':: d.fn(help='`google.bool.withRemoveInstanceStateOnDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the remove_instance_state_on_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `remove_instance_state_on_destroy` field.\n', args=[]),
  withRemoveInstanceStateOnDestroy(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          remove_instance_state_on_destroy: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_per_instance_config+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

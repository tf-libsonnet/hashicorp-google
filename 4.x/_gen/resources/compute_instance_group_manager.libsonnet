local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_instance_group_manager', url='', help='`compute_instance_group_manager` represents the `google_compute_instance_group_manager` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  auto_healing_policies:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.auto_healing_policies.new` constructs a new object with attributes and blocks configured for the `auto_healing_policies`\nTerraform sub block.\n\n\n\n**Args**:\n  - `health_check` (`string`): The health check resource that signals autohealing.\n  - `initial_delay_sec` (`number`): The number of seconds that the managed instance group waits before it applies autohealing policies to new instances or recently recreated instances. Between 0 and 3600.\n\n**Returns**:\n  - An attribute object that represents the `auto_healing_policies` sub block.\n', args=[]),
    new(
      health_check,
      initial_delay_sec
    ):: std.prune(a={
      health_check: health_check,
      initial_delay_sec: initial_delay_sec,
    }),
  },
  instance_lifecycle_policy:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.instance_lifecycle_policy.new` constructs a new object with attributes and blocks configured for the `instance_lifecycle_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `force_update_on_repair` (`string`): Specifies whether to apply the group&#39;s latest configuration when repairing a VM. Valid options are: YES, NO. If YES and you updated the group&#39;s instance template or per-instance configurations after the VM was created, then these changes are applied when VM is repaired. If NO (default), then updates are applied in accordance with the group&#39;s update policy type. When `null`, the `force_update_on_repair` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `instance_lifecycle_policy` sub block.\n', args=[]),
    new(
      force_update_on_repair=null
    ):: std.prune(a={
      force_update_on_repair: force_update_on_repair,
    }),
  },
  named_port:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.named_port.new` constructs a new object with attributes and blocks configured for the `named_port`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name of the port.\n  - `port` (`number`): The port number.\n\n**Returns**:\n  - An attribute object that represents the `named_port` sub block.\n', args=[]),
    new(
      name,
      port
    ):: std.prune(a={
      name: name,
      port: port,
    }),
  },
  '#new':: d.fn(help="\n`google.compute_instance_group_manager.new` injects a new `google_compute_instance_group_manager` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_instance_group_manager.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_instance_group_manager` using the reference:\n\n    $._ref.google_compute_instance_group_manager.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_instance_group_manager.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `base_instance_name` (`string`): The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name.\n  - `description` (`string`): An optional textual description of the instance group manager. When `null`, the `description` field will be omitted from the resulting object.\n  - `list_managed_instances_results` (`string`): Pagination behavior of the listManagedInstances API method for this managed instance group. Valid values are: \u0026#34;PAGELESS\u0026#34;, \u0026#34;PAGINATED\u0026#34;. If PAGELESS (default), Pagination is disabled for the group\u0026#39;s listManagedInstances API method. maxResults and pageToken query parameters are ignored and all instances are returned in a single response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are respected. When `null`, the `list_managed_instances_results` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `target_pools` (`list`): The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances. When `null`, the `target_pools` field will be omitted from the resulting object.\n  - `target_size` (`number`): The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0. When `null`, the `target_size` field will be omitted from the resulting object.\n  - `wait_for_instances` (`bool`): Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out. When `null`, the `wait_for_instances` field will be omitted from the resulting object.\n  - `wait_for_instances_status` (`string`): When used with wait_for_instances specifies the status to wait for. When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is set, it will wait for the version target to be reached and any per instance configs to be effective as well as all instances to be stable before returning. When `null`, the `wait_for_instances_status` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone that instances in this group should be created in. When `null`, the `zone` field will be omitted from the resulting object.\n  - `auto_healing_policies` (`list[obj]`): The autohealing policies for this managed instance group. You can specify only one value. When `null`, the `auto_healing_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.auto_healing_policies.new](#fn-auto_healing_policiesnew) constructor.\n  - `instance_lifecycle_policy` (`list[obj]`): The instance lifecycle policy for this managed instance group. When `null`, the `instance_lifecycle_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.instance_lifecycle_policy.new](#fn-instance_lifecycle_policynew) constructor.\n  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.named_port.new](#fn-named_portnew) constructor.\n  - `stateful_disk` (`list[obj]`): Disks created on the instances that will be preserved on instance delete, update, etc. When `null`, the `stateful_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.stateful_disk.new](#fn-stateful_disknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.timeouts.new](#fn-timeoutsnew) constructor.\n  - `update_policy` (`list[obj]`): The update policy for this managed instance group. When `null`, the `update_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.update_policy.new](#fn-update_policynew) constructor.\n  - `version` (`list[obj]`): Application versions managed by this instance group. Each version deals with a specific instance template, allowing canary release scenarios. When `null`, the `version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.version.new](#fn-versionnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    base_instance_name,
    name,
    auto_healing_policies=null,
    description=null,
    instance_lifecycle_policy=null,
    list_managed_instances_results=null,
    named_port=null,
    project=null,
    stateful_disk=null,
    target_pools=null,
    target_size=null,
    timeouts=null,
    update_policy=null,
    version=null,
    wait_for_instances=null,
    wait_for_instances_status=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_group_manager',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_healing_policies=auto_healing_policies,
      base_instance_name=base_instance_name,
      description=description,
      instance_lifecycle_policy=instance_lifecycle_policy,
      list_managed_instances_results=list_managed_instances_results,
      name=name,
      named_port=named_port,
      project=project,
      stateful_disk=stateful_disk,
      target_pools=target_pools,
      target_size=target_size,
      timeouts=timeouts,
      update_policy=update_policy,
      version=version,
      wait_for_instances=wait_for_instances,
      wait_for_instances_status=wait_for_instances_status,
      zone=zone
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_instance_group_manager.newAttrs` constructs a new object with attributes and blocks configured for the `compute_instance_group_manager`\nTerraform resource.\n\nUnlike [google.compute_instance_group_manager.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `base_instance_name` (`string`): The base instance name to use for instances in this group. The value must be a valid RFC1035 name. Supported characters are lowercase letters, numbers, and hyphens (-). Instances are named by appending a hyphen and a random four-character string to the base instance name.\n  - `description` (`string`): An optional textual description of the instance group manager. When `null`, the `description` field will be omitted from the resulting object.\n  - `list_managed_instances_results` (`string`): Pagination behavior of the listManagedInstances API method for this managed instance group. Valid values are: &#34;PAGELESS&#34;, &#34;PAGINATED&#34;. If PAGELESS (default), Pagination is disabled for the group&#39;s listManagedInstances API method. maxResults and pageToken query parameters are ignored and all instances are returned in a single response. If PAGINATED, pagination is enabled, maxResults and pageToken query parameters are respected. When `null`, the `list_managed_instances_results` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the instance group manager. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens.\n  - `project` (`string`): The ID of the project in which the resource belongs. If it is not provided, the provider project is used. When `null`, the `project` field will be omitted from the resulting object.\n  - `target_pools` (`list`): The full URL of all target pools to which new instances in the group are added. Updating the target pools attribute does not affect existing instances. When `null`, the `target_pools` field will be omitted from the resulting object.\n  - `target_size` (`number`): The target number of running instances for this managed instance group. This value should always be explicitly set unless this resource is attached to an autoscaler, in which case it should never be set. Defaults to 0. When `null`, the `target_size` field will be omitted from the resulting object.\n  - `wait_for_instances` (`bool`): Whether to wait for all instances to be created/updated before returning. Note that if this is set to true and the operation does not succeed, Terraform will continue trying until it times out. When `null`, the `wait_for_instances` field will be omitted from the resulting object.\n  - `wait_for_instances_status` (`string`): When used with wait_for_instances specifies the status to wait for. When STABLE is specified this resource will wait until the instances are stable before returning. When UPDATED is set, it will wait for the version target to be reached and any per instance configs to be effective as well as all instances to be stable before returning. When `null`, the `wait_for_instances_status` field will be omitted from the resulting object.\n  - `zone` (`string`): The zone that instances in this group should be created in. When `null`, the `zone` field will be omitted from the resulting object.\n  - `auto_healing_policies` (`list[obj]`): The autohealing policies for this managed instance group. You can specify only one value. When `null`, the `auto_healing_policies` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.auto_healing_policies.new](#fn-auto_healing_policiesnew) constructor.\n  - `instance_lifecycle_policy` (`list[obj]`): The instance lifecycle policy for this managed instance group. When `null`, the `instance_lifecycle_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.instance_lifecycle_policy.new](#fn-instance_lifecycle_policynew) constructor.\n  - `named_port` (`list[obj]`): The named port configuration. When `null`, the `named_port` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.named_port.new](#fn-named_portnew) constructor.\n  - `stateful_disk` (`list[obj]`): Disks created on the instances that will be preserved on instance delete, update, etc. When `null`, the `stateful_disk` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.stateful_disk.new](#fn-stateful_disknew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.timeouts.new](#fn-timeoutsnew) constructor.\n  - `update_policy` (`list[obj]`): The update policy for this managed instance group. When `null`, the `update_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.update_policy.new](#fn-update_policynew) constructor.\n  - `version` (`list[obj]`): Application versions managed by this instance group. Each version deals with a specific instance template, allowing canary release scenarios. When `null`, the `version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.version.new](#fn-versionnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_instance_group_manager` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    base_instance_name,
    name,
    auto_healing_policies=null,
    description=null,
    instance_lifecycle_policy=null,
    list_managed_instances_results=null,
    named_port=null,
    project=null,
    stateful_disk=null,
    target_pools=null,
    target_size=null,
    timeouts=null,
    update_policy=null,
    version=null,
    wait_for_instances=null,
    wait_for_instances_status=null,
    zone=null
  ):: std.prune(a={
    auto_healing_policies: auto_healing_policies,
    base_instance_name: base_instance_name,
    description: description,
    instance_lifecycle_policy: instance_lifecycle_policy,
    list_managed_instances_results: list_managed_instances_results,
    name: name,
    named_port: named_port,
    project: project,
    stateful_disk: stateful_disk,
    target_pools: target_pools,
    target_size: target_size,
    timeouts: timeouts,
    update_policy: update_policy,
    version: version,
    wait_for_instances: wait_for_instances,
    wait_for_instances_status: wait_for_instances_status,
    zone: zone,
  }),
  stateful_disk:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.stateful_disk.new` constructs a new object with attributes and blocks configured for the `stateful_disk`\nTerraform sub block.\n\n\n\n**Args**:\n  - `delete_rule` (`string`): A value that prescribes what should happen to the stateful disk when the VM instance is deleted. The available options are NEVER and ON_PERMANENT_INSTANCE_DELETION. NEVER - detach the disk when the VM is deleted, but do not delete the disk. ON_PERMANENT_INSTANCE_DELETION will delete the stateful disk when the VM is permanently deleted from the instance group. The default is NEVER. When `null`, the `delete_rule` field will be omitted from the resulting object.\n  - `device_name` (`string`): The device name of the disk to be attached.\n\n**Returns**:\n  - An attribute object that represents the `stateful_disk` sub block.\n', args=[]),
    new(
      device_name,
      delete_rule=null
    ):: std.prune(a={
      delete_rule: delete_rule,
      device_name: device_name,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  update_policy:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.update_policy.new` constructs a new object with attributes and blocks configured for the `update_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_surge_fixed` (`number`): The maximum number of instances that can be created above the specified targetSize during the update process. Conflicts with max_surge_percent. If neither is set, defaults to 1 When `null`, the `max_surge_fixed` field will be omitted from the resulting object.\n  - `max_surge_percent` (`number`): The maximum number of instances(calculated as percentage) that can be created above the specified targetSize during the update process. Conflicts with max_surge_fixed. When `null`, the `max_surge_percent` field will be omitted from the resulting object.\n  - `max_unavailable_fixed` (`number`): The maximum number of instances that can be unavailable during the update process. Conflicts with max_unavailable_percent. If neither is set, defaults to 1. When `null`, the `max_unavailable_fixed` field will be omitted from the resulting object.\n  - `max_unavailable_percent` (`number`): The maximum number of instances(calculated as percentage) that can be unavailable during the update process. Conflicts with max_unavailable_fixed. When `null`, the `max_unavailable_percent` field will be omitted from the resulting object.\n  - `minimal_action` (`string`): Minimal action to be taken on an instance. You can specify either REFRESH to update without stopping instances, RESTART to restart existing instances or REPLACE to delete and create new instances from the target template. If you specify a REFRESH, the Updater will attempt to perform that action only. However, if the Updater determines that the minimal action you specify is not enough to perform the update, it might perform a more disruptive action.\n  - `most_disruptive_allowed_action` (`string`): Most disruptive action that is allowed to be taken on an instance. You can specify either NONE to forbid any actions, REFRESH to allow actions that do not need instance restart, RESTART to allow actions that can be applied without instance replacing or REPLACE to allow all possible actions. If the Updater determines that the minimal update action needed is more disruptive than most disruptive allowed action you specify it will not perform the update at all. When `null`, the `most_disruptive_allowed_action` field will be omitted from the resulting object.\n  - `replacement_method` (`string`): The instance replacement method for managed instance groups. Valid values are: &#34;RECREATE&#34;, &#34;SUBSTITUTE&#34;. If SUBSTITUTE (default), the group replaces VM instances with new instances that have randomly generated names. If RECREATE, instance names are preserved.  You must also set max_unavailable_fixed or max_unavailable_percent to be greater than 0. When `null`, the `replacement_method` field will be omitted from the resulting object.\n  - `type` (`string`): The type of update process. You can specify either PROACTIVE so that the instance group manager proactively executes actions in order to bring instances to their target versions or OPPORTUNISTIC so that no action is proactively executed but the update will be performed as part of other actions (for example, resizes or recreateInstances calls).\n\n**Returns**:\n  - An attribute object that represents the `update_policy` sub block.\n', args=[]),
    new(
      minimal_action,
      type,
      max_surge_fixed=null,
      max_surge_percent=null,
      max_unavailable_fixed=null,
      max_unavailable_percent=null,
      most_disruptive_allowed_action=null,
      replacement_method=null
    ):: std.prune(a={
      max_surge_fixed: max_surge_fixed,
      max_surge_percent: max_surge_percent,
      max_unavailable_fixed: max_unavailable_fixed,
      max_unavailable_percent: max_unavailable_percent,
      minimal_action: minimal_action,
      most_disruptive_allowed_action: most_disruptive_allowed_action,
      replacement_method: replacement_method,
      type: type,
    }),
  },
  version:: {
    '#new':: d.fn(help='\n`google.compute_instance_group_manager.version.new` constructs a new object with attributes and blocks configured for the `version`\nTerraform sub block.\n\n\n\n**Args**:\n  - `instance_template` (`string`): The full URL to an instance template from which all new instances of this version will be created.\n  - `name` (`string`): Version name. When `null`, the `name` field will be omitted from the resulting object.\n  - `target_size` (`list[obj]`): The number of instances calculated as a fixed number or a percentage depending on the settings. When `null`, the `target_size` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_instance_group_manager.version.target_size.new](#fn-versiontarget_sizenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `version` sub block.\n', args=[]),
    new(
      instance_template,
      name=null,
      target_size=null
    ):: std.prune(a={
      instance_template: instance_template,
      name: name,
      target_size: target_size,
    }),
    target_size:: {
      '#new':: d.fn(help='\n`google.compute_instance_group_manager.version.target_size.new` constructs a new object with attributes and blocks configured for the `target_size`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed` (`number`): The number of instances which are managed for this version. Conflicts with percent. When `null`, the `fixed` field will be omitted from the resulting object.\n  - `percent` (`number`): The number of instances (calculated as percentage) which are managed for this version. Conflicts with fixed. Note that when using percent, rounding will be in favor of explicitly set target_size values; a managed instance group with 2 instances and 2 versions, one of which has a target_size.percent of 60 will create 2 instances of that version. When `null`, the `percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `target_size` sub block.\n', args=[]),
      new(
        fixed=null,
        percent=null
      ):: std.prune(a={
        fixed: fixed,
        percent: percent,
      }),
    },
  },
  '#withAutoHealingPolicies':: d.fn(help='`google.list[obj].withAutoHealingPolicies` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the auto_healing_policies field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoHealingPoliciesMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `auto_healing_policies` field.\n', args=[]),
  withAutoHealingPolicies(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          auto_healing_policies: value,
        },
      },
    },
  },
  '#withAutoHealingPoliciesMixin':: d.fn(help='`google.list[obj].withAutoHealingPoliciesMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the auto_healing_policies field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoHealingPolicies](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `auto_healing_policies` field.\n', args=[]),
  withAutoHealingPoliciesMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          auto_healing_policies+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withBaseInstanceName':: d.fn(help='`google.string.withBaseInstanceName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the base_instance_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `base_instance_name` field.\n', args=[]),
  withBaseInstanceName(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          base_instance_name: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withInstanceLifecyclePolicy':: d.fn(help='`google.list[obj].withInstanceLifecyclePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the instance_lifecycle_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInstanceLifecyclePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `instance_lifecycle_policy` field.\n', args=[]),
  withInstanceLifecyclePolicy(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          instance_lifecycle_policy: value,
        },
      },
    },
  },
  '#withInstanceLifecyclePolicyMixin':: d.fn(help='`google.list[obj].withInstanceLifecyclePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the instance_lifecycle_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInstanceLifecyclePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `instance_lifecycle_policy` field.\n', args=[]),
  withInstanceLifecyclePolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          instance_lifecycle_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withListManagedInstancesResults':: d.fn(help='`google.string.withListManagedInstancesResults` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the list_managed_instances_results field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `list_managed_instances_results` field.\n', args=[]),
  withListManagedInstancesResults(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          list_managed_instances_results: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNamedPort':: d.fn(help='`google.list[obj].withNamedPort` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the named_port field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withNamedPortMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `named_port` field.\n', args=[]),
  withNamedPort(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          named_port: value,
        },
      },
    },
  },
  '#withNamedPortMixin':: d.fn(help='`google.list[obj].withNamedPortMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the named_port field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withNamedPort](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `named_port` field.\n', args=[]),
  withNamedPortMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          named_port+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withStatefulDisk':: d.fn(help='`google.list[obj].withStatefulDisk` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stateful_disk field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withStatefulDiskMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stateful_disk` field.\n', args=[]),
  withStatefulDisk(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          stateful_disk: value,
        },
      },
    },
  },
  '#withStatefulDiskMixin':: d.fn(help='`google.list[obj].withStatefulDiskMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the stateful_disk field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withStatefulDisk](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `stateful_disk` field.\n', args=[]),
  withStatefulDiskMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          stateful_disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTargetPools':: d.fn(help='`google.list.withTargetPools` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the target_pools field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `target_pools` field.\n', args=[]),
  withTargetPools(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          target_pools: value,
        },
      },
    },
  },
  '#withTargetSize':: d.fn(help='`google.number.withTargetSize` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the target_size field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `target_size` field.\n', args=[]),
  withTargetSize(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          target_size: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withUpdatePolicy':: d.fn(help='`google.list[obj].withUpdatePolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the update_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withUpdatePolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `update_policy` field.\n', args=[]),
  withUpdatePolicy(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          update_policy: value,
        },
      },
    },
  },
  '#withUpdatePolicyMixin':: d.fn(help='`google.list[obj].withUpdatePolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the update_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withUpdatePolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `update_policy` field.\n', args=[]),
  withUpdatePolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          update_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withVersion':: d.fn(help='`google.list[obj].withVersion` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the version field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withVersionMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `version` field.\n', args=[]),
  withVersion(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
  '#withVersionMixin':: d.fn(help='`google.list[obj].withVersionMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the version field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withVersion](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `version` field.\n', args=[]),
  withVersionMixin(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          version+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withWaitForInstances':: d.fn(help='`google.bool.withWaitForInstances` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the wait_for_instances field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `wait_for_instances` field.\n', args=[]),
  withWaitForInstances(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          wait_for_instances: value,
        },
      },
    },
  },
  '#withWaitForInstancesStatus':: d.fn(help='`google.string.withWaitForInstancesStatus` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the wait_for_instances_status field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `wait_for_instances_status` field.\n', args=[]),
  withWaitForInstancesStatus(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          wait_for_instances_status: value,
        },
      },
    },
  },
  '#withZone':: d.fn(help='`google.string.withZone` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the zone field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `zone` field.\n', args=[]),
  withZone(resourceLabel, value): {
    resource+: {
      google_compute_instance_group_manager+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

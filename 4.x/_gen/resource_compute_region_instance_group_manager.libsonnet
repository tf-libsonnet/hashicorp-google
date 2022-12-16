local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  auto_healing_policies:: {
    new(
      health_check,
      initial_delay_sec
    ):: std.prune(a={
      health_check: health_check,
      initial_delay_sec: initial_delay_sec,
    }),
  },
  named_port:: {
    new(
      name,
      port
    ):: std.prune(a={
      name: name,
      port: port,
    }),
  },
  new(
    resourceLabel,
    base_instance_name,
    name,
    auto_healing_policies=null,
    description=null,
    distribution_policy_target_shape=null,
    distribution_policy_zones=null,
    list_managed_instances_results=null,
    named_port=null,
    project=null,
    region=null,
    stateful_disk=null,
    target_pools=null,
    target_size=null,
    timeouts=null,
    update_policy=null,
    version=null,
    wait_for_instances=null,
    wait_for_instances_status=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_instance_group_manager',
    label=resourceLabel,
    attrs=self.newAttrs(
      auto_healing_policies=auto_healing_policies,
      base_instance_name=base_instance_name,
      description=description,
      distribution_policy_target_shape=distribution_policy_target_shape,
      distribution_policy_zones=distribution_policy_zones,
      list_managed_instances_results=list_managed_instances_results,
      name=name,
      named_port=named_port,
      project=project,
      region=region,
      stateful_disk=stateful_disk,
      target_pools=target_pools,
      target_size=target_size,
      timeouts=timeouts,
      update_policy=update_policy,
      version=version,
      wait_for_instances=wait_for_instances,
      wait_for_instances_status=wait_for_instances_status
    ),
    _meta=_meta
  ),
  newAttrs(
    base_instance_name,
    name,
    auto_healing_policies=null,
    description=null,
    distribution_policy_target_shape=null,
    distribution_policy_zones=null,
    list_managed_instances_results=null,
    named_port=null,
    project=null,
    region=null,
    stateful_disk=null,
    target_pools=null,
    target_size=null,
    timeouts=null,
    update_policy=null,
    version=null,
    wait_for_instances=null,
    wait_for_instances_status=null
  ):: std.prune(a={
    auto_healing_policies: auto_healing_policies,
    base_instance_name: base_instance_name,
    description: description,
    distribution_policy_target_shape: distribution_policy_target_shape,
    distribution_policy_zones: distribution_policy_zones,
    list_managed_instances_results: list_managed_instances_results,
    name: name,
    named_port: named_port,
    project: project,
    region: region,
    stateful_disk: stateful_disk,
    target_pools: target_pools,
    target_size: target_size,
    timeouts: timeouts,
    update_policy: update_policy,
    version: version,
    wait_for_instances: wait_for_instances,
    wait_for_instances_status: wait_for_instances_status,
  }),
  stateful_disk:: {
    new(
      device_name,
      delete_rule=null
    ):: std.prune(a={
      delete_rule: delete_rule,
      device_name: device_name,
    }),
  },
  timeouts:: {
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
    new(
      minimal_action,
      type,
      instance_redistribution_type=null,
      max_surge_fixed=null,
      max_surge_percent=null,
      max_unavailable_fixed=null,
      max_unavailable_percent=null,
      most_disruptive_allowed_action=null,
      replacement_method=null
    ):: std.prune(a={
      instance_redistribution_type: instance_redistribution_type,
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
      new(
        fixed=null,
        percent=null
      ):: std.prune(a={
        fixed: fixed,
        percent: percent,
      }),
    },
  },
  withAutoHealingPolicies(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          auto_healing_policies: value,
        },
      },
    },
  },
  withAutoHealingPoliciesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          auto_healing_policies+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withBaseInstanceName(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          base_instance_name: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDistributionPolicyTargetShape(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          distribution_policy_target_shape: value,
        },
      },
    },
  },
  withDistributionPolicyZones(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          distribution_policy_zones: value,
        },
      },
    },
  },
  withListManagedInstancesResults(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          list_managed_instances_results: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNamedPort(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          named_port: value,
        },
      },
    },
  },
  withNamedPortMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          named_port+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withStatefulDisk(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          stateful_disk: value,
        },
      },
    },
  },
  withStatefulDiskMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          stateful_disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTargetPools(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          target_pools: value,
        },
      },
    },
  },
  withTargetSize(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          target_size: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUpdatePolicy(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          update_policy: value,
        },
      },
    },
  },
  withUpdatePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          update_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
  withVersionMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          version+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withWaitForInstances(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          wait_for_instances: value,
        },
      },
    },
  },
  withWaitForInstancesStatus(resourceLabel, value):: {
    resource+: {
      google_compute_region_instance_group_manager+: {
        [resourceLabel]+: {
          wait_for_instances_status: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    region_instance_group_manager,
    minimal_action=null,
    most_disruptive_allowed_action=null,
    preserved_state=null,
    project=null,
    region=null,
    remove_instance_state_on_destroy=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_per_instance_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      minimal_action=minimal_action,
      most_disruptive_allowed_action=most_disruptive_allowed_action,
      name=name,
      preserved_state=preserved_state,
      project=project,
      region=region,
      region_instance_group_manager=region_instance_group_manager,
      remove_instance_state_on_destroy=remove_instance_state_on_destroy,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    region_instance_group_manager,
    minimal_action=null,
    most_disruptive_allowed_action=null,
    preserved_state=null,
    project=null,
    region=null,
    remove_instance_state_on_destroy=null,
    timeouts=null
  ):: std.prune(a={
    minimal_action: minimal_action,
    most_disruptive_allowed_action: most_disruptive_allowed_action,
    name: name,
    preserved_state: preserved_state,
    project: project,
    region: region,
    region_instance_group_manager: region_instance_group_manager,
    remove_instance_state_on_destroy: remove_instance_state_on_destroy,
    timeouts: timeouts,
  }),
  preserved_state:: {
    disk:: {
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
    new(
      disk=null,
      metadata=null
    ):: std.prune(a={
      disk: disk,
      metadata: metadata,
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
  withMinimalAction(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          minimal_action: value,
        },
      },
    },
  },
  withMostDisruptiveAllowedAction(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          most_disruptive_allowed_action: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPreservedState(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          preserved_state: value,
        },
      },
    },
  },
  withPreservedStateMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          preserved_state+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRegionInstanceGroupManager(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          region_instance_group_manager: value,
        },
      },
    },
  },
  withRemoveInstanceStateOnDestroy(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          remove_instance_state_on_destroy: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_per_instance_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

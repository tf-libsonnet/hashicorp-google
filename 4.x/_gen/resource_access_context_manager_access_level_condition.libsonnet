local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  device_policy:: {
    new(
      allowed_device_management_levels=null,
      allowed_encryption_statuses=null,
      os_constraints=null,
      require_admin_approval=null,
      require_corp_owned=null,
      require_screen_lock=null
    ):: std.prune(a={
      allowed_device_management_levels: allowed_device_management_levels,
      allowed_encryption_statuses: allowed_encryption_statuses,
      os_constraints: os_constraints,
      require_admin_approval: require_admin_approval,
      require_corp_owned: require_corp_owned,
      require_screen_lock: require_screen_lock,
    }),
    os_constraints:: {
      new(
        os_type,
        minimum_version=null
      ):: std.prune(a={
        minimum_version: minimum_version,
        os_type: os_type,
      }),
    },
  },
  new(
    resourceLabel,
    access_level,
    device_policy=null,
    ip_subnetworks=null,
    members=null,
    negate=null,
    regions=null,
    required_access_levels=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_level_condition',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_level=access_level,
      device_policy=device_policy,
      ip_subnetworks=ip_subnetworks,
      members=members,
      negate=negate,
      regions=regions,
      required_access_levels=required_access_levels,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    access_level,
    device_policy=null,
    ip_subnetworks=null,
    members=null,
    negate=null,
    regions=null,
    required_access_levels=null,
    timeouts=null
  ):: std.prune(a={
    access_level: access_level,
    device_policy: device_policy,
    ip_subnetworks: ip_subnetworks,
    members: members,
    negate: negate,
    regions: regions,
    required_access_levels: required_access_levels,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withAccessLevel(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          access_level: value,
        },
      },
    },
  },
  withDevicePolicy(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          device_policy: value,
        },
      },
    },
  },
  withDevicePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          device_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withIpSubnetworks(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          ip_subnetworks: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withNegate(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          negate: value,
        },
      },
    },
  },
  withRegions(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          regions: value,
        },
      },
    },
  },
  withRequiredAccessLevels(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          required_access_levels: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level_condition+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

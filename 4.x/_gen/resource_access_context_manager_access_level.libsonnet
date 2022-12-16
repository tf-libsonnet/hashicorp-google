local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  basic:: {
    conditions:: {
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
            minimum_version=null,
            require_verified_chrome_os=null
          ):: std.prune(a={
            minimum_version: minimum_version,
            os_type: os_type,
            require_verified_chrome_os: require_verified_chrome_os,
          }),
        },
      },
      new(
        device_policy=null,
        ip_subnetworks=null,
        members=null,
        negate=null,
        regions=null,
        required_access_levels=null
      ):: std.prune(a={
        device_policy: device_policy,
        ip_subnetworks: ip_subnetworks,
        members: members,
        negate: negate,
        regions: regions,
        required_access_levels: required_access_levels,
      }),
    },
    new(
      combining_function=null,
      conditions=null
    ):: std.prune(a={
      combining_function: combining_function,
      conditions: conditions,
    }),
  },
  custom:: {
    expr:: {
      new(
        expression,
        description=null,
        location=null,
        title=null
      ):: std.prune(a={
        description: description,
        expression: expression,
        location: location,
        title: title,
      }),
    },
    new(
      expr=null
    ):: std.prune(a={
      expr: expr,
    }),
  },
  new(
    resourceLabel,
    name,
    parent,
    title,
    basic=null,
    custom=null,
    description=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_level',
    label=resourceLabel,
    attrs=self.newAttrs(
      basic=basic,
      custom=custom,
      description=description,
      name=name,
      parent=parent,
      timeouts=timeouts,
      title=title
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    parent,
    title,
    basic=null,
    custom=null,
    description=null,
    timeouts=null
  ):: std.prune(a={
    basic: basic,
    custom: custom,
    description: description,
    name: name,
    parent: parent,
    timeouts: timeouts,
    title: title,
  }),
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
  withBasic(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          basic: value,
        },
      },
    },
  },
  withBasicMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          basic+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withCustom(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          custom: value,
        },
      },
    },
  },
  withCustomMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          custom+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withTitle(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_level+: {
        [resourceLabel]+: {
          title: value,
        },
      },
    },
  },
}

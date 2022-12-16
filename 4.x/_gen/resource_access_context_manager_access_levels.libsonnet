local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  access_levels:: {
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
              minimum_version=null
            ):: std.prune(a={
              minimum_version: minimum_version,
              os_type: os_type,
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
      name,
      title,
      basic=null,
      custom=null,
      description=null
    ):: std.prune(a={
      basic: basic,
      custom: custom,
      description: description,
      name: name,
      title: title,
    }),
  },
  new(
    resourceLabel,
    parent,
    access_levels=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_access_levels',
    label=resourceLabel,
    attrs=self.newAttrs(access_levels=access_levels, parent=parent, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    parent,
    access_levels=null,
    timeouts=null
  ):: std.prune(a={
    access_levels: access_levels,
    parent: parent,
    timeouts: timeouts,
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
  withAccessLevels(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          access_levels: value,
        },
      },
    },
  },
  withAccessLevelsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          access_levels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_access_levels+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

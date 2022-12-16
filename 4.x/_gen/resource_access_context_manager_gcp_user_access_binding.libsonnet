local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    access_levels,
    group_key,
    organization_id,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_access_context_manager_gcp_user_access_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_levels=access_levels,
      group_key=group_key,
      organization_id=organization_id,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    access_levels,
    group_key,
    organization_id,
    timeouts=null
  ):: std.prune(a={
    access_levels: access_levels,
    group_key: group_key,
    organization_id: organization_id,
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
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          access_levels: value,
        },
      },
    },
  },
  withGroupKey(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          group_key: value,
        },
      },
    },
  },
  withOrganizationId(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          organization_id: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_access_context_manager_gcp_user_access_binding+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

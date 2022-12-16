local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    group,
    preferred_member_key=null,
    roles=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_identity_group_membership',
    label=resourceLabel,
    attrs=self.newAttrs(
      group=group,
      preferred_member_key=preferred_member_key,
      roles=roles,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    group,
    preferred_member_key=null,
    roles=null,
    timeouts=null
  ):: std.prune(a={
    group: group,
    preferred_member_key: preferred_member_key,
    roles: roles,
    timeouts: timeouts,
  }),
  preferred_member_key:: {
    new(
      namespace=null
    ):: std.prune(a={
      namespace: namespace,
    }),
  },
  roles:: {
    new(
      name
    ):: std.prune(a={
      name: name,
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
  withGroup(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          group: value,
        },
      },
    },
  },
  withPreferredMemberKey(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          preferred_member_key: value,
        },
      },
    },
  },
  withPreferredMemberKeyMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          preferred_member_key+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withRoles(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          roles: value,
        },
      },
    },
  },
  withRolesMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          roles+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_identity_group_membership+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

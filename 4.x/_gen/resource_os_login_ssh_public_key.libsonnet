local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    key,
    user,
    expiration_time_usec=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_os_login_ssh_public_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      expiration_time_usec=expiration_time_usec,
      key=key,
      project=project,
      timeouts=timeouts,
      user=user
    ),
    _meta=_meta
  ),
  newAttrs(
    key,
    user,
    expiration_time_usec=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    expiration_time_usec: expiration_time_usec,
    key: key,
    project: project,
    timeouts: timeouts,
    user: user,
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
  withExpirationTimeUsec(resourceLabel, value):: {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          expiration_time_usec: value,
        },
      },
    },
  },
  withKey(resourceLabel, value):: {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          key: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withUser(resourceLabel, value):: {
    resource+: {
      google_os_login_ssh_public_key+: {
        [resourceLabel]+: {
          user: value,
        },
      },
    },
  },
}

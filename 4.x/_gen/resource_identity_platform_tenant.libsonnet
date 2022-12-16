local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    display_name,
    allow_password_signup=null,
    disable_auth=null,
    enable_email_link_signin=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_tenant',
    label=resourceLabel,
    attrs=self.newAttrs(
      allow_password_signup=allow_password_signup,
      disable_auth=disable_auth,
      display_name=display_name,
      enable_email_link_signin=enable_email_link_signin,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    allow_password_signup=null,
    disable_auth=null,
    enable_email_link_signin=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    allow_password_signup: allow_password_signup,
    disable_auth: disable_auth,
    display_name: display_name,
    enable_email_link_signin: enable_email_link_signin,
    project: project,
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
  withAllowPasswordSignup(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          allow_password_signup: value,
        },
      },
    },
  },
  withDisableAuth(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          disable_auth: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableEmailLinkSignin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          enable_email_link_signin: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

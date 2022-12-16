local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    project=null,
    sign_in=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_project_default_config',
    label=resourceLabel,
    attrs=self.newAttrs(project=project, sign_in=sign_in, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    sign_in=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    sign_in: sign_in,
    timeouts: timeouts,
  }),
  sign_in:: {
    anonymous:: {
      new(
        enabled
      ):: std.prune(a={
        enabled: enabled,
      }),
    },
    email:: {
      new(
        enabled=null,
        password_required=null
      ):: std.prune(a={
        enabled: enabled,
        password_required: password_required,
      }),
    },
    new(
      allow_duplicate_emails=null,
      anonymous=null,
      email=null,
      phone_number=null
    ):: std.prune(a={
      allow_duplicate_emails: allow_duplicate_emails,
      anonymous: anonymous,
      email: email,
      phone_number: phone_number,
    }),
    phone_number:: {
      new(
        enabled=null,
        test_phone_numbers=null
      ):: std.prune(a={
        enabled: enabled,
        test_phone_numbers: test_phone_numbers,
      }),
    },
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
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSignIn(resourceLabel, value):: {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          sign_in: value,
        },
      },
    },
  },
  withSignInMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          sign_in+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_project_default_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

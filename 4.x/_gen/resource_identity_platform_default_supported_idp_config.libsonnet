local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    client_id,
    client_secret,
    idp_id,
    enabled=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_default_supported_idp_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      client_id=client_id,
      client_secret=client_secret,
      enabled=enabled,
      idp_id=idp_id,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    client_id,
    client_secret,
    idp_id,
    enabled=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
    enabled: enabled,
    idp_id: idp_id,
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
  withClientId(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          client_id: value,
        },
      },
    },
  },
  withClientSecret(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          client_secret: value,
        },
      },
    },
  },
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withIdpId(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          idp_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_default_supported_idp_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

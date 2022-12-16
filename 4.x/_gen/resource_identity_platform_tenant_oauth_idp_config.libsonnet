local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    client_id,
    display_name,
    issuer,
    name,
    tenant,
    client_secret=null,
    enabled=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_tenant_oauth_idp_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      client_id=client_id,
      client_secret=client_secret,
      display_name=display_name,
      enabled=enabled,
      issuer=issuer,
      name=name,
      project=project,
      tenant=tenant,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    client_id,
    display_name,
    issuer,
    name,
    tenant,
    client_secret=null,
    enabled=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    client_id: client_id,
    client_secret: client_secret,
    display_name: display_name,
    enabled: enabled,
    issuer: issuer,
    name: name,
    project: project,
    tenant: tenant,
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
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          client_id: value,
        },
      },
    },
  },
  withClientSecret(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          client_secret: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withIssuer(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          issuer: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTenant(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          tenant: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_tenant_oauth_idp_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

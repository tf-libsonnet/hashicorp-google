local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  idp_config:: {
    idp_certificates:: {
      new(
        x509_certificate=null
      ):: std.prune(a={
        x509_certificate: x509_certificate,
      }),
    },
    new(
      idp_entity_id,
      sso_url,
      idp_certificates=null,
      sign_request=null
    ):: std.prune(a={
      idp_certificates: idp_certificates,
      idp_entity_id: idp_entity_id,
      sign_request: sign_request,
      sso_url: sso_url,
    }),
  },
  new(
    resourceLabel,
    display_name,
    name,
    enabled=null,
    idp_config=null,
    project=null,
    sp_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_identity_platform_inbound_saml_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      enabled=enabled,
      idp_config=idp_config,
      name=name,
      project=project,
      sp_config=sp_config,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    name,
    enabled=null,
    idp_config=null,
    project=null,
    sp_config=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    enabled: enabled,
    idp_config: idp_config,
    name: name,
    project: project,
    sp_config: sp_config,
    timeouts: timeouts,
  }),
  sp_config:: {
    new(
      callback_uri=null,
      sp_entity_id=null
    ):: std.prune(a={
      callback_uri: callback_uri,
      sp_entity_id: sp_entity_id,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withIdpConfig(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          idp_config: value,
        },
      },
    },
  },
  withIdpConfigMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          idp_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSpConfig(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          sp_config: value,
        },
      },
    },
  },
  withSpConfigMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          sp_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_identity_platform_inbound_saml_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

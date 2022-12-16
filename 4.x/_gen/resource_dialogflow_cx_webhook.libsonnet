local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  generic_web_service:: {
    new(
      uri,
      allowed_ca_certs=null,
      request_headers=null
    ):: std.prune(a={
      allowed_ca_certs: allowed_ca_certs,
      request_headers: request_headers,
      uri: uri,
    }),
  },
  new(
    resourceLabel,
    display_name,
    disabled=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    generic_web_service=null,
    parent=null,
    security_settings=null,
    service_directory=null,
    timeout=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_webhook',
    label=resourceLabel,
    attrs=self.newAttrs(
      disabled=disabled,
      display_name=display_name,
      enable_spell_correction=enable_spell_correction,
      enable_stackdriver_logging=enable_stackdriver_logging,
      generic_web_service=generic_web_service,
      parent=parent,
      security_settings=security_settings,
      service_directory=service_directory,
      timeout=timeout,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    disabled=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    generic_web_service=null,
    parent=null,
    security_settings=null,
    service_directory=null,
    timeout=null,
    timeouts=null
  ):: std.prune(a={
    disabled: disabled,
    display_name: display_name,
    enable_spell_correction: enable_spell_correction,
    enable_stackdriver_logging: enable_stackdriver_logging,
    generic_web_service: generic_web_service,
    parent: parent,
    security_settings: security_settings,
    service_directory: service_directory,
    timeout: timeout,
    timeouts: timeouts,
  }),
  service_directory:: {
    generic_web_service:: {
      new(
        uri,
        allowed_ca_certs=null,
        request_headers=null
      ):: std.prune(a={
        allowed_ca_certs: allowed_ca_certs,
        request_headers: request_headers,
        uri: uri,
      }),
    },
    new(
      service,
      generic_web_service=null
    ):: std.prune(a={
      generic_web_service: generic_web_service,
      service: service,
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
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableSpellCorrection(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          enable_spell_correction: value,
        },
      },
    },
  },
  withEnableStackdriverLogging(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          enable_stackdriver_logging: value,
        },
      },
    },
  },
  withGenericWebService(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          generic_web_service: value,
        },
      },
    },
  },
  withGenericWebServiceMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          generic_web_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withSecuritySettings(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          security_settings: value,
        },
      },
    },
  },
  withServiceDirectory(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          service_directory: value,
        },
      },
    },
  },
  withServiceDirectoryMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          service_directory+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeout(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          timeout: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_webhook+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    default_language_code,
    display_name,
    location,
    time_zone,
    avatar_uri=null,
    description=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    project=null,
    security_settings=null,
    speech_to_text_settings=null,
    supported_language_codes=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_cx_agent',
    label=resourceLabel,
    attrs=self.newAttrs(
      avatar_uri=avatar_uri,
      default_language_code=default_language_code,
      description=description,
      display_name=display_name,
      enable_spell_correction=enable_spell_correction,
      enable_stackdriver_logging=enable_stackdriver_logging,
      location=location,
      project=project,
      security_settings=security_settings,
      speech_to_text_settings=speech_to_text_settings,
      supported_language_codes=supported_language_codes,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    default_language_code,
    display_name,
    location,
    time_zone,
    avatar_uri=null,
    description=null,
    enable_spell_correction=null,
    enable_stackdriver_logging=null,
    project=null,
    security_settings=null,
    speech_to_text_settings=null,
    supported_language_codes=null,
    timeouts=null
  ):: std.prune(a={
    avatar_uri: avatar_uri,
    default_language_code: default_language_code,
    description: description,
    display_name: display_name,
    enable_spell_correction: enable_spell_correction,
    enable_stackdriver_logging: enable_stackdriver_logging,
    location: location,
    project: project,
    security_settings: security_settings,
    speech_to_text_settings: speech_to_text_settings,
    supported_language_codes: supported_language_codes,
    time_zone: time_zone,
    timeouts: timeouts,
  }),
  speech_to_text_settings:: {
    new(
      enable_speech_adaptation=null
    ):: std.prune(a={
      enable_speech_adaptation: enable_speech_adaptation,
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
  withAvatarUri(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          avatar_uri: value,
        },
      },
    },
  },
  withDefaultLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          default_language_code: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableSpellCorrection(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          enable_spell_correction: value,
        },
      },
    },
  },
  withEnableStackdriverLogging(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          enable_stackdriver_logging: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSecuritySettings(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          security_settings: value,
        },
      },
    },
  },
  withSpeechToTextSettings(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          speech_to_text_settings: value,
        },
      },
    },
  },
  withSpeechToTextSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          speech_to_text_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSupportedLanguageCodes(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          supported_language_codes: value,
        },
      },
    },
  },
  withTimeZone(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_cx_agent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

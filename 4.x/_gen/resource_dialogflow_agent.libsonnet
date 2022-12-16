local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    default_language_code,
    display_name,
    time_zone,
    api_version=null,
    avatar_uri=null,
    classification_threshold=null,
    description=null,
    enable_logging=null,
    match_mode=null,
    project=null,
    supported_language_codes=null,
    tier=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_agent',
    label=resourceLabel,
    attrs=self.newAttrs(
      api_version=api_version,
      avatar_uri=avatar_uri,
      classification_threshold=classification_threshold,
      default_language_code=default_language_code,
      description=description,
      display_name=display_name,
      enable_logging=enable_logging,
      match_mode=match_mode,
      project=project,
      supported_language_codes=supported_language_codes,
      tier=tier,
      time_zone=time_zone,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    default_language_code,
    display_name,
    time_zone,
    api_version=null,
    avatar_uri=null,
    classification_threshold=null,
    description=null,
    enable_logging=null,
    match_mode=null,
    project=null,
    supported_language_codes=null,
    tier=null,
    timeouts=null
  ):: std.prune(a={
    api_version: api_version,
    avatar_uri: avatar_uri,
    classification_threshold: classification_threshold,
    default_language_code: default_language_code,
    description: description,
    display_name: display_name,
    enable_logging: enable_logging,
    match_mode: match_mode,
    project: project,
    supported_language_codes: supported_language_codes,
    tier: tier,
    time_zone: time_zone,
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
  withApiVersion(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          api_version: value,
        },
      },
    },
  },
  withAvatarUri(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          avatar_uri: value,
        },
      },
    },
  },
  withClassificationThreshold(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          classification_threshold: value,
        },
      },
    },
  },
  withDefaultLanguageCode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          default_language_code: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnableLogging(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          enable_logging: value,
        },
      },
    },
  },
  withMatchMode(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          match_mode: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSupportedLanguageCodes(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          supported_language_codes: value,
        },
      },
    },
  },
  withTier(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          tier: value,
        },
      },
    },
  },
  withTimeZone(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          time_zone: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_agent+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

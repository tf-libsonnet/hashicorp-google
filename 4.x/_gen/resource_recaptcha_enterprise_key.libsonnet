local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  android_settings:: {
    new(
      allow_all_package_names=null,
      allowed_package_names=null
    ):: std.prune(a={
      allow_all_package_names: allow_all_package_names,
      allowed_package_names: allowed_package_names,
    }),
  },
  ios_settings:: {
    new(
      allow_all_bundle_ids=null,
      allowed_bundle_ids=null
    ):: std.prune(a={
      allow_all_bundle_ids: allow_all_bundle_ids,
      allowed_bundle_ids: allowed_bundle_ids,
    }),
  },
  new(
    resourceLabel,
    display_name,
    android_settings=null,
    ios_settings=null,
    labels=null,
    project=null,
    testing_options=null,
    timeouts=null,
    web_settings=null,
    _meta={}
  ):: tf.withResource(
    type='google_recaptcha_enterprise_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      android_settings=android_settings,
      display_name=display_name,
      ios_settings=ios_settings,
      labels=labels,
      project=project,
      testing_options=testing_options,
      timeouts=timeouts,
      web_settings=web_settings
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    android_settings=null,
    ios_settings=null,
    labels=null,
    project=null,
    testing_options=null,
    timeouts=null,
    web_settings=null
  ):: std.prune(a={
    android_settings: android_settings,
    display_name: display_name,
    ios_settings: ios_settings,
    labels: labels,
    project: project,
    testing_options: testing_options,
    timeouts: timeouts,
    web_settings: web_settings,
  }),
  testing_options:: {
    new(
      testing_challenge=null,
      testing_score=null
    ):: std.prune(a={
      testing_challenge: testing_challenge,
      testing_score: testing_score,
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
  web_settings:: {
    new(
      integration_type,
      allow_all_domains=null,
      allow_amp_traffic=null,
      allowed_domains=null,
      challenge_security_preference=null
    ):: std.prune(a={
      allow_all_domains: allow_all_domains,
      allow_amp_traffic: allow_amp_traffic,
      allowed_domains: allowed_domains,
      challenge_security_preference: challenge_security_preference,
      integration_type: integration_type,
    }),
  },
  withAndroidSettings(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          android_settings: value,
        },
      },
    },
  },
  withAndroidSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          android_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withIosSettings(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          ios_settings: value,
        },
      },
    },
  },
  withIosSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          ios_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTestingOptions(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          testing_options: value,
        },
      },
    },
  },
  withTestingOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          testing_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWebSettings(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          web_settings: value,
        },
      },
    },
  },
  withWebSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_recaptcha_enterprise_key+: {
        [resourceLabel]+: {
          web_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

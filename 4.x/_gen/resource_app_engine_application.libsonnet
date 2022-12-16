local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  feature_settings:: {
    new(
      split_health_checks
    ):: std.prune(a={
      split_health_checks: split_health_checks,
    }),
  },
  iap:: {
    new(
      oauth2_client_id,
      oauth2_client_secret,
      enabled=null
    ):: std.prune(a={
      enabled: enabled,
      oauth2_client_id: oauth2_client_id,
      oauth2_client_secret: oauth2_client_secret,
    }),
  },
  new(
    resourceLabel,
    location_id,
    auth_domain=null,
    database_type=null,
    feature_settings=null,
    iap=null,
    project=null,
    serving_status=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_app_engine_application',
    label=resourceLabel,
    attrs=self.newAttrs(
      auth_domain=auth_domain,
      database_type=database_type,
      feature_settings=feature_settings,
      iap=iap,
      location_id=location_id,
      project=project,
      serving_status=serving_status,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location_id,
    auth_domain=null,
    database_type=null,
    feature_settings=null,
    iap=null,
    project=null,
    serving_status=null,
    timeouts=null
  ):: std.prune(a={
    auth_domain: auth_domain,
    database_type: database_type,
    feature_settings: feature_settings,
    iap: iap,
    location_id: location_id,
    project: project,
    serving_status: serving_status,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      update=null
    ):: std.prune(a={
      create: create,
      update: update,
    }),
  },
  withAuthDomain(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          auth_domain: value,
        },
      },
    },
  },
  withDatabaseType(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          database_type: value,
        },
      },
    },
  },
  withFeatureSettings(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          feature_settings: value,
        },
      },
    },
  },
  withFeatureSettingsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          feature_settings+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withIap(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          iap: value,
        },
      },
    },
  },
  withIapMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          iap+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocationId(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          location_id: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServingStatus(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          serving_status: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_app_engine_application+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  features:: {
    new(
      type
    ):: std.prune(a={
      type: type,
    }),
  },
  generic_web_service:: {
    new(
      uri,
      password=null,
      request_headers=null,
      username=null
    ):: std.prune(a={
      password: password,
      request_headers: request_headers,
      uri: uri,
      username: username,
    }),
  },
  new(
    resourceLabel,
    display_name,
    enabled=null,
    features=null,
    generic_web_service=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_dialogflow_fulfillment',
    label=resourceLabel,
    attrs=self.newAttrs(
      display_name=display_name,
      enabled=enabled,
      features=features,
      generic_web_service=generic_web_service,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    display_name,
    enabled=null,
    features=null,
    generic_web_service=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    display_name: display_name,
    enabled: enabled,
    features: features,
    generic_web_service: generic_web_service,
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
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withEnabled(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          enabled: value,
        },
      },
    },
  },
  withFeatures(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          features: value,
        },
      },
    },
  },
  withFeaturesMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withGenericWebService(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          generic_web_service: value,
        },
      },
    },
  },
  withGenericWebServiceMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          generic_web_service+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_dialogflow_fulfillment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

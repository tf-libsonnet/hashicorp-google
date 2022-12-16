local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    crypto_key_name=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_eventarc_google_channel_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      crypto_key_name=crypto_key_name,
      location=location,
      name=name,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    crypto_key_name=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    crypto_key_name: crypto_key_name,
    location: location,
    name: name,
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
  withCryptoKeyName(resourceLabel, value):: {
    resource+: {
      google_eventarc_google_channel_config+: {
        [resourceLabel]+: {
          crypto_key_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_eventarc_google_channel_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_eventarc_google_channel_config+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_eventarc_google_channel_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_eventarc_google_channel_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_eventarc_google_channel_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

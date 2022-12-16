local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    crypto_key_name=null,
    project=null,
    third_party_provider=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_eventarc_channel',
    label=resourceLabel,
    attrs=self.newAttrs(
      crypto_key_name=crypto_key_name,
      location=location,
      name=name,
      project=project,
      third_party_provider=third_party_provider,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    crypto_key_name=null,
    project=null,
    third_party_provider=null,
    timeouts=null
  ):: std.prune(a={
    crypto_key_name: crypto_key_name,
    location: location,
    name: name,
    project: project,
    third_party_provider: third_party_provider,
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
      google_eventarc_channel+: {
        [resourceLabel]+: {
          crypto_key_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_eventarc_channel+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_eventarc_channel+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_eventarc_channel+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withThirdPartyProvider(resourceLabel, value):: {
    resource+: {
      google_eventarc_channel+: {
        [resourceLabel]+: {
          third_party_provider: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_eventarc_channel+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_eventarc_channel+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

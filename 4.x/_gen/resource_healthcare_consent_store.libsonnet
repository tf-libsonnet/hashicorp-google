local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    dataset,
    name,
    default_consent_ttl=null,
    enable_consent_create_on_update=null,
    labels=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_healthcare_consent_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      dataset=dataset,
      default_consent_ttl=default_consent_ttl,
      enable_consent_create_on_update=enable_consent_create_on_update,
      labels=labels,
      name=name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset,
    name,
    default_consent_ttl=null,
    enable_consent_create_on_update=null,
    labels=null,
    timeouts=null
  ):: std.prune(a={
    dataset: dataset,
    default_consent_ttl: default_consent_ttl,
    enable_consent_create_on_update: enable_consent_create_on_update,
    labels: labels,
    name: name,
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
  withDataset(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          dataset: value,
        },
      },
    },
  },
  withDefaultConsentTtl(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          default_consent_ttl: value,
        },
      },
    },
  },
  withEnableConsentCreateOnUpdate(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          enable_consent_create_on_update: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_healthcare_consent_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

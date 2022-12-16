local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    key_ring,
    name,
    destroy_scheduled_duration=null,
    import_only=null,
    labels=null,
    purpose=null,
    rotation_period=null,
    skip_initial_version_creation=null,
    timeouts=null,
    version_template=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_crypto_key',
    label=resourceLabel,
    attrs=self.newAttrs(
      destroy_scheduled_duration=destroy_scheduled_duration,
      import_only=import_only,
      key_ring=key_ring,
      labels=labels,
      name=name,
      purpose=purpose,
      rotation_period=rotation_period,
      skip_initial_version_creation=skip_initial_version_creation,
      timeouts=timeouts,
      version_template=version_template
    ),
    _meta=_meta
  ),
  newAttrs(
    key_ring,
    name,
    destroy_scheduled_duration=null,
    import_only=null,
    labels=null,
    purpose=null,
    rotation_period=null,
    skip_initial_version_creation=null,
    timeouts=null,
    version_template=null
  ):: std.prune(a={
    destroy_scheduled_duration: destroy_scheduled_duration,
    import_only: import_only,
    key_ring: key_ring,
    labels: labels,
    name: name,
    purpose: purpose,
    rotation_period: rotation_period,
    skip_initial_version_creation: skip_initial_version_creation,
    timeouts: timeouts,
    version_template: version_template,
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
  version_template:: {
    new(
      algorithm,
      protection_level=null
    ):: std.prune(a={
      algorithm: algorithm,
      protection_level: protection_level,
    }),
  },
  withDestroyScheduledDuration(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          destroy_scheduled_duration: value,
        },
      },
    },
  },
  withImportOnly(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          import_only: value,
        },
      },
    },
  },
  withKeyRing(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          key_ring: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPurpose(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          purpose: value,
        },
      },
    },
  },
  withRotationPeriod(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          rotation_period: value,
        },
      },
    },
  },
  withSkipInitialVersionCreation(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          skip_initial_version_creation: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersionTemplate(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          version_template: value,
        },
      },
    },
  },
  withVersionTemplateMixin(resourceLabel, value):: {
    resource+: {
      google_kms_crypto_key+: {
        [resourceLabel]+: {
          version_template+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}

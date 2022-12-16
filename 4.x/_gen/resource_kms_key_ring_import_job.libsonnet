local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    import_job_id,
    import_method,
    key_ring,
    protection_level,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_key_ring_import_job',
    label=resourceLabel,
    attrs=self.newAttrs(
      import_job_id=import_job_id,
      import_method=import_method,
      key_ring=key_ring,
      protection_level=protection_level,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    import_job_id,
    import_method,
    key_ring,
    protection_level,
    timeouts=null
  ):: std.prune(a={
    import_job_id: import_job_id,
    import_method: import_method,
    key_ring: key_ring,
    protection_level: protection_level,
    timeouts: timeouts,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withImportJobId(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          import_job_id: value,
        },
      },
    },
  },
  withImportMethod(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          import_method: value,
        },
      },
    },
  },
  withKeyRing(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          key_ring: value,
        },
      },
    },
  },
  withProtectionLevel(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          protection_level: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring_import_job+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

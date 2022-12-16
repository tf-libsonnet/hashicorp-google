local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    location,
    name,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_kms_key_ring',
    label=resourceLabel,
    attrs=self.newAttrs(
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
    project=null,
    timeouts=null
  ):: std.prune(a={
    location: location,
    name: name,
    project: project,
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
  withLocation(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_kms_key_ring+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

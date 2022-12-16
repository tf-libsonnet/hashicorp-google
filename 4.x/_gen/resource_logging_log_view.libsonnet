local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    bucket,
    name,
    description=null,
    filter=null,
    location=null,
    parent=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_log_view',
    label=resourceLabel,
    attrs=self.newAttrs(
      bucket=bucket,
      description=description,
      filter=filter,
      location=location,
      name=name,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    bucket,
    name,
    description=null,
    filter=null,
    location=null,
    parent=null,
    timeouts=null
  ):: std.prune(a={
    bucket: bucket,
    description: description,
    filter: filter,
    location: location,
    name: name,
    parent: parent,
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
  withBucket(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          bucket: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_log_view+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

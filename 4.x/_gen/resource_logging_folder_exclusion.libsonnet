local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    filter,
    folder,
    name,
    description=null,
    disabled=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_folder_exclusion',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      filter=filter,
      folder=folder,
      name=name
    ),
    _meta=_meta
  ),
  newAttrs(
    filter,
    folder,
    name,
    description=null,
    disabled=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    filter: filter,
    folder: folder,
    name: name,
  }),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_folder_exclusion+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_logging_folder_exclusion+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_folder_exclusion+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withFolder(resourceLabel, value):: {
    resource+: {
      google_logging_folder_exclusion+: {
        [resourceLabel]+: {
          folder: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_folder_exclusion+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
}

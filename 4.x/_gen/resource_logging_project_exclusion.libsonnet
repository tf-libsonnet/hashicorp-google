local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    filter,
    name,
    description=null,
    disabled=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_project_exclusion',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disabled=disabled,
      filter=filter,
      name=name,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    filter,
    name,
    description=null,
    disabled=null,
    project=null
  ):: std.prune(a={
    description: description,
    disabled: disabled,
    filter: filter,
    name: name,
    project: project,
  }),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_project_exclusion+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_logging_project_exclusion+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_project_exclusion+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_project_exclusion+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_logging_project_exclusion+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

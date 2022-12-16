local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  bigquery_options:: {
    new(
      use_partitioned_tables
    ):: std.prune(a={
      use_partitioned_tables: use_partitioned_tables,
    }),
  },
  exclusions:: {
    new(
      filter,
      name,
      description=null,
      disabled=null
    ):: std.prune(a={
      description: description,
      disabled: disabled,
      filter: filter,
      name: name,
    }),
  },
  new(
    resourceLabel,
    destination,
    name,
    bigquery_options=null,
    description=null,
    disabled=null,
    exclusions=null,
    filter=null,
    project=null,
    unique_writer_identity=null,
    _meta={}
  ):: tf.withResource(
    type='google_logging_project_sink',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigquery_options=bigquery_options,
      description=description,
      destination=destination,
      disabled=disabled,
      exclusions=exclusions,
      filter=filter,
      name=name,
      project=project,
      unique_writer_identity=unique_writer_identity
    ),
    _meta=_meta
  ),
  newAttrs(
    destination,
    name,
    bigquery_options=null,
    description=null,
    disabled=null,
    exclusions=null,
    filter=null,
    project=null,
    unique_writer_identity=null
  ):: std.prune(a={
    bigquery_options: bigquery_options,
    description: description,
    destination: destination,
    disabled: disabled,
    exclusions: exclusions,
    filter: filter,
    name: name,
    project: project,
    unique_writer_identity: unique_writer_identity,
  }),
  withBigqueryOptions(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          bigquery_options: value,
        },
      },
    },
  },
  withBigqueryOptionsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          bigquery_options+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDestination(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          destination: value,
        },
      },
    },
  },
  withDisabled(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          disabled: value,
        },
      },
    },
  },
  withExclusions(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          exclusions: value,
        },
      },
    },
  },
  withExclusionsMixin(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          exclusions+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withFilter(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          filter: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withUniqueWriterIdentity(resourceLabel, value):: {
    resource+: {
      google_logging_project_sink+: {
        [resourceLabel]+: {
          unique_writer_identity: value,
        },
      },
    },
  },
}

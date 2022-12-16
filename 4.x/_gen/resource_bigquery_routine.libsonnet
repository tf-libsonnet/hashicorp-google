local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  arguments:: {
    new(
      argument_kind=null,
      data_type=null,
      mode=null,
      name=null
    ):: std.prune(a={
      argument_kind: argument_kind,
      data_type: data_type,
      mode: mode,
      name: name,
    }),
  },
  new(
    resourceLabel,
    dataset_id,
    definition_body,
    routine_id,
    arguments=null,
    description=null,
    determinism_level=null,
    imported_libraries=null,
    language=null,
    project=null,
    return_table_type=null,
    return_type=null,
    routine_type=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_bigquery_routine',
    label=resourceLabel,
    attrs=self.newAttrs(
      arguments=arguments,
      dataset_id=dataset_id,
      definition_body=definition_body,
      description=description,
      determinism_level=determinism_level,
      imported_libraries=imported_libraries,
      language=language,
      project=project,
      return_table_type=return_table_type,
      return_type=return_type,
      routine_id=routine_id,
      routine_type=routine_type,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    dataset_id,
    definition_body,
    routine_id,
    arguments=null,
    description=null,
    determinism_level=null,
    imported_libraries=null,
    language=null,
    project=null,
    return_table_type=null,
    return_type=null,
    routine_type=null,
    timeouts=null
  ):: std.prune(a={
    arguments: arguments,
    dataset_id: dataset_id,
    definition_body: definition_body,
    description: description,
    determinism_level: determinism_level,
    imported_libraries: imported_libraries,
    language: language,
    project: project,
    return_table_type: return_table_type,
    return_type: return_type,
    routine_id: routine_id,
    routine_type: routine_type,
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
  withArguments(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          arguments: value,
        },
      },
    },
  },
  withArgumentsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          arguments+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDatasetId(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  withDefinitionBody(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          definition_body: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDeterminismLevel(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          determinism_level: value,
        },
      },
    },
  },
  withImportedLibraries(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          imported_libraries: value,
        },
      },
    },
  },
  withLanguage(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          language: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withReturnTableType(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          return_table_type: value,
        },
      },
    },
  },
  withReturnType(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          return_type: value,
        },
      },
    },
  },
  withRoutineId(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          routine_id: value,
        },
      },
    },
  },
  withRoutineType(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          routine_type: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

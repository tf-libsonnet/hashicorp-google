local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  dictionary:: {
    cloud_storage_path:: {
      new(
        path
      ):: std.prune(a={
        path: path,
      }),
    },
    new(
      cloud_storage_path=null,
      word_list=null
    ):: std.prune(a={
      cloud_storage_path: cloud_storage_path,
      word_list: word_list,
    }),
    word_list:: {
      new(
        words
      ):: std.prune(a={
        words: words,
      }),
    },
  },
  large_custom_dictionary:: {
    big_query_field:: {
      field:: {
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
      new(
        field=null,
        table=null
      ):: std.prune(a={
        field: field,
        table: table,
      }),
      table:: {
        new(
          dataset_id,
          project_id,
          table_id
        ):: std.prune(a={
          dataset_id: dataset_id,
          project_id: project_id,
          table_id: table_id,
        }),
      },
    },
    cloud_storage_file_set:: {
      new(
        url
      ):: std.prune(a={
        url: url,
      }),
    },
    new(
      big_query_field=null,
      cloud_storage_file_set=null,
      output_path=null
    ):: std.prune(a={
      big_query_field: big_query_field,
      cloud_storage_file_set: cloud_storage_file_set,
      output_path: output_path,
    }),
    output_path:: {
      new(
        path
      ):: std.prune(a={
        path: path,
      }),
    },
  },
  new(
    resourceLabel,
    parent,
    description=null,
    dictionary=null,
    display_name=null,
    large_custom_dictionary=null,
    regex=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_stored_info_type',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      dictionary=dictionary,
      display_name=display_name,
      large_custom_dictionary=large_custom_dictionary,
      parent=parent,
      regex=regex,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    description=null,
    dictionary=null,
    display_name=null,
    large_custom_dictionary=null,
    regex=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    dictionary: dictionary,
    display_name: display_name,
    large_custom_dictionary: large_custom_dictionary,
    parent: parent,
    regex: regex,
    timeouts: timeouts,
  }),
  regex:: {
    new(
      pattern,
      group_indexes=null
    ):: std.prune(a={
      group_indexes: group_indexes,
      pattern: pattern,
    }),
  },
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDictionary(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          dictionary: value,
        },
      },
    },
  },
  withDictionaryMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          dictionary+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLargeCustomDictionary(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          large_custom_dictionary: value,
        },
      },
    },
  },
  withLargeCustomDictionaryMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          large_custom_dictionary+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withRegex(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          regex: value,
        },
      },
    },
  },
  withRegexMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          regex+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  inspect_config:: {
    custom_info_types:: {
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
      info_type:: {
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
      new(
        dictionary=null,
        exclusion_type=null,
        info_type=null,
        likelihood=null,
        regex=null,
        stored_type=null
      ):: std.prune(a={
        dictionary: dictionary,
        exclusion_type: exclusion_type,
        info_type: info_type,
        likelihood: likelihood,
        regex: regex,
        stored_type: stored_type,
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
      stored_type:: {
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
    },
    info_types:: {
      new(
        name
      ):: std.prune(a={
        name: name,
      }),
    },
    limits:: {
      max_findings_per_info_type:: {
        info_type:: {
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        new(
          max_findings,
          info_type=null
        ):: std.prune(a={
          info_type: info_type,
          max_findings: max_findings,
        }),
      },
      new(
        max_findings_per_item,
        max_findings_per_request,
        max_findings_per_info_type=null
      ):: std.prune(a={
        max_findings_per_info_type: max_findings_per_info_type,
        max_findings_per_item: max_findings_per_item,
        max_findings_per_request: max_findings_per_request,
      }),
    },
    new(
      content_options=null,
      custom_info_types=null,
      exclude_info_types=null,
      include_quote=null,
      info_types=null,
      limits=null,
      min_likelihood=null,
      rule_set=null
    ):: std.prune(a={
      content_options: content_options,
      custom_info_types: custom_info_types,
      exclude_info_types: exclude_info_types,
      include_quote: include_quote,
      info_types: info_types,
      limits: limits,
      min_likelihood: min_likelihood,
      rule_set: rule_set,
    }),
    rule_set:: {
      info_types:: {
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
      new(
        info_types=null,
        rules=null
      ):: std.prune(a={
        info_types: info_types,
        rules: rules,
      }),
      rules:: {
        exclusion_rule:: {
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
          exclude_info_types:: {
            info_types:: {
              new(
                name
              ):: std.prune(a={
                name: name,
              }),
            },
            new(
              info_types=null
            ):: std.prune(a={
              info_types: info_types,
            }),
          },
          new(
            matching_type,
            dictionary=null,
            exclude_info_types=null,
            regex=null
          ):: std.prune(a={
            dictionary: dictionary,
            exclude_info_types: exclude_info_types,
            matching_type: matching_type,
            regex: regex,
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
        },
        hotword_rule:: {
          hotword_regex:: {
            new(
              pattern,
              group_indexes=null
            ):: std.prune(a={
              group_indexes: group_indexes,
              pattern: pattern,
            }),
          },
          likelihood_adjustment:: {
            new(
              fixed_likelihood=null,
              relative_likelihood=null
            ):: std.prune(a={
              fixed_likelihood: fixed_likelihood,
              relative_likelihood: relative_likelihood,
            }),
          },
          new(
            hotword_regex=null,
            likelihood_adjustment=null,
            proximity=null
          ):: std.prune(a={
            hotword_regex: hotword_regex,
            likelihood_adjustment: likelihood_adjustment,
            proximity: proximity,
          }),
          proximity:: {
            new(
              window_after=null,
              window_before=null
            ):: std.prune(a={
              window_after: window_after,
              window_before: window_before,
            }),
          },
        },
        new(
          exclusion_rule=null,
          hotword_rule=null
        ):: std.prune(a={
          exclusion_rule: exclusion_rule,
          hotword_rule: hotword_rule,
        }),
      },
    },
  },
  new(
    resourceLabel,
    parent,
    description=null,
    display_name=null,
    inspect_config=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_inspect_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      inspect_config=inspect_config,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    description=null,
    display_name=null,
    inspect_config=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    inspect_config: inspect_config,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withInspectConfig(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          inspect_config: value,
        },
      },
    },
  },
  withInspectConfigMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          inspect_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

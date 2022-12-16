local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  deidentify_config:: {
    info_type_transformations:: {
      new(
        transformations=null
      ):: std.prune(a={
        transformations: transformations,
      }),
      transformations:: {
        info_types:: {
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        new(
          info_types=null,
          primitive_transformation=null
        ):: std.prune(a={
          info_types: info_types,
          primitive_transformation: primitive_transformation,
        }),
        primitive_transformation:: {
          character_mask_config:: {
            characters_to_ignore:: {
              new(
                characters_to_skip=null,
                common_characters_to_ignore=null
              ):: std.prune(a={
                characters_to_skip: characters_to_skip,
                common_characters_to_ignore: common_characters_to_ignore,
              }),
            },
            new(
              characters_to_ignore=null,
              masking_character=null,
              number_to_mask=null,
              reverse_order=null
            ):: std.prune(a={
              characters_to_ignore: characters_to_ignore,
              masking_character: masking_character,
              number_to_mask: number_to_mask,
              reverse_order: reverse_order,
            }),
          },
          crypto_deterministic_config:: {
            context:: {
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            new(
              context=null,
              crypto_key=null,
              surrogate_info_type=null
            ):: std.prune(a={
              context: context,
              crypto_key: crypto_key,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
          },
          crypto_replace_ffx_fpe_config:: {
            context:: {
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
            crypto_key:: {
              kms_wrapped:: {
                new(
                  crypto_key_name,
                  wrapped_key
                ):: std.prune(a={
                  crypto_key_name: crypto_key_name,
                  wrapped_key: wrapped_key,
                }),
              },
              new(
                kms_wrapped=null,
                transient=null,
                unwrapped=null
              ):: std.prune(a={
                kms_wrapped: kms_wrapped,
                transient: transient,
                unwrapped: unwrapped,
              }),
              transient:: {
                new(
                  name
                ):: std.prune(a={
                  name: name,
                }),
              },
              unwrapped:: {
                new(
                  key
                ):: std.prune(a={
                  key: key,
                }),
              },
            },
            new(
              common_alphabet=null,
              context=null,
              crypto_key=null,
              custom_alphabet=null,
              radix=null,
              surrogate_info_type=null
            ):: std.prune(a={
              common_alphabet: common_alphabet,
              context: context,
              crypto_key: crypto_key,
              custom_alphabet: custom_alphabet,
              radix: radix,
              surrogate_info_type: surrogate_info_type,
            }),
            surrogate_info_type:: {
              new(
                name=null
              ):: std.prune(a={
                name: name,
              }),
            },
          },
          new(
            character_mask_config=null,
            crypto_deterministic_config=null,
            crypto_replace_ffx_fpe_config=null,
            replace_config=null,
            replace_with_info_type_config=null
          ):: std.prune(a={
            character_mask_config: character_mask_config,
            crypto_deterministic_config: crypto_deterministic_config,
            crypto_replace_ffx_fpe_config: crypto_replace_ffx_fpe_config,
            replace_config: replace_config,
            replace_with_info_type_config: replace_with_info_type_config,
          }),
          replace_config:: {
            new(
              new_value=null
            ):: std.prune(a={
              new_value: new_value,
            }),
            new_value:: {
              date_value:: {
                new(
                  day=null,
                  month=null,
                  year=null
                ):: std.prune(a={
                  day: day,
                  month: month,
                  year: year,
                }),
              },
              new(
                boolean_value=null,
                date_value=null,
                day_of_week_value=null,
                float_value=null,
                integer_value=null,
                string_value=null,
                time_value=null,
                timestamp_value=null
              ):: std.prune(a={
                boolean_value: boolean_value,
                date_value: date_value,
                day_of_week_value: day_of_week_value,
                float_value: float_value,
                integer_value: integer_value,
                string_value: string_value,
                time_value: time_value,
                timestamp_value: timestamp_value,
              }),
              time_value:: {
                new(
                  hours=null,
                  minutes=null,
                  nanos=null,
                  seconds=null
                ):: std.prune(a={
                  hours: hours,
                  minutes: minutes,
                  nanos: nanos,
                  seconds: seconds,
                }),
              },
            },
          },
        },
      },
    },
    new(
      info_type_transformations=null
    ):: std.prune(a={
      info_type_transformations: info_type_transformations,
    }),
  },
  new(
    resourceLabel,
    parent,
    deidentify_config=null,
    description=null,
    display_name=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_loss_prevention_deidentify_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      deidentify_config=deidentify_config,
      description=description,
      display_name=display_name,
      parent=parent,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    parent,
    deidentify_config=null,
    description=null,
    display_name=null,
    timeouts=null
  ):: std.prune(a={
    deidentify_config: deidentify_config,
    description: description,
    display_name: display_name,
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
  withDeidentifyConfig(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          deidentify_config: value,
        },
      },
    },
  },
  withDeidentifyConfigMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          deidentify_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_data_loss_prevention_deidentify_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

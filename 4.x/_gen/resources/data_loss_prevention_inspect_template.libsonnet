local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_loss_prevention_inspect_template', url='', help='`data_loss_prevention_inspect_template` represents the `google_data_loss_prevention_inspect_template` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  inspect_config:: {
    custom_info_types:: {
      dictionary:: {
        cloud_storage_path:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_path` sub block.\n', args=[]),
          new(
            path
          ):: std.prune(a={
            path: path,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.cloud_storage_path.new](#fn-dictionarycloudstoragepathnew) constructor.\n  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.word_list.new](#fn-dictionarywordlistnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dictionary` sub block.\n', args=[]),
        new(
          cloud_storage_path=null,
          word_list=null
        ):: std.prune(a={
          cloud_storage_path: cloud_storage_path,
          word_list: word_list,
        }),
        word_list:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one\nphrase and every phrase must contain at least 2 characters that are letters or digits.\n\n**Returns**:\n  - An attribute object that represents the `word_list` sub block.\n', args=[]),
          new(
            words
          ):: std.prune(a={
            words: words,
          }),
        },
      },
      info_type:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names\nlisted at https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n\n**Returns**:\n  - An attribute object that represents the `info_type` sub block.\n', args=[]),
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.new` constructs a new object with attributes and blocks configured for the `custom_info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclusion_type` (`string`): If set to EXCLUSION_TYPE_EXCLUDE this infoType will not cause a finding to be returned. It still can be used for rules matching. Possible values: [&#34;EXCLUSION_TYPE_EXCLUDE&#34;] When `null`, the `exclusion_type` field will be omitted from the resulting object.\n  - `likelihood` (`string`): Likelihood to return for this CustomInfoType. This base value can be altered by a detection rule if the finding meets the criteria\nspecified by the rule. Default value: &#34;VERY_LIKELY&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `likelihood` field will be omitted from the resulting object.\n  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.dictionary.new](#fn-custominfotypesdictionarynew) constructor.\n  - `info_type` (`list[obj]`): CustomInfoType can either be a new infoType, or an extension of built-in infoType, when the name matches one of existing\ninfoTypes and that infoType is specified in &#39;info_types&#39; field. Specifying the latter adds findings to the\none detected by the system. If built-in info type is not specified in &#39;info_types&#39; list then the name is\ntreated as a custom info type. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.info_type.new](#fn-custominfotypesinfotypenew) constructor.\n  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.regex.new](#fn-custominfotypesregexnew) constructor.\n  - `stored_type` (`list[obj]`): A reference to a StoredInfoType to use with scanning. When `null`, the `stored_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.stored_type.new](#fn-custominfotypesstoredtypenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `custom_info_types` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.regex.new` constructs a new object with attributes and blocks configured for the `regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression.\nIts syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.\n\n**Returns**:\n  - An attribute object that represents the `regex` sub block.\n', args=[]),
        new(
          pattern,
          group_indexes=null
        ):: std.prune(a={
          group_indexes: group_indexes,
          pattern: pattern,
        }),
      },
      stored_type:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.stored_type.new` constructs a new object with attributes and blocks configured for the `stored_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Resource name of the requested StoredInfoType, for example &#39;organizations/433245324/storedInfoTypes/432452342&#39;\nor &#39;projects/project-id/storedInfoTypes/432452342&#39;.\n\n**Returns**:\n  - An attribute object that represents the `stored_type` sub block.\n', args=[]),
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
    },
    info_types:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
      new(
        name
      ):: std.prune(a={
        name: name,
      }),
    },
    limits:: {
      max_findings_per_info_type:: {
        info_type:: {
          '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.info_type.new` constructs a new object with attributes and blocks configured for the `info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n\n**Returns**:\n  - An attribute object that represents the `info_type` sub block.\n', args=[]),
          new(
            name
          ):: std.prune(a={
            name: name,
          }),
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.new` constructs a new object with attributes and blocks configured for the `max_findings_per_info_type`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_findings` (`number`): Max findings limit for the given infoType.\n  - `info_type` (`list[obj]`): Type of information the findings limit applies to. Only one limit per infoType should be provided. If InfoTypeLimit does\nnot have an infoType, the DLP API applies the limit against all infoTypes that are found but not\nspecified in another InfoTypeLimit. When `null`, the `info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.info_type.new](#fn-maxfindingsperinfotypeinfotypenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `max_findings_per_info_type` sub block.\n', args=[]),
        new(
          max_findings,
          info_type=null
        ):: std.prune(a={
          info_type: info_type,
          max_findings: max_findings,
        }),
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.limits.new` constructs a new object with attributes and blocks configured for the `limits`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_findings_per_item` (`number`): Max number of findings that will be returned for each item scanned. The maximum returned is 2000.\n  - `max_findings_per_request` (`number`): Max number of findings that will be returned per request/job. The maximum returned is 2000.\n  - `max_findings_per_info_type` (`list[obj]`): Configuration of findings limit given for specified infoTypes. When `null`, the `max_findings_per_info_type` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.limits.max_findings_per_info_type.new](#fn-limitsmaxfindingsperinfotypenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `limits` sub block.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.new` constructs a new object with attributes and blocks configured for the `inspect_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `content_options` (`list`): List of options defining data content to scan. If empty, text, images, and other content will be included. Possible values: [&#34;CONTENT_TEXT&#34;, &#34;CONTENT_IMAGE&#34;] When `null`, the `content_options` field will be omitted from the resulting object.\n  - `exclude_info_types` (`bool`): When true, excludes type information of the findings. When `null`, the `exclude_info_types` field will be omitted from the resulting object.\n  - `include_quote` (`bool`): When true, a contextual quote from the data that triggered a finding is included in the response. When `null`, the `include_quote` field will be omitted from the resulting object.\n  - `min_likelihood` (`string`): Only returns findings equal or above this threshold. See https://cloud.google.com/dlp/docs/likelihood for more info Default value: &#34;POSSIBLE&#34; Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `min_likelihood` field will be omitted from the resulting object.\n  - `custom_info_types` (`list[obj]`): Custom info types to be used. See https://cloud.google.com/dlp/docs/creating-custom-infotypes to learn more. When `null`, the `custom_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.custom_info_types.new](#fn-inspectconfigcustominfotypesnew) constructor.\n  - `info_types` (`list[obj]`): Restricts what infoTypes to look for. The values must correspond to InfoType values returned by infoTypes.list\nor listed at https://cloud.google.com/dlp/docs/infotypes-reference.\n\nWhen no InfoTypes or CustomInfoTypes are specified in a request, the system may automatically choose what detectors to run.\nBy default this may be all types, but may change over time as detectors are updated. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.info_types.new](#fn-inspectconfiginfotypesnew) constructor.\n  - `limits` (`list[obj]`): Configuration to control the number of findings returned. When `null`, the `limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.limits.new](#fn-inspectconfiglimitsnew) constructor.\n  - `rule_set` (`list[obj]`): Set of rules to apply to the findings for this InspectConfig. Exclusion rules, contained in the set are executed in the end,\nother rules are executed in the order they are specified for each info type. When `null`, the `rule_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.new](#fn-inspectconfigrulesetnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `inspect_config` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.new` constructs a new object with attributes and blocks configured for the `rule_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_types` (`list[obj]`): List of infoTypes this rule set is applied to. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.info_types.new](#fn-rulesetinfotypesnew) constructor.\n  - `rules` (`list[obj]`): Set of rules to be applied to infoTypes. The rules are applied in order. When `null`, the `rules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.new](#fn-rulesetrulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rule_set` sub block.\n', args=[]),
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
              '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_path` sub block.\n', args=[]),
              new(
                path
              ):: std.prune(a={
                path: path,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.cloud_storage_path.new](#fn-dictionarycloudstoragepathnew) constructor.\n  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new](#fn-dictionarywordlistnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dictionary` sub block.\n', args=[]),
            new(
              cloud_storage_path=null,
              word_list=null
            ):: std.prune(a={
              cloud_storage_path: cloud_storage_path,
              word_list: word_list,
            }),
            word_list:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one\nphrase and every phrase must contain at least 2 characters that are letters or digits.\n\n**Returns**:\n  - An attribute object that represents the `word_list` sub block.\n', args=[]),
              new(
                words
              ):: std.prune(a={
                words: words,
              }),
            },
          },
          exclude_info_types:: {
            info_types:: {
              '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new` constructs a new object with attributes and blocks configured for the `info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name of the information type. Either a name of your choosing when creating a CustomInfoType, or one of the names listed\nat https://cloud.google.com/dlp/docs/infotypes-reference when specifying a built-in type.\n\n**Returns**:\n  - An attribute object that represents the `info_types` sub block.\n', args=[]),
              new(
                name
              ):: std.prune(a={
                name: name,
              }),
            },
            '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new` constructs a new object with attributes and blocks configured for the `exclude_info_types`\nTerraform sub block.\n\n\n\n**Args**:\n  - `info_types` (`list[obj]`): If a finding is matched by any of the infoType detectors listed here, the finding will be excluded from the scan results. When `null`, the `info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.info_types.new](#fn-excludeinfotypesinfotypesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclude_info_types` sub block.\n', args=[]),
            new(
              info_types=null
            ):: std.prune(a={
              info_types: info_types,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.new` constructs a new object with attributes and blocks configured for the `exclusion_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `matching_type` (`string`): How the rule is applied. See the documentation for more information: https://cloud.google.com/dlp/docs/reference/rest/v2/InspectConfig#MatchingType Possible values: [&#34;MATCHING_TYPE_FULL_MATCH&#34;, &#34;MATCHING_TYPE_PARTIAL_MATCH&#34;, &#34;MATCHING_TYPE_INVERSE_MATCH&#34;]\n  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.dictionary.new](#fn-exclusionruledictionarynew) constructor.\n  - `exclude_info_types` (`list[obj]`): Set of infoTypes for which findings would affect this rule. When `null`, the `exclude_info_types` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.exclude_info_types.new](#fn-exclusionruleexcludeinfotypesnew) constructor.\n  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.regex.new](#fn-exclusionruleregexnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `exclusion_rule` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.regex.new` constructs a new object with attributes and blocks configured for the `regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression.\nIts syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.\n\n**Returns**:\n  - An attribute object that represents the `regex` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new` constructs a new object with attributes and blocks configured for the `hotword_regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified,\nthe entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression. Its syntax\n(https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.\n\n**Returns**:\n  - An attribute object that represents the `hotword_regex` sub block.\n', args=[]),
            new(
              pattern,
              group_indexes=null
            ):: std.prune(a={
              group_indexes: group_indexes,
              pattern: pattern,
            }),
          },
          likelihood_adjustment:: {
            '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new` constructs a new object with attributes and blocks configured for the `likelihood_adjustment`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed_likelihood` (`string`): Set the likelihood of a finding to a fixed value. Either this or relative_likelihood can be set. Possible values: [&#34;VERY_UNLIKELY&#34;, &#34;UNLIKELY&#34;, &#34;POSSIBLE&#34;, &#34;LIKELY&#34;, &#34;VERY_LIKELY&#34;] When `null`, the `fixed_likelihood` field will be omitted from the resulting object.\n  - `relative_likelihood` (`number`): Increase or decrease the likelihood by the specified number of levels. For example,\nif a finding would be POSSIBLE without the detection rule and relativeLikelihood is 1,\nthen it is upgraded to LIKELY, while a value of -1 would downgrade it to UNLIKELY.\nLikelihood may never drop below VERY_UNLIKELY or exceed VERY_LIKELY, so applying an\nadjustment of 1 followed by an adjustment of -1 when base likelihood is VERY_LIKELY\nwill result in a final likelihood of LIKELY. Either this or fixed_likelihood can be set. When `null`, the `relative_likelihood` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `likelihood_adjustment` sub block.\n', args=[]),
            new(
              fixed_likelihood=null,
              relative_likelihood=null
            ):: std.prune(a={
              fixed_likelihood: fixed_likelihood,
              relative_likelihood: relative_likelihood,
            }),
          },
          '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.new` constructs a new object with attributes and blocks configured for the `hotword_rule`\nTerraform sub block.\n\n\n\n**Args**:\n  - `hotword_regex` (`list[obj]`): Regular expression pattern defining what qualifies as a hotword. When `null`, the `hotword_regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.hotword_regex.new](#fn-hotwordrulehotwordregexnew) constructor.\n  - `likelihood_adjustment` (`list[obj]`): Likelihood adjustment to apply to all matching findings. When `null`, the `likelihood_adjustment` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.likelihood_adjustment.new](#fn-hotwordrulelikelihoodadjustmentnew) constructor.\n  - `proximity` (`list[obj]`): Proximity of the finding within which the entire hotword must reside. The total length of the window cannot\nexceed 1000 characters. Note that the finding itself will be included in the window, so that hotwords may be\nused to match substrings of the finding itself. For example, the certainty of a phone number regex\n&#39;(\\d{3}) \\d{3}-\\d{4}&#39; could be adjusted upwards if the area code is known to be the local area code of a company\noffice using the hotword regex &#39;(xxx)&#39;, where &#39;xxx&#39; is the area code in question. When `null`, the `proximity` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.proximity.new](#fn-hotwordruleproximitynew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `hotword_rule` sub block.\n', args=[]),
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
            '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.proximity.new` constructs a new object with attributes and blocks configured for the `proximity`\nTerraform sub block.\n\n\n\n**Args**:\n  - `window_after` (`number`): Number of characters after the finding to consider. Either this or window_before must be specified When `null`, the `window_after` field will be omitted from the resulting object.\n  - `window_before` (`number`): Number of characters before the finding to consider. Either this or window_after must be specified When `null`, the `window_before` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `proximity` sub block.\n', args=[]),
            new(
              window_after=null,
              window_before=null
            ):: std.prune(a={
              window_after: window_after,
              window_before: window_before,
            }),
          },
        },
        '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.new` constructs a new object with attributes and blocks configured for the `rules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `exclusion_rule` (`list[obj]`): The rule that specifies conditions when findings of infoTypes specified in InspectionRuleSet are removed from results. When `null`, the `exclusion_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.exclusion_rule.new](#fn-rulesexclusionrulenew) constructor.\n  - `hotword_rule` (`list[obj]`): Hotword-based detection rule. When `null`, the `hotword_rule` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.rule_set.rules.hotword_rule.new](#fn-ruleshotwordrulenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `rules` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.data_loss_prevention_inspect_template.new` injects a new `google_data_loss_prevention_inspect_template` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_loss_prevention_inspect_template.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_loss_prevention_inspect_template` using the reference:\n\n    $._ref.google_data_loss_prevention_inspect_template.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_loss_prevention_inspect_template.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the inspect template. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the inspect template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the inspect template in any of the following formats:\n\n* \u0026#39;projects/{{project}}\u0026#39;\n* \u0026#39;projects/{{project}}/locations/{{location}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}/locations/{{location}}\u0026#39;\n  - `inspect_config` (`list[obj]`): The core content of the template. When `null`, the `inspect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.new](#fn-datalosspreventioninspecttemplateinspectconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.timeouts.new](#fn-datalosspreventioninspecttemplatetimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.data_loss_prevention_inspect_template.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_inspect_template`\nTerraform resource.\n\nUnlike [google.data_loss_prevention_inspect_template.new](#fn-datalosspreventioninspecttemplatenew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the inspect template. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the inspect template. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the inspect template in any of the following formats:\n\n* &#39;projects/{{project}}&#39;\n* &#39;projects/{{project}}/locations/{{location}}&#39;\n* &#39;organizations/{{organization_id}}&#39;\n* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;\n  - `inspect_config` (`list[obj]`): The core content of the template. When `null`, the `inspect_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.inspect_config.new](#fn-datalosspreventioninspecttemplateinspectconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_inspect_template.timeouts.new](#fn-datalosspreventioninspecttemplatetimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_inspect_template` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.data_loss_prevention_inspect_template.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withInspectConfig':: d.fn(help='`google.list[obj].withInspectConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the inspect_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withInspectConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `inspect_config` field.\n', args=[]),
  withInspectConfig(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          inspect_config: value,
        },
      },
    },
  },
  '#withInspectConfigMixin':: d.fn(help='`google.list[obj].withInspectConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the inspect_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withInspectConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `inspect_config` field.\n', args=[]),
  withInspectConfigMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          inspect_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_inspect_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

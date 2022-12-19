local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='data_loss_prevention_stored_info_type', url='', help='`data_loss_prevention_stored_info_type` represents the `google_data_loss_prevention_stored_info_type` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  dictionary:: {
    cloud_storage_path:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.dictionary.cloud_storage_path.new` constructs a new object with attributes and blocks configured for the `cloud_storage_path`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_path` sub block.\n', args=[]),
      new(
        path
      ):: std.prune(a={
        path: path,
      }),
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.dictionary.new` constructs a new object with attributes and blocks configured for the `dictionary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cloud_storage_path` (`list[obj]`): Newline-delimited file of words in Cloud Storage. Only a single file is accepted. When `null`, the `cloud_storage_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.dictionary.cloud_storage_path.new](#fn-data_loss_prevention_stored_info_typecloud_storage_pathnew) constructor.\n  - `word_list` (`list[obj]`): List of words or phrases to search for. When `null`, the `word_list` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.dictionary.word_list.new](#fn-data_loss_prevention_stored_info_typeword_listnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `dictionary` sub block.\n', args=[]),
    new(
      cloud_storage_path=null,
      word_list=null
    ):: std.prune(a={
      cloud_storage_path: cloud_storage_path,
      word_list: word_list,
    }),
    word_list:: {
      '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.dictionary.word_list.new` constructs a new object with attributes and blocks configured for the `word_list`\nTerraform sub block.\n\n\n\n**Args**:\n  - `words` (`list`): Words or phrases defining the dictionary. The dictionary must contain at least one\nphrase and every phrase must contain at least 2 characters that are letters or digits.\n\n**Returns**:\n  - An attribute object that represents the `word_list` sub block.\n', args=[]),
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
        '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.field.new` constructs a new object with attributes and blocks configured for the `field`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): Name describing the field.\n\n**Returns**:\n  - An attribute object that represents the `field` sub block.\n', args=[]),
        new(
          name
        ):: std.prune(a={
          name: name,
        }),
      },
      '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.new` constructs a new object with attributes and blocks configured for the `big_query_field`\nTerraform sub block.\n\n\n\n**Args**:\n  - `field` (`list[obj]`): Designated field in the BigQuery table. When `null`, the `field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.field.new](#fn-data_loss_prevention_stored_info_typelarge_custom_dictionaryfieldnew) constructor.\n  - `table` (`list[obj]`): Field in a BigQuery table where each cell represents a dictionary phrase. When `null`, the `table` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.table.new](#fn-data_loss_prevention_stored_info_typelarge_custom_dictionarytablenew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `big_query_field` sub block.\n', args=[]),
      new(
        field=null,
        table=null
      ):: std.prune(a={
        field: field,
        table: table,
      }),
      table:: {
        '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.table.new` constructs a new object with attributes and blocks configured for the `table`\nTerraform sub block.\n\n\n\n**Args**:\n  - `dataset_id` (`string`): The dataset ID of the table.\n  - `project_id` (`string`): The Google Cloud Platform project ID of the project containing the table.\n  - `table_id` (`string`): The name of the table.\n\n**Returns**:\n  - An attribute object that represents the `table` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.large_custom_dictionary.cloud_storage_file_set.new` constructs a new object with attributes and blocks configured for the `cloud_storage_file_set`\nTerraform sub block.\n\n\n\n**Args**:\n  - `url` (`string`): The url, in the format &#39;gs://&lt;bucket&gt;/&lt;path&gt;&#39;. Trailing wildcard in the path is allowed.\n\n**Returns**:\n  - An attribute object that represents the `cloud_storage_file_set` sub block.\n', args=[]),
      new(
        url
      ):: std.prune(a={
        url: url,
      }),
    },
    '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.large_custom_dictionary.new` constructs a new object with attributes and blocks configured for the `large_custom_dictionary`\nTerraform sub block.\n\n\n\n**Args**:\n  - `big_query_field` (`list[obj]`): Field in a BigQuery table where each cell represents a dictionary phrase. When `null`, the `big_query_field` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.big_query_field.new](#fn-data_loss_prevention_stored_info_typebig_query_fieldnew) constructor.\n  - `cloud_storage_file_set` (`list[obj]`): Set of files containing newline-delimited lists of dictionary phrases. When `null`, the `cloud_storage_file_set` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.cloud_storage_file_set.new](#fn-data_loss_prevention_stored_info_typecloud_storage_file_setnew) constructor.\n  - `output_path` (`list[obj]`): Location to store dictionary artifacts in Google Cloud Storage. These files will only be accessible by project owners and the DLP API.\nIf any of these artifacts are modified, the dictionary is considered invalid and can no longer be used. When `null`, the `output_path` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.output_path.new](#fn-data_loss_prevention_stored_info_typeoutput_pathnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `large_custom_dictionary` sub block.\n', args=[]),
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
      '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.large_custom_dictionary.output_path.new` constructs a new object with attributes and blocks configured for the `output_path`\nTerraform sub block.\n\n\n\n**Args**:\n  - `path` (`string`): A url representing a file or path (no wildcards) in Cloud Storage. Example: &#39;gs://[BUCKET_NAME]/dictionary.txt&#39;\n\n**Returns**:\n  - An attribute object that represents the `output_path` sub block.\n', args=[]),
      new(
        path
      ):: std.prune(a={
        path: path,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.data_loss_prevention_stored_info_type.new` injects a new `google_data_loss_prevention_stored_info_type` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data_loss_prevention_stored_info_type.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data_loss_prevention_stored_info_type` using the reference:\n\n    $._ref.google_data_loss_prevention_stored_info_type.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_data_loss_prevention_stored_info_type.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): A description of the info type. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the info type. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the info type in any of the following formats:\n\n* \u0026#39;projects/{{project}}\u0026#39;\n* \u0026#39;projects/{{project}}/locations/{{location}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}\u0026#39;\n* \u0026#39;organizations/{{organization_id}}/locations/{{location}}\u0026#39;\n  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.dictionary.new](#fn-dictionarynew) constructor.\n  - `large_custom_dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `large_custom_dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.new](#fn-large_custom_dictionarynew) constructor.\n  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.regex.new](#fn-regexnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
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
  '#newAttrs':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.newAttrs` constructs a new object with attributes and blocks configured for the `data_loss_prevention_stored_info_type`\nTerraform resource.\n\nUnlike [google.data_loss_prevention_stored_info_type.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): A description of the info type. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User set display name of the info type. When `null`, the `display_name` field will be omitted from the resulting object.\n  - `parent` (`string`): The parent of the info type in any of the following formats:\n\n* &#39;projects/{{project}}&#39;\n* &#39;projects/{{project}}/locations/{{location}}&#39;\n* &#39;organizations/{{organization_id}}&#39;\n* &#39;organizations/{{organization_id}}/locations/{{location}}&#39;\n  - `dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.dictionary.new](#fn-dictionarynew) constructor.\n  - `large_custom_dictionary` (`list[obj]`): Dictionary which defines the rule. When `null`, the `large_custom_dictionary` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.large_custom_dictionary.new](#fn-large_custom_dictionarynew) constructor.\n  - `regex` (`list[obj]`): Regular expression which defines the rule. When `null`, the `regex` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.regex.new](#fn-regexnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.data_loss_prevention_stored_info_type.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `data_loss_prevention_stored_info_type` resource into the root Terraform configuration.\n', args=[]),
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
    '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.regex.new` constructs a new object with attributes and blocks configured for the `regex`\nTerraform sub block.\n\n\n\n**Args**:\n  - `group_indexes` (`list`): The index of the submatch to extract as findings. When not specified, the entire match is returned. No more than 3 may be included. When `null`, the `group_indexes` field will be omitted from the resulting object.\n  - `pattern` (`string`): Pattern defining the regular expression.\nIts syntax (https://github.com/google/re2/wiki/Syntax) can be found under the google/re2 repository on GitHub.\n\n**Returns**:\n  - An attribute object that represents the `regex` sub block.\n', args=[]),
    new(
      pattern,
      group_indexes=null
    ):: std.prune(a={
      group_indexes: group_indexes,
      pattern: pattern,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.data_loss_prevention_stored_info_type.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDictionary':: d.fn(help='`google.list[obj].withDictionary` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dictionary field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withDictionaryMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dictionary` field.\n', args=[]),
  withDictionary(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          dictionary: value,
        },
      },
    },
  },
  '#withDictionaryMixin':: d.fn(help='`google.list[obj].withDictionaryMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the dictionary field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withDictionary](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `dictionary` field.\n', args=[]),
  withDictionaryMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          dictionary+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withLargeCustomDictionary':: d.fn(help='`google.list[obj].withLargeCustomDictionary` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the large_custom_dictionary field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withLargeCustomDictionaryMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `large_custom_dictionary` field.\n', args=[]),
  withLargeCustomDictionary(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          large_custom_dictionary: value,
        },
      },
    },
  },
  '#withLargeCustomDictionaryMixin':: d.fn(help='`google.list[obj].withLargeCustomDictionaryMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the large_custom_dictionary field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withLargeCustomDictionary](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `large_custom_dictionary` field.\n', args=[]),
  withLargeCustomDictionaryMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          large_custom_dictionary+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withParent':: d.fn(help='`google.string.withParent` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the parent field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `parent` field.\n', args=[]),
  withParent(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  '#withRegex':: d.fn(help='`google.list[obj].withRegex` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the regex field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withRegexMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `regex` field.\n', args=[]),
  withRegex(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          regex: value,
        },
      },
    },
  },
  '#withRegexMixin':: d.fn(help='`google.list[obj].withRegexMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the regex field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withRegex](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `regex` field.\n', args=[]),
  withRegexMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          regex+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_data_loss_prevention_stored_info_type+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

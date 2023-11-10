local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='bigquery_routine', url='', help='`bigquery_routine` represents the `google_bigquery_routine` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  arguments:: {
    '#new':: d.fn(help='\n`google.bigquery_routine.arguments.new` constructs a new object with attributes and blocks configured for the `arguments`\nTerraform sub block.\n\n\n\n**Args**:\n  - `argument_kind` (`string`): Defaults to FIXED_TYPE. Default value: &#34;FIXED_TYPE&#34; Possible values: [&#34;FIXED_TYPE&#34;, &#34;ANY_TYPE&#34;] When `null`, the `argument_kind` field will be omitted from the resulting object.\n  - `data_type` (`string`): A JSON schema for the data type. Required unless argumentKind = ANY_TYPE.\n~&gt;**NOTE**: Because this field expects a JSON string, any changes to the string\nwill create a diff, even if the JSON itself hasn&#39;t changed. If the API returns\na different value for the same schema, e.g. it switched the order of values\nor replaced STRUCT field type with RECORD field type, we currently cannot\nsuppress the recurring diff this causes. As a workaround, we recommend using\nthe schema as returned by the API. When `null`, the `data_type` field will be omitted from the resulting object.\n  - `mode` (`string`): Specifies whether the argument is input or output. Can be set for procedures only. Possible values: [&#34;IN&#34;, &#34;OUT&#34;, &#34;INOUT&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `name` (`string`): The name of this argument. Can be absent for function return argument. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `arguments` sub block.\n', args=[]),
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
  '#new':: d.fn(help="\n`google.bigquery_routine.new` injects a new `google_bigquery_routine` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.bigquery_routine.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.bigquery_routine` using the reference:\n\n    $._ref.google_bigquery_routine.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_bigquery_routine.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `dataset_id` (`string`): The ID of the dataset containing this routine\n  - `definition_body` (`string`): The body of the routine. For functions, this is the expression in the AS clause.\nIf language=SQL, it is the substring inside (but excluding) the parentheses.\n  - `description` (`string`): The description of the routine if defined. When `null`, the `description` field will be omitted from the resulting object.\n  - `determinism_level` (`string`): The determinism level of the JavaScript UDF if defined. Possible values: [\u0026#34;DETERMINISM_LEVEL_UNSPECIFIED\u0026#34;, \u0026#34;DETERMINISTIC\u0026#34;, \u0026#34;NOT_DETERMINISTIC\u0026#34;] When `null`, the `determinism_level` field will be omitted from the resulting object.\n  - `imported_libraries` (`list`): Optional. If language = \u0026#34;JAVASCRIPT\u0026#34;, this field stores the path of the\nimported JAVASCRIPT libraries. When `null`, the `imported_libraries` field will be omitted from the resulting object.\n  - `language` (`string`): The language of the routine. Possible values: [\u0026#34;SQL\u0026#34;, \u0026#34;JAVASCRIPT\u0026#34;] When `null`, the `language` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `return_table_type` (`string`): Optional. Can be set only if routineType = \u0026#34;TABLE_VALUED_FUNCTION\u0026#34;.\n\nIf absent, the return table type is inferred from definitionBody at query time in each query\nthat references this routine. If present, then the columns in the evaluated table result will\nbe cast to match the column types specificed in return table type, at query time. When `null`, the `return_table_type` field will be omitted from the resulting object.\n  - `return_type` (`string`): A JSON schema for the return type. Optional if language = \u0026#34;SQL\u0026#34;; required otherwise.\nIf absent, the return type is inferred from definitionBody at query time in each query\nthat references this routine. If present, then the evaluated result will be cast to\nthe specified returned type at query time. ~\u0026gt;**NOTE**: Because this field expects a JSON\nstring, any changes to the string will create a diff, even if the JSON itself hasn\u0026#39;t\nchanged. If the API returns a different value for the same schema, e.g. it switche\nd the order of values or replaced STRUCT field type with RECORD field type, we currently\ncannot suppress the recurring diff this causes. As a workaround, we recommend using\nthe schema as returned by the API. When `null`, the `return_type` field will be omitted from the resulting object.\n  - `routine_id` (`string`): The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.\n  - `routine_type` (`string`): The type of routine. Possible values: [\u0026#34;SCALAR_FUNCTION\u0026#34;, \u0026#34;PROCEDURE\u0026#34;, \u0026#34;TABLE_VALUED_FUNCTION\u0026#34;]\n  - `arguments` (`list[obj]`): Input/output argument of a function or a stored procedure. When `null`, the `arguments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.arguments.new](#fn-argumentsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    dataset_id,
    definition_body,
    routine_id,
    routine_type,
    arguments=null,
    description=null,
    determinism_level=null,
    imported_libraries=null,
    language=null,
    project=null,
    return_table_type=null,
    return_type=null,
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
  '#newAttrs':: d.fn(help='\n`google.bigquery_routine.newAttrs` constructs a new object with attributes and blocks configured for the `bigquery_routine`\nTerraform resource.\n\nUnlike [google.bigquery_routine.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `dataset_id` (`string`): The ID of the dataset containing this routine\n  - `definition_body` (`string`): The body of the routine. For functions, this is the expression in the AS clause.\nIf language=SQL, it is the substring inside (but excluding) the parentheses.\n  - `description` (`string`): The description of the routine if defined. When `null`, the `description` field will be omitted from the resulting object.\n  - `determinism_level` (`string`): The determinism level of the JavaScript UDF if defined. Possible values: [&#34;DETERMINISM_LEVEL_UNSPECIFIED&#34;, &#34;DETERMINISTIC&#34;, &#34;NOT_DETERMINISTIC&#34;] When `null`, the `determinism_level` field will be omitted from the resulting object.\n  - `imported_libraries` (`list`): Optional. If language = &#34;JAVASCRIPT&#34;, this field stores the path of the\nimported JAVASCRIPT libraries. When `null`, the `imported_libraries` field will be omitted from the resulting object.\n  - `language` (`string`): The language of the routine. Possible values: [&#34;SQL&#34;, &#34;JAVASCRIPT&#34;] When `null`, the `language` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `return_table_type` (`string`): Optional. Can be set only if routineType = &#34;TABLE_VALUED_FUNCTION&#34;.\n\nIf absent, the return table type is inferred from definitionBody at query time in each query\nthat references this routine. If present, then the columns in the evaluated table result will\nbe cast to match the column types specificed in return table type, at query time. When `null`, the `return_table_type` field will be omitted from the resulting object.\n  - `return_type` (`string`): A JSON schema for the return type. Optional if language = &#34;SQL&#34;; required otherwise.\nIf absent, the return type is inferred from definitionBody at query time in each query\nthat references this routine. If present, then the evaluated result will be cast to\nthe specified returned type at query time. ~&gt;**NOTE**: Because this field expects a JSON\nstring, any changes to the string will create a diff, even if the JSON itself hasn&#39;t\nchanged. If the API returns a different value for the same schema, e.g. it switche\nd the order of values or replaced STRUCT field type with RECORD field type, we currently\ncannot suppress the recurring diff this causes. As a workaround, we recommend using\nthe schema as returned by the API. When `null`, the `return_type` field will be omitted from the resulting object.\n  - `routine_id` (`string`): The ID of the the routine. The ID must contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The maximum length is 256 characters.\n  - `routine_type` (`string`): The type of routine. Possible values: [&#34;SCALAR_FUNCTION&#34;, &#34;PROCEDURE&#34;, &#34;TABLE_VALUED_FUNCTION&#34;]\n  - `arguments` (`list[obj]`): Input/output argument of a function or a stored procedure. When `null`, the `arguments` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.arguments.new](#fn-argumentsnew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.bigquery_routine.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `bigquery_routine` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    dataset_id,
    definition_body,
    routine_id,
    routine_type,
    arguments=null,
    description=null,
    determinism_level=null,
    imported_libraries=null,
    language=null,
    project=null,
    return_table_type=null,
    return_type=null,
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
    '#new':: d.fn(help='\n`google.bigquery_routine.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withArguments':: d.fn(help='`google.list[obj].withArguments` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the arguments field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withArgumentsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `arguments` field.\n', args=[]),
  withArguments(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          arguments: value,
        },
      },
    },
  },
  '#withArgumentsMixin':: d.fn(help='`google.list[obj].withArgumentsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the arguments field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withArguments](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `arguments` field.\n', args=[]),
  withArgumentsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          arguments+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDatasetId':: d.fn(help='`google.string.withDatasetId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the dataset_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `dataset_id` field.\n', args=[]),
  withDatasetId(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          dataset_id: value,
        },
      },
    },
  },
  '#withDefinitionBody':: d.fn(help='`google.string.withDefinitionBody` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the definition_body field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `definition_body` field.\n', args=[]),
  withDefinitionBody(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          definition_body: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDeterminismLevel':: d.fn(help='`google.string.withDeterminismLevel` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the determinism_level field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `determinism_level` field.\n', args=[]),
  withDeterminismLevel(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          determinism_level: value,
        },
      },
    },
  },
  '#withImportedLibraries':: d.fn(help='`google.list.withImportedLibraries` constructs a mixin object that can be merged into the `list`\nTerraform resource block to set or update the imported_libraries field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list`): The value to set for the `imported_libraries` field.\n', args=[]),
  withImportedLibraries(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          imported_libraries: value,
        },
      },
    },
  },
  '#withLanguage':: d.fn(help='`google.string.withLanguage` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the language field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `language` field.\n', args=[]),
  withLanguage(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          language: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withReturnTableType':: d.fn(help='`google.string.withReturnTableType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the return_table_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `return_table_type` field.\n', args=[]),
  withReturnTableType(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          return_table_type: value,
        },
      },
    },
  },
  '#withReturnType':: d.fn(help='`google.string.withReturnType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the return_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `return_type` field.\n', args=[]),
  withReturnType(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          return_type: value,
        },
      },
    },
  },
  '#withRoutineId':: d.fn(help='`google.string.withRoutineId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the routine_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `routine_id` field.\n', args=[]),
  withRoutineId(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          routine_id: value,
        },
      },
    },
  },
  '#withRoutineType':: d.fn(help='`google.string.withRoutineType` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the routine_type field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `routine_type` field.\n', args=[]),
  withRoutineType(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          routine_type: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_bigquery_routine+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

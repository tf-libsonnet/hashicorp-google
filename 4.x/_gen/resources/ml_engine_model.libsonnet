local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='ml_engine_model', url='', help='`ml_engine_model` represents the `google_ml_engine_model` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  default_version:: {
    '#new':: d.fn(help='\n`google.ml_engine_model.default_version.new` constructs a new object with attributes and blocks configured for the `default_version`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The name specified for the version when it was created.\n\n**Returns**:\n  - An attribute object that represents the `default_version` sub block.\n', args=[]),
    new(
      name
    ):: std.prune(a={
      name: name,
    }),
  },
  '#new':: d.fn(help="\n`google.ml_engine_model.new` injects a new `google_ml_engine_model` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.ml_engine_model.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.ml_engine_model` using the reference:\n\n    $._ref.google_ml_engine_model.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_ml_engine_model.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): The description specified for the model when it was created. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): One or more labels that you can add, to organize your models. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name specified for the model.\n  - `online_prediction_console_logging` (`bool`): If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging When `null`, the `online_prediction_console_logging` field will be omitted from the resulting object.\n  - `online_prediction_logging` (`bool`): If true, online prediction access logs are sent to StackDriver Logging. When `null`, the `online_prediction_logging` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `regions` (`list`): The list of regions where the model is going to be deployed.\nCurrently only one region per model is supported When `null`, the `regions` field will be omitted from the resulting object.\n  - `default_version` (`list[obj]`): The default version of the model. This version will be used to handle\nprediction requests that do not specify a version. When `null`, the `default_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.default_version.new](#fn-mlenginemodeldefaultversionnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.timeouts.new](#fn-mlenginemodeltimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    default_version=null,
    description=null,
    labels=null,
    online_prediction_console_logging=null,
    online_prediction_logging=null,
    project=null,
    regions=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_ml_engine_model',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_version=default_version,
      description=description,
      labels=labels,
      name=name,
      online_prediction_console_logging=online_prediction_console_logging,
      online_prediction_logging=online_prediction_logging,
      project=project,
      regions=regions,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.ml_engine_model.newAttrs` constructs a new object with attributes and blocks configured for the `ml_engine_model`\nTerraform resource.\n\nUnlike [google.ml_engine_model.new](#fn-mlenginemodelnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): The description specified for the model when it was created. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): One or more labels that you can add, to organize your models. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name specified for the model.\n  - `online_prediction_console_logging` (`bool`): If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging When `null`, the `online_prediction_console_logging` field will be omitted from the resulting object.\n  - `online_prediction_logging` (`bool`): If true, online prediction access logs are sent to StackDriver Logging. When `null`, the `online_prediction_logging` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `regions` (`list`): The list of regions where the model is going to be deployed.\nCurrently only one region per model is supported When `null`, the `regions` field will be omitted from the resulting object.\n  - `default_version` (`list[obj]`): The default version of the model. This version will be used to handle\nprediction requests that do not specify a version. When `null`, the `default_version` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.default_version.new](#fn-mlenginemodeldefaultversionnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.ml_engine_model.timeouts.new](#fn-mlenginemodeltimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `ml_engine_model` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    default_version=null,
    description=null,
    labels=null,
    online_prediction_console_logging=null,
    online_prediction_logging=null,
    project=null,
    regions=null,
    timeouts=null
  ):: std.prune(a={
    default_version: default_version,
    description: description,
    labels: labels,
    name: name,
    online_prediction_console_logging: online_prediction_console_logging,
    online_prediction_logging: online_prediction_logging,
    project: project,
    regions: regions,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.ml_engine_model.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withDefaultVersion':: d.fn(help='`google.ml_engine_model.withDefaultVersion` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the default_version field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `default_version` field.\n', args=[]),
  withDefaultVersion(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          default_version: value,
        },
      },
    },
  },
  '#withDefaultVersionMixin':: d.fn(help='`google.ml_engine_model.withDefaultVersionMixin` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the default_version field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.ml_engine_model.withDefaultVersion](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `default_version` field.\n', args=[]),
  withDefaultVersionMixin(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          default_version+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.ml_engine_model.withDescription` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.ml_engine_model.withLabels` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.ml_engine_model.withName` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOnlinePredictionConsoleLogging':: d.fn(help='`google.ml_engine_model.withOnlinePredictionConsoleLogging` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the online_prediction_console_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `online_prediction_console_logging` field.\n', args=[]),
  withOnlinePredictionConsoleLogging(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          online_prediction_console_logging: value,
        },
      },
    },
  },
  '#withOnlinePredictionLogging':: d.fn(help='`google.ml_engine_model.withOnlinePredictionLogging` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the online_prediction_logging field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `online_prediction_logging` field.\n', args=[]),
  withOnlinePredictionLogging(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          online_prediction_logging: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.ml_engine_model.withProject` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegions':: d.fn(help='`google.ml_engine_model.withRegions` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the regions field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `regions` field.\n', args=[]),
  withRegions(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          regions: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.ml_engine_model.withTimeouts` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.ml_engine_model.withTimeoutsMixin` constructs a mixin object that can be merged into the `ml_engine_model`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.ml_engine_model.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_ml_engine_model+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

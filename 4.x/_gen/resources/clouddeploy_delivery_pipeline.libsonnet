local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='clouddeploy_delivery_pipeline', url='', help='`clouddeploy_delivery_pipeline` represents the `google_clouddeploy_delivery_pipeline` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.clouddeploy_delivery_pipeline.new` injects a new `google_clouddeploy_delivery_pipeline` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.clouddeploy_delivery_pipeline.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.clouddeploy_delivery_pipeline` using the reference:\n\n    $._ref.google_clouddeploy_delivery_pipeline.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_clouddeploy_delivery_pipeline.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `annotations` (`obj`): User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the `DeliveryPipeline`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be \u0026lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\\-]{0,62}.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `suspended` (`bool`): When suspended, no new releases or rollouts can be created, but in-progress ones will complete. When `null`, the `suspended` field will be omitted from the resulting object.\n  - `serial_pipeline` (`list[obj]`): SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. When `null`, the `serial_pipeline` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.new](#fn-serial_pipelinenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    description=null,
    labels=null,
    project=null,
    serial_pipeline=null,
    suspended=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_clouddeploy_delivery_pipeline',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      description=description,
      labels=labels,
      location=location,
      name=name,
      project=project,
      serial_pipeline=serial_pipeline,
      suspended=suspended,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.clouddeploy_delivery_pipeline.newAttrs` constructs a new object with attributes and blocks configured for the `clouddeploy_delivery_pipeline`\nTerraform resource.\n\nUnlike [google.clouddeploy_delivery_pipeline.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `annotations` (`obj`): User annotations. These attributes can only be set and used by the user, and not by Google Cloud Deploy. See https://google.aip.dev/128#annotations for more details such as format and size limitations. When `null`, the `annotations` field will be omitted from the resulting object.\n  - `description` (`string`): Description of the `DeliveryPipeline`. Max length is 255 characters. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): Labels are attributes that can be set and used by both the user and by Google Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 128 bytes. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): The location for the resource\n  - `name` (`string`): Name of the `DeliveryPipeline`. Format is [a-z][a-z0-9\\-]{0,62}.\n  - `project` (`string`): The project for the resource When `null`, the `project` field will be omitted from the resulting object.\n  - `suspended` (`bool`): When suspended, no new releases or rollouts can be created, but in-progress ones will complete. When `null`, the `suspended` field will be omitted from the resulting object.\n  - `serial_pipeline` (`list[obj]`): SerialPipeline defines a sequential set of stages for a `DeliveryPipeline`. When `null`, the `serial_pipeline` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.new](#fn-serial_pipelinenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `clouddeploy_delivery_pipeline` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    location,
    name,
    annotations=null,
    description=null,
    labels=null,
    project=null,
    serial_pipeline=null,
    suspended=null,
    timeouts=null
  ):: std.prune(a={
    annotations: annotations,
    description: description,
    labels: labels,
    location: location,
    name: name,
    project: project,
    serial_pipeline: serial_pipeline,
    suspended: suspended,
    timeouts: timeouts,
  }),
  serial_pipeline:: {
    '#new':: d.fn(help='\n`google.clouddeploy_delivery_pipeline.serial_pipeline.new` constructs a new object with attributes and blocks configured for the `serial_pipeline`\nTerraform sub block.\n\n\n\n**Args**:\n  - `stages` (`list[obj]`): Each stage specifies configuration for a `Target`. The ordering of this list defines the promotion flow. When `null`, the `stages` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.clouddeploy_delivery_pipeline.serial_pipeline.stages.new](#fn-serial_pipelinestagesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `serial_pipeline` sub block.\n', args=[]),
    new(
      stages=null
    ):: std.prune(a={
      stages: stages,
    }),
    stages:: {
      '#new':: d.fn(help='\n`google.clouddeploy_delivery_pipeline.serial_pipeline.stages.new` constructs a new object with attributes and blocks configured for the `stages`\nTerraform sub block.\n\n\n\n**Args**:\n  - `profiles` (`list`): Skaffold profiles to use when rendering the manifest for this stage&#39;s `Target`. When `null`, the `profiles` field will be omitted from the resulting object.\n  - `target_id` (`string`): The target_id to which this stage points. This field refers exclusively to the last segment of a target name. For example, this field would just be `my-target` (rather than `projects/project/locations/location/targets/my-target`). The location of the `Target` is inferred to be the same as the location of the `DeliveryPipeline` that contains this `Stage`. When `null`, the `target_id` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `stages` sub block.\n', args=[]),
      new(
        profiles=null,
        target_id=null
      ):: std.prune(a={
        profiles: profiles,
        target_id: target_id,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.clouddeploy_delivery_pipeline.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAnnotations':: d.fn(help='`google.obj.withAnnotations` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the annotations field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `annotations` field.\n', args=[]),
  withAnnotations(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSerialPipeline':: d.fn(help='`google.list[obj].withSerialPipeline` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the serial_pipeline field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSerialPipelineMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `serial_pipeline` field.\n', args=[]),
  withSerialPipeline(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          serial_pipeline: value,
        },
      },
    },
  },
  '#withSerialPipelineMixin':: d.fn(help='`google.list[obj].withSerialPipelineMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the serial_pipeline field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSerialPipeline](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `serial_pipeline` field.\n', args=[]),
  withSerialPipelineMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          serial_pipeline+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withSuspended':: d.fn(help='`google.bool.withSuspended` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the suspended field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `suspended` field.\n', args=[]),
  withSuspended(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          suspended: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_clouddeploy_delivery_pipeline+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

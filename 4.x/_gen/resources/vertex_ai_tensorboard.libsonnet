local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_tensorboard', url='', help='`vertex_ai_tensorboard` represents the `google_vertex_ai_tensorboard` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_spec:: {
    '#new':: d.fn(help='\n`google.vertex_ai_tensorboard.encryption_spec.new` constructs a new object with attributes and blocks configured for the `encryption_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.\nHas the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created.\n\n**Returns**:\n  - An attribute object that represents the `encryption_spec` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_tensorboard.new` injects a new `google_vertex_ai_tensorboard` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_tensorboard.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_tensorboard` using the reference:\n\n    $._ref.google_vertex_ai_tensorboard.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_tensorboard.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): Description of this Tensorboard. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User provided name of this Tensorboard.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Tensorboards. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the tensorboard. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_tensorboard.encryption_spec.new](#fn-vertexaitensorboardencryptionspecnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_tensorboard.timeouts.new](#fn-vertexaitensorboardtimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    display_name,
    description=null,
    encryption_spec=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_tensorboard',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      display_name=display_name,
      encryption_spec=encryption_spec,
      labels=labels,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_tensorboard.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_tensorboard`\nTerraform resource.\n\nUnlike [google.vertex_ai_tensorboard.new](#fn-vertexaitensorboardnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): Description of this Tensorboard. When `null`, the `description` field will be omitted from the resulting object.\n  - `display_name` (`string`): User provided name of this Tensorboard.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your Tensorboards. When `null`, the `labels` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the tensorboard. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `encryption_spec` (`list[obj]`): Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_tensorboard.encryption_spec.new](#fn-vertexaitensorboardencryptionspecnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_tensorboard.timeouts.new](#fn-vertexaitensorboardtimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_tensorboard` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    display_name,
    description=null,
    encryption_spec=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    display_name: display_name,
    encryption_spec: encryption_spec,
    labels: labels,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_tensorboard.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDescription':: d.fn(help='`google.vertex_ai_tensorboard.withDescription` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.vertex_ai_tensorboard.withDisplayName` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withEncryptionSpec':: d.fn(help='`google.vertex_ai_tensorboard.withEncryptionSpec` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the encryption_spec field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `encryption_spec` field.\n', args=[]),
  withEncryptionSpec(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  '#withEncryptionSpecMixin':: d.fn(help='`google.vertex_ai_tensorboard.withEncryptionSpecMixin` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the encryption_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.vertex_ai_tensorboard.withEncryptionSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `encryption_spec` field.\n', args=[]),
  withEncryptionSpecMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.vertex_ai_tensorboard.withLabels` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.vertex_ai_tensorboard.withProject` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.vertex_ai_tensorboard.withRegion` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.vertex_ai_tensorboard.withTimeouts` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.vertex_ai_tensorboard.withTimeoutsMixin` constructs a mixin object that can be merged into the `vertex_ai_tensorboard`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.vertex_ai_tensorboard.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_vertex_ai_tensorboard+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

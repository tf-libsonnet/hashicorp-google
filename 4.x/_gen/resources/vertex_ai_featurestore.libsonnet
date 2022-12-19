local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_featurestore', url='', help='`vertex_ai_featurestore` represents the `google_vertex_ai_featurestore` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  encryption_spec:: {
    '#new':: d.fn(help='\n`google.vertex_ai_featurestore.encryption_spec.new` constructs a new object with attributes and blocks configured for the `encryption_spec`\nTerraform sub block.\n\n\n\n**Args**:\n  - `kms_key_name` (`string`): The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource. Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the compute resource is created.\n\n**Returns**:\n  - An attribute object that represents the `encryption_spec` sub block.\n', args=[]),
    new(
      kms_key_name
    ):: std.prune(a={
      kms_key_name: kms_key_name,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_featurestore.new` injects a new `google_vertex_ai_featurestore` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_featurestore.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_featurestore` using the reference:\n\n    $._ref.google_vertex_ai_featurestore.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_featurestore.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `force_destroy` (`bool`): If set to true, any EntityTypes and Features for this Featurestore will also be deleted When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Featurestore. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the dataset. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `encryption_spec` (`list[obj]`): If set, both of the online and offline data storage will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.encryption_spec.new](#fn-encryption_specnew) constructor.\n  - `online_serving_config` (`list[obj]`): Config for online serving resources. When `null`, the `online_serving_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.online_serving_config.new](#fn-online_serving_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    encryption_spec=null,
    force_destroy=null,
    labels=null,
    name=null,
    online_serving_config=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_featurestore',
    label=resourceLabel,
    attrs=self.newAttrs(
      encryption_spec=encryption_spec,
      force_destroy=force_destroy,
      labels=labels,
      name=name,
      online_serving_config=online_serving_config,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_featurestore.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_featurestore`\nTerraform resource.\n\nUnlike [google.vertex_ai_featurestore.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `force_destroy` (`bool`): If set to true, any EntityTypes and Features for this Featurestore will also be deleted When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): A set of key/value label pairs to assign to this Featurestore. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The name of the Featurestore. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number. When `null`, the `name` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of the dataset. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `encryption_spec` (`list[obj]`): If set, both of the online and offline data storage will be secured by this key. When `null`, the `encryption_spec` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.encryption_spec.new](#fn-encryption_specnew) constructor.\n  - `online_serving_config` (`list[obj]`): Config for online serving resources. When `null`, the `online_serving_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.online_serving_config.new](#fn-online_serving_confignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_featurestore.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_featurestore` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    encryption_spec=null,
    force_destroy=null,
    labels=null,
    name=null,
    online_serving_config=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    encryption_spec: encryption_spec,
    force_destroy: force_destroy,
    labels: labels,
    name: name,
    online_serving_config: online_serving_config,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  online_serving_config:: {
    '#new':: d.fn(help='\n`google.vertex_ai_featurestore.online_serving_config.new` constructs a new object with attributes and blocks configured for the `online_serving_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed_node_count` (`number`): The number of nodes for each cluster. The number of nodes will not scale automatically but can be scaled manually by providing different values when updating.\n\n**Returns**:\n  - An attribute object that represents the `online_serving_config` sub block.\n', args=[]),
    new(
      fixed_node_count
    ):: std.prune(a={
      fixed_node_count: fixed_node_count,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_featurestore.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withEncryptionSpec':: d.fn(help='`google.list[obj].withEncryptionSpec` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_spec field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withEncryptionSpecMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_spec` field.\n', args=[]),
  withEncryptionSpec(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          encryption_spec: value,
        },
      },
    },
  },
  '#withEncryptionSpecMixin':: d.fn(help='`google.list[obj].withEncryptionSpecMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the encryption_spec field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withEncryptionSpec](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `encryption_spec` field.\n', args=[]),
  withEncryptionSpecMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          encryption_spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForceDestroy':: d.fn(help='`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_destroy` field.\n', args=[]),
  withForceDestroy(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withOnlineServingConfig':: d.fn(help='`google.list[obj].withOnlineServingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the online_serving_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withOnlineServingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `online_serving_config` field.\n', args=[]),
  withOnlineServingConfig(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          online_serving_config: value,
        },
      },
    },
  },
  '#withOnlineServingConfigMixin':: d.fn(help='`google.list[obj].withOnlineServingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the online_serving_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withOnlineServingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `online_serving_config` field.\n', args=[]),
  withOnlineServingConfigMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          online_serving_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_featurestore+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

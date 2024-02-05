local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='vertex_ai_feature_online_store', url='', help='`vertex_ai_feature_online_store` represents the `google_vertex_ai_feature_online_store` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  bigtable:: {
    auto_scaling:: {
      '#new':: d.fn(help='\n`google.vertex_ai_feature_online_store.bigtable.auto_scaling.new` constructs a new object with attributes and blocks configured for the `auto_scaling`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cpu_utilization_target` (`number`): A percentage of the cluster&#39;s CPU capacity. Can be from 10% to 80%. When a cluster&#39;s CPU utilization exceeds the target that you have set, Bigtable immediately adds nodes to the cluster. When CPU utilization is substantially lower than the target, Bigtable removes nodes. If not set will default to 50%. When `null`, the `cpu_utilization_target` field will be omitted from the resulting object.\n  - `max_node_count` (`number`): The maximum number of nodes to scale up to. Must be greater than or equal to minNodeCount, and less than or equal to 10 times of &#39;minNodeCount&#39;.\n  - `min_node_count` (`number`): The minimum number of nodes to scale down to. Must be greater than or equal to 1.\n\n**Returns**:\n  - An attribute object that represents the `auto_scaling` sub block.\n', args=[]),
      new(
        max_node_count,
        min_node_count,
        cpu_utilization_target=null
      ):: std.prune(a={
        cpu_utilization_target: cpu_utilization_target,
        max_node_count: max_node_count,
        min_node_count: min_node_count,
      }),
    },
    '#new':: d.fn(help='\n`google.vertex_ai_feature_online_store.bigtable.new` constructs a new object with attributes and blocks configured for the `bigtable`\nTerraform sub block.\n\n\n\n**Args**:\n  - `auto_scaling` (`list[obj]`): Autoscaling config applied to Bigtable Instance. When `null`, the `auto_scaling` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store.bigtable.auto_scaling.new](#fn-bigtableauto_scalingnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `bigtable` sub block.\n', args=[]),
    new(
      auto_scaling=null
    ):: std.prune(a={
      auto_scaling: auto_scaling,
    }),
  },
  '#new':: d.fn(help="\n`google.vertex_ai_feature_online_store.new` injects a new `google_vertex_ai_feature_online_store` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.vertex_ai_feature_online_store.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.vertex_ai_feature_online_store` using the reference:\n\n    $._ref.google_vertex_ai_feature_online_store.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_vertex_ai_feature_online_store.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `force_destroy` (`bool`): If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your feature online stores.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of feature online store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `bigtable` (`list[obj]`): Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When `null`, the `bigtable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store.bigtable.new](#fn-bigtablenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    bigtable=null,
    force_destroy=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_vertex_ai_feature_online_store',
    label=resourceLabel,
    attrs=self.newAttrs(
      bigtable=bigtable,
      force_destroy=force_destroy,
      labels=labels,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.vertex_ai_feature_online_store.newAttrs` constructs a new object with attributes and blocks configured for the `vertex_ai_feature_online_store`\nTerraform resource.\n\nUnlike [google.vertex_ai_feature_online_store.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `force_destroy` (`bool`): If set to true, any FeatureViews and Features for this FeatureOnlineStore will also be deleted. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels with user-defined metadata to organize your feature online stores.\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): The resource name of the Feature Online Store. This value may be up to 60 characters, and valid characters are [a-z0-9_]. The first character cannot be a number.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): The region of feature online store. eg us-central1 When `null`, the `region` field will be omitted from the resulting object.\n  - `bigtable` (`list[obj]`): Settings for Cloud Bigtable instance that will be created to serve featureValues for all FeatureViews under this FeatureOnlineStore. When `null`, the `bigtable` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store.bigtable.new](#fn-bigtablenew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.vertex_ai_feature_online_store.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `vertex_ai_feature_online_store` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    bigtable=null,
    force_destroy=null,
    labels=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    bigtable: bigtable,
    force_destroy: force_destroy,
    labels: labels,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.vertex_ai_feature_online_store.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBigtable':: d.fn(help='`google.list[obj].withBigtable` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigtable field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBigtableMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigtable` field.\n', args=[]),
  withBigtable(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          bigtable: value,
        },
      },
    },
  },
  '#withBigtableMixin':: d.fn(help='`google.list[obj].withBigtableMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the bigtable field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBigtable](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `bigtable` field.\n', args=[]),
  withBigtableMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          bigtable+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withForceDestroy':: d.fn(help='`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_destroy` field.\n', args=[]),
  withForceDestroy(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_vertex_ai_feature_online_store+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

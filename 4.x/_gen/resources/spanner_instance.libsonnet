local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='spanner_instance', url='', help='`spanner_instance` represents the `google_spanner_instance` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoscaling_config:: {
    autoscaling_limits:: {
      '#new':: d.fn(help='\n`google.spanner_instance.autoscaling_config.autoscaling_limits.new` constructs a new object with attributes and blocks configured for the `autoscaling_limits`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_processing_units` (`number`): Specifies maximum number of processing units allocated to the instance.\nIf set, this number should be multiples of 1000 and be greater than or equal to\nmin_processing_units. When `null`, the `max_processing_units` field will be omitted from the resulting object.\n  - `min_processing_units` (`number`): Specifies minimum number of processing units allocated to the instance.\nIf set, this number should be multiples of 1000. When `null`, the `min_processing_units` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_limits` sub block.\n', args=[]),
      new(
        max_processing_units=null,
        min_processing_units=null
      ):: std.prune(a={
        max_processing_units: max_processing_units,
        min_processing_units: min_processing_units,
      }),
    },
    autoscaling_targets:: {
      '#new':: d.fn(help='\n`google.spanner_instance.autoscaling_config.autoscaling_targets.new` constructs a new object with attributes and blocks configured for the `autoscaling_targets`\nTerraform sub block.\n\n\n\n**Args**:\n  - `high_priority_cpu_utilization_percent` (`number`): Specifies the target high priority cpu utilization percentage that the autoscaler\nshould be trying to achieve for the instance.\nThis number is on a scale from 0 (no utilization) to 100 (full utilization).. When `null`, the `high_priority_cpu_utilization_percent` field will be omitted from the resulting object.\n  - `storage_utilization_percent` (`number`): Specifies the target storage utilization percentage that the autoscaler\nshould be trying to achieve for the instance.\nThis number is on a scale from 0 (no utilization) to 100 (full utilization). When `null`, the `storage_utilization_percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_targets` sub block.\n', args=[]),
      new(
        high_priority_cpu_utilization_percent=null,
        storage_utilization_percent=null
      ):: std.prune(a={
        high_priority_cpu_utilization_percent: high_priority_cpu_utilization_percent,
        storage_utilization_percent: storage_utilization_percent,
      }),
    },
    '#new':: d.fn(help='\n`google.spanner_instance.autoscaling_config.new` constructs a new object with attributes and blocks configured for the `autoscaling_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `autoscaling_limits` (`list[obj]`): Defines scale in controls to reduce the risk of response latency\nand outages due to abrupt scale-in events When `null`, the `autoscaling_limits` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.autoscaling_limits.new](#fn-autoscaling_configautoscaling_limitsnew) constructor.\n  - `autoscaling_targets` (`list[obj]`): Defines scale in controls to reduce the risk of response latency\nand outages due to abrupt scale-in events When `null`, the `autoscaling_targets` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.autoscaling_targets.new](#fn-autoscaling_configautoscaling_targetsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_config` sub block.\n', args=[]),
    new(
      autoscaling_limits=null,
      autoscaling_targets=null
    ):: std.prune(a={
      autoscaling_limits: autoscaling_limits,
      autoscaling_targets: autoscaling_targets,
    }),
  },
  '#new':: d.fn(help="\n`google.spanner_instance.new` injects a new `google_spanner_instance` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.spanner_instance.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.spanner_instance` using the reference:\n\n    $._ref.google_spanner_instance.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_spanner_instance.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `config` (`string`): The name of the instance\u0026#39;s configuration (similar but not\nquite the same as a region) which defines the geographic placement and\nreplication of your databases in this instance. It determines where your data\nis stored. Values are typically of the form \u0026#39;regional-europe-west1\u0026#39; , \u0026#39;us-central\u0026#39; etc.\nIn order to obtain a valid list please consult the\n[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).\n  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be\nunique per project and between 4 and 30 characters in length.\n  - `force_destroy` (`bool`): When deleting a spanner instance, this boolean option will delete all backups of this instance.\nThis must be set to true if you created a backup manually in the console. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): An object containing a list of \u0026#34;key\u0026#34;: value pairs.\nExample: { \u0026#34;name\u0026#34;: \u0026#34;wrench\u0026#34;, \u0026#34;mass\u0026#34;: \u0026#34;1.3kg\u0026#34;, \u0026#34;count\u0026#34;: \u0026#34;3\u0026#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field \u0026#39;effective_labels\u0026#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): A unique identifier for the instance, which cannot be changed after\nthe instance is created. The name must be between 6 and 30 characters\nin length.\n\n\nIf not provided, a random string starting with \u0026#39;tf-\u0026#39; will be selected. When `null`, the `name` field will be omitted from the resulting object.\n  - `num_nodes` (`number`): The number of nodes allocated to this instance. Exactly one of either node_count or processing_units\nmust be present in terraform. When `null`, the `num_nodes` field will be omitted from the resulting object.\n  - `processing_units` (`number`): The number of processing units allocated to this instance. Exactly one of processing_units\nor node_count must be present in terraform. When `null`, the `processing_units` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting resource block. When `null`, the `project` field will be omitted from the resulting object.\n  - `autoscaling_config` (`list[obj]`): The autoscaling configuration. Autoscaling is enabled if this field is set.\nWhen autoscaling is enabled, num_nodes and processing_units are treated as,\nOUTPUT_ONLY fields and reflect the current compute capacity allocated to\nthe instance. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.new](#fn-autoscaling_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting resource block. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    config,
    display_name,
    autoscaling_config=null,
    force_destroy=null,
    labels=null,
    name=null,
    num_nodes=null,
    processing_units=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_spanner_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling_config=autoscaling_config,
      config=config,
      display_name=display_name,
      force_destroy=force_destroy,
      labels=labels,
      name=name,
      num_nodes=num_nodes,
      processing_units=processing_units,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.spanner_instance.newAttrs` constructs a new object with attributes and blocks configured for the `spanner_instance`\nTerraform resource.\n\nUnlike [google.spanner_instance.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config` (`string`): The name of the instance&#39;s configuration (similar but not\nquite the same as a region) which defines the geographic placement and\nreplication of your databases in this instance. It determines where your data\nis stored. Values are typically of the form &#39;regional-europe-west1&#39; , &#39;us-central&#39; etc.\nIn order to obtain a valid list please consult the\n[Configuration section of the docs](https://cloud.google.com/spanner/docs/instances).\n  - `display_name` (`string`): The descriptive name for this instance as it appears in UIs. Must be\nunique per project and between 4 and 30 characters in length.\n  - `force_destroy` (`bool`): When deleting a spanner instance, this boolean option will delete all backups of this instance.\nThis must be set to true if you created a backup manually in the console. When `null`, the `force_destroy` field will be omitted from the resulting object.\n  - `labels` (`obj`): An object containing a list of &#34;key&#34;: value pairs.\nExample: { &#34;name&#34;: &#34;wrench&#34;, &#34;mass&#34;: &#34;1.3kg&#34;, &#34;count&#34;: &#34;3&#34; }.\n\n\n**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.\nPlease refer to the field &#39;effective_labels&#39; for all of the labels present on the resource. When `null`, the `labels` field will be omitted from the resulting object.\n  - `name` (`string`): A unique identifier for the instance, which cannot be changed after\nthe instance is created. The name must be between 6 and 30 characters\nin length.\n\n\nIf not provided, a random string starting with &#39;tf-&#39; will be selected. When `null`, the `name` field will be omitted from the resulting object.\n  - `num_nodes` (`number`): The number of nodes allocated to this instance. Exactly one of either node_count or processing_units\nmust be present in terraform. When `null`, the `num_nodes` field will be omitted from the resulting object.\n  - `processing_units` (`number`): The number of processing units allocated to this instance. Exactly one of processing_units\nor node_count must be present in terraform. When `null`, the `processing_units` field will be omitted from the resulting object.\n  - `project` (`string`): Set the `project` field on the resulting object. When `null`, the `project` field will be omitted from the resulting object.\n  - `autoscaling_config` (`list[obj]`): The autoscaling configuration. Autoscaling is enabled if this field is set.\nWhen autoscaling is enabled, num_nodes and processing_units are treated as,\nOUTPUT_ONLY fields and reflect the current compute capacity allocated to\nthe instance. When `null`, the `autoscaling_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.autoscaling_config.new](#fn-autoscaling_confignew) constructor.\n  - `timeouts` (`obj`): Set the `timeouts` field on the resulting object. When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.spanner_instance.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `spanner_instance` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    config,
    display_name,
    autoscaling_config=null,
    force_destroy=null,
    labels=null,
    name=null,
    num_nodes=null,
    processing_units=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    autoscaling_config: autoscaling_config,
    config: config,
    display_name: display_name,
    force_destroy: force_destroy,
    labels: labels,
    name: name,
    num_nodes: num_nodes,
    processing_units: processing_units,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.spanner_instance.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`): Set the `create` field on the resulting object. When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`): Set the `delete` field on the resulting object. When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`): Set the `update` field on the resulting object. When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoscalingConfig':: d.fn(help='`google.list[obj].withAutoscalingConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoscalingConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling_config` field.\n', args=[]),
  withAutoscalingConfig(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          autoscaling_config: value,
        },
      },
    },
  },
  '#withAutoscalingConfigMixin':: d.fn(help='`google.list[obj].withAutoscalingConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscalingConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling_config` field.\n', args=[]),
  withAutoscalingConfigMixin(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          autoscaling_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withConfig':: d.fn(help='`google.string.withConfig` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config` field.\n', args=[]),
  withConfig(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          config: value,
        },
      },
    },
  },
  '#withDisplayName':: d.fn(help='`google.string.withDisplayName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the display_name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `display_name` field.\n', args=[]),
  withDisplayName(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  '#withForceDestroy':: d.fn(help='`google.bool.withForceDestroy` constructs a mixin object that can be merged into the `bool`\nTerraform resource block to set or update the force_destroy field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`bool`): The value to set for the `force_destroy` field.\n', args=[]),
  withForceDestroy(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          force_destroy: value,
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withNumNodes':: d.fn(help='`google.number.withNumNodes` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the num_nodes field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `num_nodes` field.\n', args=[]),
  withNumNodes(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          num_nodes: value,
        },
      },
    },
  },
  '#withProcessingUnits':: d.fn(help='`google.number.withProcessingUnits` constructs a mixin object that can be merged into the `number`\nTerraform resource block to set or update the processing_units field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`number`): The value to set for the `processing_units` field.\n', args=[]),
  withProcessingUnits(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          processing_units: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_spanner_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

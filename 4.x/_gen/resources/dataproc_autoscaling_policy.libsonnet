local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='dataproc_autoscaling_policy', url='', help='`dataproc_autoscaling_policy` represents the `google_dataproc_autoscaling_policy` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  basic_algorithm:: {
    '#new':: d.fn(help='\n`google.dataproc_autoscaling_policy.basic_algorithm.new` constructs a new object with attributes and blocks configured for the `basic_algorithm`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cooldown_period` (`string`): Duration between scaling events. A scaling period starts after the\nupdate operation from the previous event has completed.\n\nBounds: [2m, 1d]. Default: 2m. When `null`, the `cooldown_period` field will be omitted from the resulting object.\n  - `yarn_config` (`list[obj]`): YARN autoscaling configuration. When `null`, the `yarn_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.basic_algorithm.yarn_config.new](#fn-basicalgorithmyarnconfignew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `basic_algorithm` sub block.\n', args=[]),
    new(
      cooldown_period=null,
      yarn_config=null
    ):: std.prune(a={
      cooldown_period: cooldown_period,
      yarn_config: yarn_config,
    }),
    yarn_config:: {
      '#new':: d.fn(help='\n`google.dataproc_autoscaling_policy.basic_algorithm.yarn_config.new` constructs a new object with attributes and blocks configured for the `yarn_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `graceful_decommission_timeout` (`string`): Timeout for YARN graceful decommissioning of Node Managers. Specifies the\nduration to wait for jobs to complete before forcefully removing workers\n(and potentially interrupting jobs). Only applicable to downscaling operations.\n\nBounds: [0s, 1d].\n  - `scale_down_factor` (`number`): Fraction of average pending memory in the last cooldown period for which to\nremove workers. A scale-down factor of 1 will result in scaling down so that there\nis no available memory remaining after the update (more aggressive scaling).\nA scale-down factor of 0 disables removing workers, which can be beneficial for\nautoscaling a single job.\n\nBounds: [0.0, 1.0].\n  - `scale_down_min_worker_fraction` (`number`): Minimum scale-down threshold as a fraction of total cluster size before scaling occurs.\nFor example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler must\nrecommend at least a 2 worker scale-down for the cluster to scale. A threshold of 0\nmeans the autoscaler will scale down on any recommended change.\n\nBounds: [0.0, 1.0]. Default: 0.0. When `null`, the `scale_down_min_worker_fraction` field will be omitted from the resulting object.\n  - `scale_up_factor` (`number`): Fraction of average pending memory in the last cooldown period for which to\nadd workers. A scale-up factor of 1.0 will result in scaling up so that there\nis no pending memory remaining after the update (more aggressive scaling).\nA scale-up factor closer to 0 will result in a smaller magnitude of scaling up\n(less aggressive scaling).\n\nBounds: [0.0, 1.0].\n  - `scale_up_min_worker_fraction` (`number`): Minimum scale-up threshold as a fraction of total cluster size before scaling\noccurs. For example, in a 20-worker cluster, a threshold of 0.1 means the autoscaler\nmust recommend at least a 2-worker scale-up for the cluster to scale. A threshold of\n0 means the autoscaler will scale up on any recommended change.\n\nBounds: [0.0, 1.0]. Default: 0.0. When `null`, the `scale_up_min_worker_fraction` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `yarn_config` sub block.\n', args=[]),
      new(
        graceful_decommission_timeout,
        scale_down_factor,
        scale_up_factor,
        scale_down_min_worker_fraction=null,
        scale_up_min_worker_fraction=null
      ):: std.prune(a={
        graceful_decommission_timeout: graceful_decommission_timeout,
        scale_down_factor: scale_down_factor,
        scale_down_min_worker_fraction: scale_down_min_worker_fraction,
        scale_up_factor: scale_up_factor,
        scale_up_min_worker_fraction: scale_up_min_worker_fraction,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.dataproc_autoscaling_policy.new` injects a new `google_dataproc_autoscaling_policy` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.dataproc_autoscaling_policy.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.dataproc_autoscaling_policy` using the reference:\n\n    $._ref.google_dataproc_autoscaling_policy.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_dataproc_autoscaling_policy.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `location` (`string`): The  location where the autoscaling policy should reside.\nThe default value is \u0026#39;global\u0026#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `policy_id` (`string`): The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 50 characters.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `basic_algorithm` (`list[obj]`): Basic algorithm for autoscaling. When `null`, the `basic_algorithm` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.basic_algorithm.new](#fn-dataprocautoscalingpolicybasicalgorithmnew) constructor.\n  - `secondary_worker_config` (`list[obj]`): Describes how the autoscaler will operate for secondary workers. When `null`, the `secondary_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.secondary_worker_config.new](#fn-dataprocautoscalingpolicysecondaryworkerconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.timeouts.new](#fn-dataprocautoscalingpolicytimeoutsnew) constructor.\n  - `worker_config` (`list[obj]`): Describes how the autoscaler will operate for primary workers. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.worker_config.new](#fn-dataprocautoscalingpolicyworkerconfignew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    policy_id,
    basic_algorithm=null,
    location=null,
    project=null,
    secondary_worker_config=null,
    timeouts=null,
    worker_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_autoscaling_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      basic_algorithm=basic_algorithm,
      location=location,
      policy_id=policy_id,
      project=project,
      secondary_worker_config=secondary_worker_config,
      timeouts=timeouts,
      worker_config=worker_config
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.dataproc_autoscaling_policy.newAttrs` constructs a new object with attributes and blocks configured for the `dataproc_autoscaling_policy`\nTerraform resource.\n\nUnlike [google.dataproc_autoscaling_policy.new](#fn-dataprocautoscalingpolicynew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `location` (`string`): The  location where the autoscaling policy should reside.\nThe default value is &#39;global&#39;. When `null`, the `location` field will be omitted from the resulting object.\n  - `policy_id` (`string`): The policy id. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),\nand hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between\n3 and 50 characters.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `basic_algorithm` (`list[obj]`): Basic algorithm for autoscaling. When `null`, the `basic_algorithm` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.basic_algorithm.new](#fn-dataprocautoscalingpolicybasicalgorithmnew) constructor.\n  - `secondary_worker_config` (`list[obj]`): Describes how the autoscaler will operate for secondary workers. When `null`, the `secondary_worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.secondary_worker_config.new](#fn-dataprocautoscalingpolicysecondaryworkerconfignew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.timeouts.new](#fn-dataprocautoscalingpolicytimeoutsnew) constructor.\n  - `worker_config` (`list[obj]`): Describes how the autoscaler will operate for primary workers. When `null`, the `worker_config` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.dataproc_autoscaling_policy.worker_config.new](#fn-dataprocautoscalingpolicyworkerconfignew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `dataproc_autoscaling_policy` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    policy_id,
    basic_algorithm=null,
    location=null,
    project=null,
    secondary_worker_config=null,
    timeouts=null,
    worker_config=null
  ):: std.prune(a={
    basic_algorithm: basic_algorithm,
    location: location,
    policy_id: policy_id,
    project: project,
    secondary_worker_config: secondary_worker_config,
    timeouts: timeouts,
    worker_config: worker_config,
  }),
  secondary_worker_config:: {
    '#new':: d.fn(help='\n`google.dataproc_autoscaling_policy.secondary_worker_config.new` constructs a new object with attributes and blocks configured for the `secondary_worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_instances` (`number`): Maximum number of instances for this group. Note that by default, clusters will not use\nsecondary workers. Required for secondary workers if the minimum secondary instances is set.\nBounds: [minInstances, ). Defaults to 0. When `null`, the `max_instances` field will be omitted from the resulting object.\n  - `min_instances` (`number`): Minimum number of instances for this group. Bounds: [0, maxInstances]. Defaults to 0. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `weight` (`number`): Weight for the instance group, which is used to determine the fraction of total workers\nin the cluster from this instance group. For example, if primary workers have weight 2,\nand secondary workers have weight 1, the cluster will have approximately 2 primary workers\nfor each secondary worker.\n\nThe cluster may not reach the specified balance if constrained by min/max bounds or other\nautoscaling settings. For example, if maxInstances for secondary workers is 0, then only\nprimary workers will be added. The cluster can also be out of balance when created.\n\nIf weight is not set on any instance group, the cluster will default to equal weight for\nall groups: the cluster will attempt to maintain an equal number of workers in each group\nwithin the configured size bounds for each group. If weight is set for one group only,\nthe cluster will default to zero weight on the unset group. For example if weight is set\nonly on primary workers, the cluster will use primary workers only and no secondary workers. When `null`, the `weight` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `secondary_worker_config` sub block.\n', args=[]),
    new(
      max_instances=null,
      min_instances=null,
      weight=null
    ):: std.prune(a={
      max_instances: max_instances,
      min_instances: min_instances,
      weight: weight,
    }),
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.dataproc_autoscaling_policy.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withBasicAlgorithm':: d.fn(help='`google.list[obj].withBasicAlgorithm` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the basic_algorithm field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withBasicAlgorithmMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `basic_algorithm` field.\n', args=[]),
  withBasicAlgorithm(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          basic_algorithm: value,
        },
      },
    },
  },
  '#withBasicAlgorithmMixin':: d.fn(help='`google.list[obj].withBasicAlgorithmMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the basic_algorithm field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withBasicAlgorithm](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `basic_algorithm` field.\n', args=[]),
  withBasicAlgorithmMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          basic_algorithm+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withPolicyId':: d.fn(help='`google.string.withPolicyId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the policy_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `policy_id` field.\n', args=[]),
  withPolicyId(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          policy_id: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withSecondaryWorkerConfig':: d.fn(help='`google.list[obj].withSecondaryWorkerConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secondary_worker_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withSecondaryWorkerConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secondary_worker_config` field.\n', args=[]),
  withSecondaryWorkerConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          secondary_worker_config: value,
        },
      },
    },
  },
  '#withSecondaryWorkerConfigMixin':: d.fn(help='`google.list[obj].withSecondaryWorkerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the secondary_worker_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withSecondaryWorkerConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `secondary_worker_config` field.\n', args=[]),
  withSecondaryWorkerConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          secondary_worker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  '#withWorkerConfig':: d.fn(help='`google.list[obj].withWorkerConfig` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the worker_config field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withWorkerConfigMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `worker_config` field.\n', args=[]),
  withWorkerConfig(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          worker_config: value,
        },
      },
    },
  },
  '#withWorkerConfigMixin':: d.fn(help='`google.list[obj].withWorkerConfigMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the worker_config field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withWorkerConfig](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `worker_config` field.\n', args=[]),
  withWorkerConfigMixin(resourceLabel, value): {
    resource+: {
      google_dataproc_autoscaling_policy+: {
        [resourceLabel]+: {
          worker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  worker_config:: {
    '#new':: d.fn(help='\n`google.dataproc_autoscaling_policy.worker_config.new` constructs a new object with attributes and blocks configured for the `worker_config`\nTerraform sub block.\n\n\n\n**Args**:\n  - `max_instances` (`number`): Maximum number of instances for this group.\n  - `min_instances` (`number`): Minimum number of instances for this group. Bounds: [2, maxInstances]. Defaults to 2. When `null`, the `min_instances` field will be omitted from the resulting object.\n  - `weight` (`number`): Weight for the instance group, which is used to determine the fraction of total workers\nin the cluster from this instance group. For example, if primary workers have weight 2,\nand secondary workers have weight 1, the cluster will have approximately 2 primary workers\nfor each secondary worker.\n\nThe cluster may not reach the specified balance if constrained by min/max bounds or other\nautoscaling settings. For example, if maxInstances for secondary workers is 0, then only\nprimary workers will be added. The cluster can also be out of balance when created.\n\nIf weight is not set on any instance group, the cluster will default to equal weight for\nall groups: the cluster will attempt to maintain an equal number of workers in each group\nwithin the configured size bounds for each group. If weight is set for one group only,\nthe cluster will default to zero weight on the unset group. For example if weight is set\nonly on primary workers, the cluster will use primary workers only and no secondary workers. When `null`, the `weight` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `worker_config` sub block.\n', args=[]),
    new(
      max_instances,
      min_instances=null,
      weight=null
    ):: std.prune(a={
      max_instances: max_instances,
      min_instances: min_instances,
      weight: weight,
    }),
  },
}

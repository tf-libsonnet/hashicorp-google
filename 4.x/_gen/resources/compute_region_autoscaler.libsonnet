local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='compute_region_autoscaler', url='', help='`compute_region_autoscaler` represents the `google_compute_region_autoscaler` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  autoscaling_policy:: {
    cpu_utilization:: {
      '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.cpu_utilization.new` constructs a new object with attributes and blocks configured for the `cpu_utilization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `predictive_method` (`string`): Indicates whether predictive autoscaling based on CPU metric is enabled. Valid values are:\n\n- NONE (default). No predictive method is used. The autoscaler scales the group to meet current demand based on real-time metrics.\n\n- OPTIMIZE_AVAILABILITY. Predictive autoscaling improves availability by monitoring daily and weekly load patterns and scaling out ahead of anticipated demand. When `null`, the `predictive_method` field will be omitted from the resulting object.\n  - `target` (`number`): The target CPU utilization that the autoscaler should maintain.\nMust be a float value in the range (0, 1]. If not specified, the\ndefault is 0.6.\n\nIf the CPU level is below the target utilization, the autoscaler\nscales down the number of instances until it reaches the minimum\nnumber of instances you specified or until the average CPU of\nyour instances reaches the target utilization.\n\nIf the average CPU is above the target utilization, the autoscaler\nscales up until it reaches the maximum number of instances you\nspecified or until the average utilization reaches the target\nutilization.\n\n**Returns**:\n  - An attribute object that represents the `cpu_utilization` sub block.\n', args=[]),
      new(
        target,
        predictive_method=null
      ):: std.prune(a={
        predictive_method: predictive_method,
        target: target,
      }),
    },
    load_balancing_utilization:: {
      '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.load_balancing_utilization.new` constructs a new object with attributes and blocks configured for the `load_balancing_utilization`\nTerraform sub block.\n\n\n\n**Args**:\n  - `target` (`number`): Fraction of backend capacity utilization (set in HTTP(s) load\nbalancing configuration) that autoscaler should maintain. Must\nbe a positive float value. If not defined, the default is 0.8.\n\n**Returns**:\n  - An attribute object that represents the `load_balancing_utilization` sub block.\n', args=[]),
      new(
        target
      ):: std.prune(a={
        target: target,
      }),
    },
    metric:: {
      '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.metric.new` constructs a new object with attributes and blocks configured for the `metric`\nTerraform sub block.\n\n\n\n**Args**:\n  - `name` (`string`): The identifier (type) of the Stackdriver Monitoring metric.\nThe metric cannot have negative values.\n\nThe metric must have a value type of INT64 or DOUBLE.\n  - `target` (`number`): The target value of the metric that autoscaler should\nmaintain. This must be a positive value. A utilization\nmetric scales number of virtual machines handling requests\nto increase or decrease proportionally to the metric.\n\nFor example, a good metric to use as a utilizationTarget is\nwww.googleapis.com/compute/instance/network/received_bytes_count.\nThe autoscaler will work to keep this value constant for each\nof the instances. When `null`, the `target` field will be omitted from the resulting object.\n  - `type` (`string`): Defines how target utilization value is expressed for a\nStackdriver Monitoring metric. Possible values: [&#34;GAUGE&#34;, &#34;DELTA_PER_SECOND&#34;, &#34;DELTA_PER_MINUTE&#34;] When `null`, the `type` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `metric` sub block.\n', args=[]),
      new(
        name,
        target=null,
        type=null
      ):: std.prune(a={
        name: name,
        target: target,
        type: type,
      }),
    },
    '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.new` constructs a new object with attributes and blocks configured for the `autoscaling_policy`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cooldown_period` (`number`): The number of seconds that the autoscaler should wait before it\nstarts collecting information from a new instance. This prevents\nthe autoscaler from collecting information when the instance is\ninitializing, during which the collected usage would not be\nreliable. The default time autoscaler waits is 60 seconds.\n\nVirtual machine initialization times might vary because of\nnumerous factors. We recommend that you test how long an\ninstance may take to initialize. To do this, create an instance\nand time the startup process. When `null`, the `cooldown_period` field will be omitted from the resulting object.\n  - `max_replicas` (`number`): The maximum number of instances that the autoscaler can scale up\nto. This is required when creating or updating an autoscaler. The\nmaximum number of replicas should not be lower than minimal number\nof replicas.\n  - `min_replicas` (`number`): The minimum number of replicas that the autoscaler can scale down\nto. This cannot be less than 0. If not provided, autoscaler will\nchoose a default value depending on maximum number of instances\nallowed.\n  - `mode` (`string`): Defines operating mode for this policy. Default value: &#34;ON&#34; Possible values: [&#34;OFF&#34;, &#34;ONLY_UP&#34;, &#34;ON&#34;] When `null`, the `mode` field will be omitted from the resulting object.\n  - `cpu_utilization` (`list[obj]`): Defines the CPU utilization policy that allows the autoscaler to\nscale based on the average CPU utilization of a managed instance\ngroup. When `null`, the `cpu_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.cpu_utilization.new](#fn-autoscaling_policycpu_utilizationnew) constructor.\n  - `load_balancing_utilization` (`list[obj]`): Configuration parameters of autoscaling based on a load balancer. When `null`, the `load_balancing_utilization` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.load_balancing_utilization.new](#fn-autoscaling_policyload_balancing_utilizationnew) constructor.\n  - `metric` (`list[obj]`): Configuration parameters of autoscaling based on a custom metric. When `null`, the `metric` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.metric.new](#fn-autoscaling_policymetricnew) constructor.\n  - `scale_in_control` (`list[obj]`): Defines scale in controls to reduce the risk of response latency\nand outages due to abrupt scale-in events When `null`, the `scale_in_control` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.scale_in_control.new](#fn-autoscaling_policyscale_in_controlnew) constructor.\n  - `scaling_schedules` (`list[obj]`): Scaling schedules defined for an autoscaler. Multiple schedules can be set on an autoscaler and they can overlap. When `null`, the `scaling_schedules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.scaling_schedules.new](#fn-autoscaling_policyscaling_schedulesnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `autoscaling_policy` sub block.\n', args=[]),
    new(
      max_replicas,
      min_replicas,
      cooldown_period=null,
      cpu_utilization=null,
      load_balancing_utilization=null,
      metric=null,
      mode=null,
      scale_in_control=null,
      scaling_schedules=null
    ):: std.prune(a={
      cooldown_period: cooldown_period,
      cpu_utilization: cpu_utilization,
      load_balancing_utilization: load_balancing_utilization,
      max_replicas: max_replicas,
      metric: metric,
      min_replicas: min_replicas,
      mode: mode,
      scale_in_control: scale_in_control,
      scaling_schedules: scaling_schedules,
    }),
    scale_in_control:: {
      max_scaled_in_replicas:: {
        '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.scale_in_control.max_scaled_in_replicas.new` constructs a new object with attributes and blocks configured for the `max_scaled_in_replicas`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fixed` (`number`): Specifies a fixed number of VM instances. This must be a positive\ninteger. When `null`, the `fixed` field will be omitted from the resulting object.\n  - `percent` (`number`): Specifies a percentage of instances between 0 to 100%, inclusive.\nFor example, specify 80 for 80%. When `null`, the `percent` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `max_scaled_in_replicas` sub block.\n', args=[]),
        new(
          fixed=null,
          percent=null
        ):: std.prune(a={
          fixed: fixed,
          percent: percent,
        }),
      },
      '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.scale_in_control.new` constructs a new object with attributes and blocks configured for the `scale_in_control`\nTerraform sub block.\n\n\n\n**Args**:\n  - `time_window_sec` (`number`): How long back autoscaling should look when computing recommendations\nto include directives regarding slower scale down, as described above. When `null`, the `time_window_sec` field will be omitted from the resulting object.\n  - `max_scaled_in_replicas` (`list[obj]`): A nested object resource When `null`, the `max_scaled_in_replicas` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.scale_in_control.max_scaled_in_replicas.new](#fn-autoscaling_policyautoscaling_policymax_scaled_in_replicasnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `scale_in_control` sub block.\n', args=[]),
      new(
        max_scaled_in_replicas=null,
        time_window_sec=null
      ):: std.prune(a={
        max_scaled_in_replicas: max_scaled_in_replicas,
        time_window_sec: time_window_sec,
      }),
    },
    scaling_schedules:: {
      '#new':: d.fn(help='\n`google.compute_region_autoscaler.autoscaling_policy.scaling_schedules.new` constructs a new object with attributes and blocks configured for the `scaling_schedules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `description` (`string`): A description of a scaling schedule. When `null`, the `description` field will be omitted from the resulting object.\n  - `disabled` (`bool`): A boolean value that specifies if a scaling schedule can influence autoscaler recommendations. If set to true, then a scaling schedule has no effect. When `null`, the `disabled` field will be omitted from the resulting object.\n  - `duration_sec` (`number`): The duration of time intervals (in seconds) for which this scaling schedule will be running. The minimum allowed value is 300.\n  - `min_required_replicas` (`number`): Minimum number of VM instances that autoscaler will recommend in time intervals starting according to schedule.\n  - `name` (`string`): \n  - `schedule` (`string`): The start timestamps of time intervals when this scaling schedule should provide a scaling signal. This field uses the extended cron format (with an optional year field).\n  - `time_zone` (`string`): The time zone to be used when interpreting the schedule. The value of this field must be a time zone name from the tz database: http://en.wikipedia.org/wiki/Tz_database. When `null`, the `time_zone` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `scaling_schedules` sub block.\n', args=[]),
      new(
        duration_sec,
        min_required_replicas,
        name,
        schedule,
        description=null,
        disabled=null,
        time_zone=null
      ):: std.prune(a={
        description: description,
        disabled: disabled,
        duration_sec: duration_sec,
        min_required_replicas: min_required_replicas,
        name: name,
        schedule: schedule,
        time_zone: time_zone,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.compute_region_autoscaler.new` injects a new `google_compute_region_autoscaler` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.compute_region_autoscaler.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.compute_region_autoscaler` using the reference:\n\n    $._ref.google_compute_region_autoscaler.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_compute_region_autoscaler.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match\nthe regular expression \u0026#39;[a-z]([-a-z0-9]*[a-z0-9])?\u0026#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where the instance group resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `target` (`string`): URL of the managed instance group that this autoscaler will scale.\n  - `autoscaling_policy` (`list[obj]`): The configuration parameters for the autoscaling algorithm. You can\ndefine one or more of the policies for an autoscaler: cpuUtilization,\ncustomMetricUtilizations, and loadBalancingUtilization.\n\nIf none of these are specified, the default will be to autoscale based\non cpuUtilization to 0.6 or 60%. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    name,
    target,
    autoscaling_policy=null,
    description=null,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_autoscaler',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling_policy=autoscaling_policy,
      description=description,
      name=name,
      project=project,
      region=region,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.compute_region_autoscaler.newAttrs` constructs a new object with attributes and blocks configured for the `compute_region_autoscaler`\nTerraform resource.\n\nUnlike [google.compute_region_autoscaler.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `description` (`string`): An optional description of this resource. When `null`, the `description` field will be omitted from the resulting object.\n  - `name` (`string`): Name of the resource. The name must be 1-63 characters long and match\nthe regular expression &#39;[a-z]([-a-z0-9]*[a-z0-9])?&#39; which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `region` (`string`): URL of the region where the instance group resides. When `null`, the `region` field will be omitted from the resulting object.\n  - `target` (`string`): URL of the managed instance group that this autoscaler will scale.\n  - `autoscaling_policy` (`list[obj]`): The configuration parameters for the autoscaling algorithm. You can\ndefine one or more of the policies for an autoscaler: cpuUtilization,\ncustomMetricUtilizations, and loadBalancingUtilization.\n\nIf none of these are specified, the default will be to autoscale based\non cpuUtilization to 0.6 or 60%. When `null`, the `autoscaling_policy` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.autoscaling_policy.new](#fn-autoscaling_policynew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.compute_region_autoscaler.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `compute_region_autoscaler` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    name,
    target,
    autoscaling_policy=null,
    description=null,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    autoscaling_policy: autoscaling_policy,
    description: description,
    name: name,
    project: project,
    region: region,
    target: target,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.compute_region_autoscaler.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withAutoscalingPolicy':: d.fn(help='`google.list[obj].withAutoscalingPolicy` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling_policy field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withAutoscalingPolicyMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.\n', args=[]),
  withAutoscalingPolicy(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          autoscaling_policy: value,
        },
      },
    },
  },
  '#withAutoscalingPolicyMixin':: d.fn(help='`google.list[obj].withAutoscalingPolicyMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the autoscaling_policy field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withAutoscalingPolicy](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `autoscaling_policy` field.\n', args=[]),
  withAutoscalingPolicyMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          autoscaling_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withName':: d.fn(help='`google.string.withName` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the name field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `name` field.\n', args=[]),
  withName(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withRegion':: d.fn(help='`google.string.withRegion` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the region field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `region` field.\n', args=[]),
  withRegion(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  '#withTarget':: d.fn(help='`google.string.withTarget` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the target field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `target` field.\n', args=[]),
  withTarget(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_compute_region_autoscaler+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

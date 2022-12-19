local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='game_services_game_server_config', url='', help='`game_services_game_server_config` represents the `google_game_services_game_server_config` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  fleet_configs:: {
    '#new':: d.fn(help='\n`google.game_services_game_server_config.fleet_configs.new` constructs a new object with attributes and blocks configured for the `fleet_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fleet_spec` (`string`): The fleet spec, which is sent to Agones to configure fleet.\nThe spec can be passed as inline json but it is recommended to use a file reference\ninstead. File references can contain the json or yaml format of the fleet spec. Eg:\n\n* fleet_spec = jsonencode(yamldecode(file(&#34;fleet_configs.yaml&#34;)))\n* fleet_spec = file(&#34;fleet_configs.json&#34;)\n\nThe format of the spec can be found :\n&#39;https://agones.dev/site/docs/reference/fleet/&#39;.\n  - `name` (`string`): The name of the FleetConfig. When `null`, the `name` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `fleet_configs` sub block.\n', args=[]),
    new(
      fleet_spec,
      name=null
    ):: std.prune(a={
      fleet_spec: fleet_spec,
      name: name,
    }),
  },
  '#new':: d.fn(help="\n`google.game_services_game_server_config.new` injects a new `google_game_services_game_server_config` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.game_services_game_server_config.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.game_services_game_server_config` using the reference:\n\n    $._ref.google_game_services_game_server_config.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_game_services_game_server_config.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `config_id` (`string`): A unique id for the deployment config.\n  - `deployment_id` (`string`): A unique id for the deployment.\n  - `description` (`string`): The description of the game server config. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this game server config. Each label is a\nkey-value pair. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Deployment. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `fleet_configs` (`list[obj]`): The fleet config contains list of fleet specs. In the Single Cloud, there\nwill be only one. When `null`, the `fleet_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.fleet_configs.new](#fn-fleet_configsnew) constructor.\n  - `scaling_configs` (`list[obj]`): Optional. This contains the autoscaling settings. When `null`, the `scaling_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.new](#fn-scaling_configsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    config_id,
    deployment_id,
    description=null,
    fleet_configs=null,
    labels=null,
    location=null,
    project=null,
    scaling_configs=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_game_server_config',
    label=resourceLabel,
    attrs=self.newAttrs(
      config_id=config_id,
      deployment_id=deployment_id,
      description=description,
      fleet_configs=fleet_configs,
      labels=labels,
      location=location,
      project=project,
      scaling_configs=scaling_configs,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.game_services_game_server_config.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_config`\nTerraform resource.\n\nUnlike [google.game_services_game_server_config.new](#fn-new), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `config_id` (`string`): A unique id for the deployment config.\n  - `deployment_id` (`string`): A unique id for the deployment.\n  - `description` (`string`): The description of the game server config. When `null`, the `description` field will be omitted from the resulting object.\n  - `labels` (`obj`): The labels associated with this game server config. Each label is a\nkey-value pair. When `null`, the `labels` field will be omitted from the resulting object.\n  - `location` (`string`): Location of the Deployment. When `null`, the `location` field will be omitted from the resulting object.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `fleet_configs` (`list[obj]`): The fleet config contains list of fleet specs. In the Single Cloud, there\nwill be only one. When `null`, the `fleet_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.fleet_configs.new](#fn-fleet_configsnew) constructor.\n  - `scaling_configs` (`list[obj]`): Optional. This contains the autoscaling settings. When `null`, the `scaling_configs` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.new](#fn-scaling_configsnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.timeouts.new](#fn-timeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_config` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    config_id,
    deployment_id,
    description=null,
    fleet_configs=null,
    labels=null,
    location=null,
    project=null,
    scaling_configs=null,
    timeouts=null
  ):: std.prune(a={
    config_id: config_id,
    deployment_id: deployment_id,
    description: description,
    fleet_configs: fleet_configs,
    labels: labels,
    location: location,
    project: project,
    scaling_configs: scaling_configs,
    timeouts: timeouts,
  }),
  scaling_configs:: {
    '#new':: d.fn(help='\n`google.game_services_game_server_config.scaling_configs.new` constructs a new object with attributes and blocks configured for the `scaling_configs`\nTerraform sub block.\n\n\n\n**Args**:\n  - `fleet_autoscaler_spec` (`string`): Fleet autoscaler spec, which is sent to Agones.\nExample spec can be found :\nhttps://agones.dev/site/docs/reference/fleetautoscaler/\n  - `name` (`string`): The name of the ScalingConfig\n  - `schedules` (`list[obj]`): The schedules to which this scaling config applies. When `null`, the `schedules` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.schedules.new](#fn-schedulesnew) constructor.\n  - `selectors` (`list[obj]`): Labels used to identify the clusters to which this scaling config\napplies. A cluster is subject to this scaling config if its labels match\nany of the selector entries. When `null`, the `selectors` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_config.scaling_configs.selectors.new](#fn-selectorsnew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `scaling_configs` sub block.\n', args=[]),
    new(
      fleet_autoscaler_spec,
      name,
      schedules=null,
      selectors=null
    ):: std.prune(a={
      fleet_autoscaler_spec: fleet_autoscaler_spec,
      name: name,
      schedules: schedules,
      selectors: selectors,
    }),
    schedules:: {
      '#new':: d.fn(help='\n`google.game_services_game_server_config.scaling_configs.schedules.new` constructs a new object with attributes and blocks configured for the `schedules`\nTerraform sub block.\n\n\n\n**Args**:\n  - `cron_job_duration` (`string`): The duration for the cron job event. The duration of the event is effective\nafter the cron job&#39;s start time.\n\nA duration in seconds with up to nine fractional digits, terminated by &#39;s&#39;. Example: &#34;3.5s&#34;. When `null`, the `cron_job_duration` field will be omitted from the resulting object.\n  - `cron_spec` (`string`): The cron definition of the scheduled event. See\nhttps://en.wikipedia.org/wiki/Cron. Cron spec specifies the local time as\ndefined by the realm. When `null`, the `cron_spec` field will be omitted from the resulting object.\n  - `end_time` (`string`): The end time of the event.\n\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `end_time` field will be omitted from the resulting object.\n  - `start_time` (`string`): The start time of the event.\n\nA timestamp in RFC3339 UTC &#34;Zulu&#34; format, accurate to nanoseconds. Example: &#34;2014-10-02T15:01:23.045123456Z&#34;. When `null`, the `start_time` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `schedules` sub block.\n', args=[]),
      new(
        cron_job_duration=null,
        cron_spec=null,
        end_time=null,
        start_time=null
      ):: std.prune(a={
        cron_job_duration: cron_job_duration,
        cron_spec: cron_spec,
        end_time: end_time,
        start_time: start_time,
      }),
    },
    selectors:: {
      '#new':: d.fn(help='\n`google.game_services_game_server_config.scaling_configs.selectors.new` constructs a new object with attributes and blocks configured for the `selectors`\nTerraform sub block.\n\n\n\n**Args**:\n  - `labels` (`obj`): Set of labels to group by. When `null`, the `labels` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `selectors` sub block.\n', args=[]),
      new(
        labels=null
      ):: std.prune(a={
        labels: labels,
      }),
    },
  },
  timeouts:: {
    '#new':: d.fn(help='\n`google.game_services_game_server_config.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  '#withConfigId':: d.fn(help='`google.string.withConfigId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the config_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `config_id` field.\n', args=[]),
  withConfigId(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          config_id: value,
        },
      },
    },
  },
  '#withDeploymentId':: d.fn(help='`google.string.withDeploymentId` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the deployment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deployment_id` field.\n', args=[]),
  withDeploymentId(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          deployment_id: value,
        },
      },
    },
  },
  '#withDescription':: d.fn(help='`google.string.withDescription` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the description field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `description` field.\n', args=[]),
  withDescription(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  '#withFleetConfigs':: d.fn(help='`google.list[obj].withFleetConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withFleetConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet_configs` field.\n', args=[]),
  withFleetConfigs(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          fleet_configs: value,
        },
      },
    },
  },
  '#withFleetConfigsMixin':: d.fn(help='`google.list[obj].withFleetConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the fleet_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withFleetConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `fleet_configs` field.\n', args=[]),
  withFleetConfigsMixin(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          fleet_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withLabels':: d.fn(help='`google.obj.withLabels` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the labels field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `labels` field.\n', args=[]),
  withLabels(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  '#withLocation':: d.fn(help='`google.string.withLocation` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the location field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `location` field.\n', args=[]),
  withLocation(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.string.withProject` constructs a mixin object that can be merged into the `string`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withScalingConfigs':: d.fn(help='`google.list[obj].withScalingConfigs` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scaling_configs field.\n\nThis function will replace the array with the passed in `value`. If you wish to instead append the\npassed in value to the existing array, use the [google.list[obj].withScalingConfigsMixin](TODO) function.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scaling_configs` field.\n', args=[]),
  withScalingConfigs(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          scaling_configs: value,
        },
      },
    },
  },
  '#withScalingConfigsMixin':: d.fn(help='`google.list[obj].withScalingConfigsMixin` constructs a mixin object that can be merged into the `list[obj]`\nTerraform resource block to set or update the scaling_configs field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.list[obj].withScalingConfigs](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`list[obj]`): The value to set for the `scaling_configs` field.\n', args=[]),
  withScalingConfigsMixin(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          scaling_configs+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.obj.withTimeouts` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will replace the map with the passed in `value`. If you wish to instead merge the\npassed in value to the existing map, use the [google.obj.withTimeoutsMixin](TODO) function.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.obj.withTimeoutsMixin` constructs a mixin object that can be merged into the `obj`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.obj.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`obj`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value): {
    resource+: {
      google_game_services_game_server_config+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='game_services_game_server_deployment_rollout', url='', help='`game_services_game_server_deployment_rollout` represents the `google_game_services_game_server_deployment_rollout` Terraform resource.\n\n\n\nThis package contains functions and utilities for setting up the resource using Jsonnet code.\n'),
  game_server_config_overrides:: {
    '#new':: d.fn(help='\n`google.game_services_game_server_deployment_rollout.game_server_config_overrides.new` constructs a new object with attributes and blocks configured for the `game_server_config_overrides`\nTerraform sub block.\n\n\n\n**Args**:\n  - `config_version` (`string`): Version of the configuration. When `null`, the `config_version` field will be omitted from the resulting object.\n  - `realms_selector` (`list[obj]`): Selection by realms. When `null`, the `realms_selector` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.game_server_config_overrides.realms_selector.new](#fn-gameserverconfigoverridesrealmsselectornew) constructor.\n\n**Returns**:\n  - An attribute object that represents the `game_server_config_overrides` sub block.\n', args=[]),
    new(
      config_version=null,
      realms_selector=null
    ):: std.prune(a={
      config_version: config_version,
      realms_selector: realms_selector,
    }),
    realms_selector:: {
      '#new':: d.fn(help='\n`google.game_services_game_server_deployment_rollout.game_server_config_overrides.realms_selector.new` constructs a new object with attributes and blocks configured for the `realms_selector`\nTerraform sub block.\n\n\n\n**Args**:\n  - `realms` (`list`): List of realms to match against. When `null`, the `realms` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `realms_selector` sub block.\n', args=[]),
      new(
        realms=null
      ):: std.prune(a={
        realms: realms,
      }),
    },
  },
  '#new':: d.fn(help="\n`google.game_services_game_server_deployment_rollout.new` injects a new `google_game_services_game_server_deployment_rollout` Terraform `resource`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.game_services_game_server_deployment_rollout.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.game_services_game_server_deployment_rollout` using the reference:\n\n    $._ref.google_game_services_game_server_deployment_rollout.some_id.get('id')\n\nThis is the same as directly entering `\"${ google_game_services_game_server_deployment_rollout.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block.\n  - `default_game_server_config` (`string`): This field points to the game server config that is\napplied by default to all realms and clusters. For example,\n\n\u0026#39;projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config\u0026#39;.\n  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `game_server_config_overrides` (`list[obj]`): The game_server_config_overrides contains the per game server config\noverrides. The overrides are processed in the order they are listed. As\nsoon as a match is found for a cluster, the rest of the list is not\nprocessed. When `null`, the `game_server_config_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.game_server_config_overrides.new](#fn-gameservicesgameserverdeploymentrolloutgameserverconfigoverridesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.timeouts.new](#fn-gameservicesgameserverdeploymentrollouttimeoutsnew) constructor.\n\n**Returns**:\n- A mixin object that injects the new resource into the root Terraform configuration.\n", args=[]),
  new(
    resourceLabel,
    default_game_server_config,
    deployment_id,
    game_server_config_overrides=null,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_game_services_game_server_deployment_rollout',
    label=resourceLabel,
    attrs=self.newAttrs(
      default_game_server_config=default_game_server_config,
      deployment_id=deployment_id,
      game_server_config_overrides=game_server_config_overrides,
      project=project,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.game_services_game_server_deployment_rollout.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_deployment_rollout`\nTerraform resource.\n\nUnlike [google.game_services_game_server_deployment_rollout.new](#fn-gameservicesgameserverdeploymentrolloutnew), this function will not inject the `resource`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `default_game_server_config` (`string`): This field points to the game server config that is\napplied by default to all realms and clusters. For example,\n\n&#39;projects/my-project/locations/global/gameServerDeployments/my-game/configs/my-config&#39;.\n  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.\n  - `project` (`string`):  When `null`, the `project` field will be omitted from the resulting object.\n  - `game_server_config_overrides` (`list[obj]`): The game_server_config_overrides contains the per game server config\noverrides. The overrides are processed in the order they are listed. As\nsoon as a match is found for a cluster, the rest of the list is not\nprocessed. When `null`, the `game_server_config_overrides` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.game_server_config_overrides.new](#fn-gameservicesgameserverdeploymentrolloutgameserverconfigoverridesnew) constructor.\n  - `timeouts` (`obj`):  When `null`, the `timeouts` sub block will be omitted from the resulting object. When setting the sub block, it is recommended to construct the object using the [google.game_services_game_server_deployment_rollout.timeouts.new](#fn-gameservicesgameserverdeploymentrollouttimeoutsnew) constructor.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withResource](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withresource) to construct a new `game_services_game_server_deployment_rollout` resource into the root Terraform configuration.\n', args=[]),
  newAttrs(
    default_game_server_config,
    deployment_id,
    game_server_config_overrides=null,
    project=null,
    timeouts=null
  ):: std.prune(a={
    default_game_server_config: default_game_server_config,
    deployment_id: deployment_id,
    game_server_config_overrides: game_server_config_overrides,
    project: project,
    timeouts: timeouts,
  }),
  timeouts:: {
    '#new':: d.fn(help='\n`google.game_services_game_server_deployment_rollout.timeouts.new` constructs a new object with attributes and blocks configured for the `timeouts`\nTerraform sub block.\n\n\n\n**Args**:\n  - `create` (`string`):  When `null`, the `create` field will be omitted from the resulting object.\n  - `delete` (`string`):  When `null`, the `delete` field will be omitted from the resulting object.\n  - `update` (`string`):  When `null`, the `update` field will be omitted from the resulting object.\n\n**Returns**:\n  - An attribute object that represents the `timeouts` sub block.\n', args=[]),
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
  '#withDefaultGameServerConfig':: d.fn(help='`google.game_services_game_server_deployment_rollout.withDefaultGameServerConfig` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the default_game_server_config field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `default_game_server_config` field.\n', args=[]),
  withDefaultGameServerConfig(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          default_game_server_config: value,
        },
      },
    },
  },
  '#withDeploymentId':: d.fn(help='`google.game_services_game_server_deployment_rollout.withDeploymentId` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the deployment_id field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `deployment_id` field.\n', args=[]),
  withDeploymentId(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          deployment_id: value,
        },
      },
    },
  },
  '#withGameServerConfigOverrides':: d.fn(help='`google.game_services_game_server_deployment_rollout.withGameServerConfigOverrides` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the game_server_config_overrides field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `game_server_config_overrides` field.\n', args=[]),
  withGameServerConfigOverrides(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          game_server_config_overrides: value,
        },
      },
    },
  },
  '#withGameServerConfigOverridesMixin':: d.fn(help='`google.game_services_game_server_deployment_rollout.withGameServerConfigOverridesMixin` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the game_server_config_overrides field.\n\nThis function will append the passed in array or object to the existing array. If you wish\nto instead replace the array with the passed in `value`, use the [google.game_services_game_server_deployment_rollout.withGameServerConfigOverrides](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `game_server_config_overrides` field.\n', args=[]),
  withGameServerConfigOverridesMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          game_server_config_overrides+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  '#withProject':: d.fn(help='`google.game_services_game_server_deployment_rollout.withProject` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the project field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `project` field.\n', args=[]),
  withProject(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  '#withTimeouts':: d.fn(help='`google.game_services_game_server_deployment_rollout.withTimeouts` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the timeouts field.\n\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  '#withTimeoutsMixin':: d.fn(help='`google.game_services_game_server_deployment_rollout.withTimeoutsMixin` constructs a mixin object that can be merged into the `game_services_game_server_deployment_rollout`\nTerraform resource block to set or update the timeouts field.\n\nThis function will merge the passed in value to the existing map. If you wish\nto instead replace the entire map with the passed in `value`, use the [google.game_services_game_server_deployment_rollout.withTimeouts](TODO)\nfunction.\n\n\n**Args**:\n  - `resourceLabel` (`string`): The name label of the block to update.\n  - `value` (`TODO`): The value to set for the `timeouts` field.\n', args=[]),
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_game_services_game_server_deployment_rollout+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

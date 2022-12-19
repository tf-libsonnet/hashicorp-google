local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
local d = (import 'github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet');
{
  '#':: d.pkg(name='game_services_game_server_deployment_rollout', url='', help='`game_services_game_server_deployment_rollout` represents the `google_game_services_game_server_deployment_rollout` Terraform data source.\n\n\n\nThis package contains functions and utilities for setting up the data source using Jsonnet code.\n'),
  '#new':: d.fn(help="\n`google.data.game_services_game_server_deployment_rollout.new` injects a new `data_google_game_services_game_server_deployment_rollout` Terraform `data source`\nblock into the root module document.\n\nAdditionally, this inserts a private function into the `_ref` attribute that generates references to attributes of the\nresource. For example, if you added a new instance to the root using:\n\n    # arguments omitted for brevity\n    google.data.game_services_game_server_deployment_rollout.new('some_id')\n\nYou can get the reference to the `id` field of the created `google.data.game_services_game_server_deployment_rollout` using the reference:\n\n    $._ref.data_google_game_services_game_server_deployment_rollout.some_id.get('id')\n\nThis is the same as directly entering `\"${ data_google_game_services_game_server_deployment_rollout.some_id.id }\"` as the value.\n\nNOTE: if you are chaining multiple resources together in a merge operation, you may not be able to use `super`, `self`,\nor `$` to refer to the root object. Instead, make an explicit outer object using `local`.\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block.\n  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.\n\n**Returns**:\n- A mixin object that injects the new data source into the root Terraform configuration.\n", args=[]),
  new(
    dataSrcLabel,
    deployment_id,
    _meta={}
  ):: tf.withData(
    type='google_game_services_game_server_deployment_rollout',
    label=dataSrcLabel,
    attrs=self.newAttrs(deployment_id=deployment_id),
    _meta=_meta
  ),
  '#newAttrs':: d.fn(help='\n`google.data.game_services_game_server_deployment_rollout.newAttrs` constructs a new object with attributes and blocks configured for the `game_services_game_server_deployment_rollout`\nTerraform data source.\n\nUnlike [google.data.game_services_game_server_deployment_rollout.new](#fn-gameservicesgameserverdeploymentrolloutnew), this function will not inject the `data source`\nblock into the root Terraform document. Instead, this must be passed in as the `attrs` argument for the\n[tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) function to build a complete block.\n\nThis is most useful when you need to preprocess the attributes with functions, conditional, or looping logic prior to\ninjecting into a complete block.\n\n**Args**:\n  - `deployment_id` (`string`): The deployment to rollout the new config to. Only 1 rollout must be associated with each deployment.\n\n**Returns**:\n  - An attribute object that can be used with [tf.withData](https://github.com/tf-libsonnet/core/tree/main/docs#fn-withdata) to construct a new `game_services_game_server_deployment_rollout` data source into the root Terraform configuration.\n', args=[]),
  newAttrs(
    deployment_id
  ):: std.prune(a={
    deployment_id: deployment_id,
  }),
  '#withDeploymentId':: d.fn(help='`google.string.withDeploymentId` constructs a mixin object that can be merged into the `string`\nTerraform data source block to set or update the deployment_id field.\n\n\n\n**Args**:\n  - `dataSrcLabel` (`string`): The name label of the block to update.\n  - `value` (`string`): The value to set for the `deployment_id` field.\n', args=[]),
  withDeploymentId(dataSrcLabel, value): {
    data+: {
      google_game_services_game_server_deployment_rollout+: {
        [dataSrcLabel]+: {
          deployment_id: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
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
  newAttrs(
    deployment_id
  ):: std.prune(a={
    deployment_id: deployment_id,
  }),
  withDeploymentId(dataSrcLabel, value):: {
    data+: {
      google_game_services_game_server_deployment_rollout+: {
        [dataSrcLabel]+: {
          deployment_id: value,
        },
      },
    },
  },
}

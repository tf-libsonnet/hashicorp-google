local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    consumer_project,
    policy_data,
    service_name,
    _meta={}
  ):: tf.withResource(
    type='google_endpoints_service_consumers_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(consumer_project=consumer_project, policy_data=policy_data, service_name=service_name),
    _meta=_meta
  ),
  newAttrs(
    consumer_project,
    policy_data,
    service_name
  ):: std.prune(a={
    consumer_project: consumer_project,
    policy_data: policy_data,
    service_name: service_name,
  }),
  withConsumerProject(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_policy+: {
        [resourceLabel]+: {
          consumer_project: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withServiceName(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_policy+: {
        [resourceLabel]+: {
          service_name: value,
        },
      },
    },
  },
}

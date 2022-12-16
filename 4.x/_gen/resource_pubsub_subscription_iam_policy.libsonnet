local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    subscription,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_subscription_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, subscription=subscription),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    subscription,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    subscription: subscription,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSubscription(resourceLabel, value):: {
    resource+: {
      google_pubsub_subscription_iam_policy+: {
        [resourceLabel]+: {
          subscription: value,
        },
      },
    },
  },
}
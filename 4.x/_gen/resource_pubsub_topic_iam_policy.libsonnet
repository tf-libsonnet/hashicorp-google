local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    topic,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_pubsub_topic_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, topic=topic),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    topic,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    topic: topic,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTopic(resourceLabel, value):: {
    resource+: {
      google_pubsub_topic_iam_policy+: {
        [resourceLabel]+: {
          topic: value,
        },
      },
    },
  },
}

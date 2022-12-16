local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    tag_value,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_value_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, tag_value=tag_value),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    tag_value
  ):: std.prune(a={
    policy_data: policy_data,
    tag_value: tag_value,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withTagValue(resourceLabel, value):: {
    resource+: {
      google_tags_tag_value_iam_policy+: {
        [resourceLabel]+: {
          tag_value: value,
        },
      },
    },
  },
}

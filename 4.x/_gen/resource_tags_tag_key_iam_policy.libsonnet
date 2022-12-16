local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    tag_key,
    _meta={}
  ):: tf.withResource(
    type='google_tags_tag_key_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, tag_key=tag_key),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    tag_key
  ):: std.prune(a={
    policy_data: policy_data,
    tag_key: tag_key,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withTagKey(resourceLabel, value):: {
    resource+: {
      google_tags_tag_key_iam_policy+: {
        [resourceLabel]+: {
          tag_key: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    folder,
    policy_data,
    _meta={}
  ):: tf.withResource(
    type='google_folder_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(folder=folder, policy_data=policy_data),
    _meta=_meta
  ),
  newAttrs(
    folder,
    policy_data
  ):: std.prune(a={
    folder: folder,
    policy_data: policy_data,
  }),
  withFolder(resourceLabel, value):: {
    resource+: {
      google_folder_iam_policy+: {
        [resourceLabel]+: {
          folder: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_folder_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
}

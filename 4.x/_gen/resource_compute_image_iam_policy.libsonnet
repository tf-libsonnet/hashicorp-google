local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    image,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_image_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(image=image, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    image,
    policy_data,
    project=null
  ):: std.prune(a={
    image: image,
    policy_data: policy_data,
    project: project,
  }),
  withImage(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_policy+: {
        [resourceLabel]+: {
          image: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_image_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    policy_data,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudiot_registry_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      policy_data=policy_data,
      project=project,
      region=region
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    policy_data,
    project=null,
    region=null
  ):: std.prune(a={
    name: name,
    policy_data: policy_data,
    project: project,
    region: region,
  }),
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry_iam_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_cloudiot_registry_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
}

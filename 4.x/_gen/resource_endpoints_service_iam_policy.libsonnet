local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    service_name,
    _meta={}
  ):: tf.withResource(
    type='google_endpoints_service_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, service_name=service_name),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    service_name
  ):: std.prune(a={
    policy_data: policy_data,
    service_name: service_name,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withServiceName(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_iam_policy+: {
        [resourceLabel]+: {
          service_name: value,
        },
      },
    },
  },
}

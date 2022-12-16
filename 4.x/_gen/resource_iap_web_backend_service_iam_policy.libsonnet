local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    web_backend_service,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_web_backend_service_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(policy_data=policy_data, project=project, web_backend_service=web_backend_service),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    web_backend_service,
    project=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    web_backend_service: web_backend_service,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withWebBackendService(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_policy+: {
        [resourceLabel]+: {
          web_backend_service: value,
        },
      },
    },
  },
}

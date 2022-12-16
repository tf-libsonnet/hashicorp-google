local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    app_id,
    policy_data,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_web_type_app_engine_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(app_id=app_id, policy_data=policy_data, project=project),
    _meta=_meta
  ),
  newAttrs(
    app_id,
    policy_data,
    project=null
  ):: std.prune(a={
    app_id: app_id,
    policy_data: policy_data,
    project: project,
  }),
  withAppId(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_policy+: {
        [resourceLabel]+: {
          app_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    app_id,
    policy_data,
    service,
    version_id,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_app_engine_version_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_id=app_id,
      policy_data=policy_data,
      project=project,
      service=service,
      version_id=version_id
    ),
    _meta=_meta
  ),
  newAttrs(
    app_id,
    policy_data,
    service,
    version_id,
    project=null
  ):: std.prune(a={
    app_id: app_id,
    policy_data: policy_data,
    project: project,
    service: service,
    version_id: version_id,
  }),
  withAppId(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_version_iam_policy+: {
        [resourceLabel]+: {
          app_id: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_version_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_version_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_version_iam_policy+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
  withVersionId(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_version_iam_policy+: {
        [resourceLabel]+: {
          version_id: value,
        },
      },
    },
  },
}

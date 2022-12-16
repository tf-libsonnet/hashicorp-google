local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    service_id,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_dataproc_metastore_service_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      location=location,
      policy_data=policy_data,
      project=project,
      service_id=service_id
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    service_id,
    location=null,
    project=null
  ):: std.prune(a={
    location: location,
    policy_data: policy_data,
    project: project,
    service_id: service_id,
  }),
  withLocation(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withServiceId(resourceLabel, value):: {
    resource+: {
      google_dataproc_metastore_service_iam_policy+: {
        [resourceLabel]+: {
          service_id: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    ca_pool,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_ca_pool_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      ca_pool=ca_pool,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    ca_pool,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    ca_pool: ca_pool,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withCaPool(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_policy+: {
        [resourceLabel]+: {
          ca_pool: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

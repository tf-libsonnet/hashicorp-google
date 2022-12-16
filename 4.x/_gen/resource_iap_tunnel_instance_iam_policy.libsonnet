local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    policy_data,
    project=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_tunnel_instance_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      instance=instance,
      policy_data=policy_data,
      project=project,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    policy_data,
    project=null,
    zone=null
  ):: std.prune(a={
    instance: instance,
    policy_data: policy_data,
    project: project,
    zone: zone,
  }),
  withInstance(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_policy+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_iap_tunnel_instance_iam_policy+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

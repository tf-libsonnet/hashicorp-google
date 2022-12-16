local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    certificate_template,
    policy_data,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_certificate_template_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_template=certificate_template,
      location=location,
      policy_data=policy_data,
      project=project
    ),
    _meta=_meta
  ),
  newAttrs(
    certificate_template,
    policy_data,
    location=null,
    project=null
  ):: std.prune(a={
    certificate_template: certificate_template,
    location: location,
    policy_data: policy_data,
    project: project,
  }),
  withCertificateTemplate(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_policy+: {
        [resourceLabel]+: {
          certificate_template: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_policy+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
}

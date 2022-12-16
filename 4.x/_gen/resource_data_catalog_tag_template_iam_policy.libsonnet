local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    policy_data,
    tag_template,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_tag_template_iam_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      policy_data=policy_data,
      project=project,
      region=region,
      tag_template=tag_template
    ),
    _meta=_meta
  ),
  newAttrs(
    policy_data,
    tag_template,
    project=null,
    region=null
  ):: std.prune(a={
    policy_data: policy_data,
    project: project,
    region: region,
    tag_template: tag_template,
  }),
  withPolicyData(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_policy+: {
        [resourceLabel]+: {
          policy_data: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_policy+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTagTemplate(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_policy+: {
        [resourceLabel]+: {
          tag_template: value,
        },
      },
    },
  },
}

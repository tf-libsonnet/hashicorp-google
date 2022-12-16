local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  condition:: {
    new(
      expression,
      title,
      description=null
    ):: std.prune(a={
      description: description,
      expression: expression,
      title: title,
    }),
  },
  new(
    resourceLabel,
    member,
    role,
    tag_template,
    condition=null,
    project=null,
    region=null,
    _meta={}
  ):: tf.withResource(
    type='google_data_catalog_tag_template_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      project=project,
      region=region,
      role=role,
      tag_template=tag_template
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    tag_template,
    condition=null,
    project=null,
    region=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    project: project,
    region: region,
    role: role,
    tag_template: tag_template,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withTagTemplate(resourceLabel, value):: {
    resource+: {
      google_data_catalog_tag_template_iam_member+: {
        [resourceLabel]+: {
          tag_template: value,
        },
      },
    },
  },
}

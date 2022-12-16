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
    certificate_template,
    member,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_certificate_template_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_template=certificate_template,
      condition=condition,
      location=location,
      member=member,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    certificate_template,
    member,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    certificate_template: certificate_template,
    condition: condition,
    location: location,
    member: member,
    project: project,
    role: role,
  }),
  withCertificateTemplate(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          certificate_template: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

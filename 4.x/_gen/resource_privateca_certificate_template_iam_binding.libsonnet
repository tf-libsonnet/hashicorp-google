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
    members,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_certificate_template_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      certificate_template=certificate_template,
      condition=condition,
      location=location,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    certificate_template,
    members,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    certificate_template: certificate_template,
    condition: condition,
    location: location,
    members: members,
    project: project,
    role: role,
  }),
  withCertificateTemplate(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          certificate_template: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_privateca_certificate_template_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

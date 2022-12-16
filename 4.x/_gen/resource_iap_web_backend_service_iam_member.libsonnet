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
    web_backend_service,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_web_backend_service_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      member=member,
      project=project,
      role=role,
      web_backend_service=web_backend_service
    ),
    _meta=_meta
  ),
  newAttrs(
    member,
    role,
    web_backend_service,
    condition=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    member: member,
    project: project,
    role: role,
    web_backend_service: web_backend_service,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withWebBackendService(resourceLabel, value):: {
    resource+: {
      google_iap_web_backend_service_iam_member+: {
        [resourceLabel]+: {
          web_backend_service: value,
        },
      },
    },
  },
}

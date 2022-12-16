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
    app_id,
    member,
    role,
    service,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_app_engine_service_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_id=app_id,
      condition=condition,
      member=member,
      project=project,
      role=role,
      service=service
    ),
    _meta=_meta
  ),
  newAttrs(
    app_id,
    member,
    role,
    service,
    condition=null,
    project=null
  ):: std.prune(a={
    app_id: app_id,
    condition: condition,
    member: member,
    project: project,
    role: role,
    service: service,
  }),
  withAppId(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          app_id: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_iap_app_engine_service_iam_member+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
}

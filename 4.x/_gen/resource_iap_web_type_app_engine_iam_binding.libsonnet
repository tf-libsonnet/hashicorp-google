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
    members,
    role,
    condition=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_iap_web_type_app_engine_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      app_id=app_id,
      condition=condition,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    app_id,
    members,
    role,
    condition=null,
    project=null
  ):: std.prune(a={
    app_id: app_id,
    condition: condition,
    members: members,
    project: project,
    role: role,
  }),
  withAppId(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          app_id: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_iap_web_type_app_engine_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

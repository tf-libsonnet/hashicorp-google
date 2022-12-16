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
    members,
    role,
    service,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloud_run_service_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      location=location,
      members=members,
      project=project,
      role=role,
      service=service
    ),
    _meta=_meta
  ),
  newAttrs(
    members,
    role,
    service,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    condition: condition,
    location: location,
    members: members,
    project: project,
    role: role,
    service: service,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withService(resourceLabel, value):: {
    resource+: {
      google_cloud_run_service_iam_binding+: {
        [resourceLabel]+: {
          service: value,
        },
      },
    },
  },
}

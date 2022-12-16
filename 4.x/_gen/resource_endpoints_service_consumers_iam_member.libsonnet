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
    consumer_project,
    member,
    role,
    service_name,
    condition=null,
    _meta={}
  ):: tf.withResource(
    type='google_endpoints_service_consumers_iam_member',
    label=resourceLabel,
    attrs=self.newAttrs(
      condition=condition,
      consumer_project=consumer_project,
      member=member,
      role=role,
      service_name=service_name
    ),
    _meta=_meta
  ),
  newAttrs(
    consumer_project,
    member,
    role,
    service_name,
    condition=null
  ):: std.prune(a={
    condition: condition,
    consumer_project: consumer_project,
    member: member,
    role: role,
    service_name: service_name,
  }),
  withCondition(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_member+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_member+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConsumerProject(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_member+: {
        [resourceLabel]+: {
          consumer_project: value,
        },
      },
    },
  },
  withMember(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_member+: {
        [resourceLabel]+: {
          member: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_member+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
  withServiceName(resourceLabel, value):: {
    resource+: {
      google_endpoints_service_consumers_iam_member+: {
        [resourceLabel]+: {
          service_name: value,
        },
      },
    },
  },
}

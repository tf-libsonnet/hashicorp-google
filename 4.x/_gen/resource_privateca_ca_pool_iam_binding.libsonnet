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
    ca_pool,
    members,
    role,
    condition=null,
    location=null,
    project=null,
    _meta={}
  ):: tf.withResource(
    type='google_privateca_ca_pool_iam_binding',
    label=resourceLabel,
    attrs=self.newAttrs(
      ca_pool=ca_pool,
      condition=condition,
      location=location,
      members=members,
      project=project,
      role=role
    ),
    _meta=_meta
  ),
  newAttrs(
    ca_pool,
    members,
    role,
    condition=null,
    location=null,
    project=null
  ):: std.prune(a={
    ca_pool: ca_pool,
    condition: condition,
    location: location,
    members: members,
    project: project,
    role: role,
  }),
  withCaPool(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          ca_pool: value,
        },
      },
    },
  },
  withCondition(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          condition: value,
        },
      },
    },
  },
  withConditionMixin(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          condition+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withMembers(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          members: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRole(resourceLabel, value):: {
    resource+: {
      google_privateca_ca_pool_iam_binding+: {
        [resourceLabel]+: {
          role: value,
        },
      },
    },
  },
}

local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  boolean_policy:: {
    new(
      enforced
    ):: std.prune(a={
      enforced: enforced,
    }),
  },
  list_policy:: {
    allow:: {
      new(
        all=null,
        values=null
      ):: std.prune(a={
        all: all,
        values: values,
      }),
    },
    deny:: {
      new(
        all=null,
        values=null
      ):: std.prune(a={
        all: all,
        values: values,
      }),
    },
    new(
      allow=null,
      deny=null,
      inherit_from_parent=null,
      suggested_value=null
    ):: std.prune(a={
      allow: allow,
      deny: deny,
      inherit_from_parent: inherit_from_parent,
      suggested_value: suggested_value,
    }),
  },
  new(
    resourceLabel,
    constraint,
    project,
    boolean_policy=null,
    list_policy=null,
    restore_policy=null,
    timeouts=null,
    version=null,
    _meta={}
  ):: tf.withResource(
    type='google_project_organization_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      boolean_policy=boolean_policy,
      constraint=constraint,
      list_policy=list_policy,
      project=project,
      restore_policy=restore_policy,
      timeouts=timeouts,
      version=version
    ),
    _meta=_meta
  ),
  newAttrs(
    constraint,
    project,
    boolean_policy=null,
    list_policy=null,
    restore_policy=null,
    timeouts=null,
    version=null
  ):: std.prune(a={
    boolean_policy: boolean_policy,
    constraint: constraint,
    list_policy: list_policy,
    project: project,
    restore_policy: restore_policy,
    timeouts: timeouts,
    version: version,
  }),
  restore_policy:: {
    new(
      default
    ):: std.prune(a={
      default: default,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null,
      read=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      read: read,
      update: update,
    }),
  },
  withBooleanPolicy(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          boolean_policy: value,
        },
      },
    },
  },
  withBooleanPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          boolean_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withConstraint(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          constraint: value,
        },
      },
    },
  },
  withListPolicy(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          list_policy: value,
        },
      },
    },
  },
  withListPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          list_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRestorePolicy(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          restore_policy: value,
        },
      },
    },
  },
  withRestorePolicyMixin(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          restore_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVersion(resourceLabel, value):: {
    resource+: {
      google_project_organization_policy+: {
        [resourceLabel]+: {
          version: value,
        },
      },
    },
  },
}

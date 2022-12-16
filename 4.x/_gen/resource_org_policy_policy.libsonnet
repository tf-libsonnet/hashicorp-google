local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    parent,
    spec=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_org_policy_policy',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      parent=parent,
      spec=spec,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    parent,
    spec=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    parent: parent,
    spec: spec,
    timeouts: timeouts,
  }),
  spec:: {
    new(
      inherit_from_parent=null,
      reset=null,
      rules=null
    ):: std.prune(a={
      inherit_from_parent: inherit_from_parent,
      reset: reset,
      rules: rules,
    }),
    rules:: {
      condition:: {
        new(
          description=null,
          expression=null,
          location=null,
          title=null
        ):: std.prune(a={
          description: description,
          expression: expression,
          location: location,
          title: title,
        }),
      },
      new(
        allow_all=null,
        condition=null,
        deny_all=null,
        enforce=null,
        values=null
      ):: std.prune(a={
        allow_all: allow_all,
        condition: condition,
        deny_all: deny_all,
        enforce: enforce,
        values: values,
      }),
      values:: {
        new(
          allowed_values=null,
          denied_values=null
        ):: std.prune(a={
          allowed_values: allowed_values,
          denied_values: denied_values,
        }),
      },
    },
  },
  timeouts:: {
    new(
      create=null,
      delete=null,
      update=null
    ):: std.prune(a={
      create: create,
      delete: delete,
      update: update,
    }),
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withParent(resourceLabel, value):: {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          parent: value,
        },
      },
    },
  },
  withSpec(resourceLabel, value):: {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          spec: value,
        },
      },
    },
  },
  withSpecMixin(resourceLabel, value):: {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          spec+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_org_policy_policy+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

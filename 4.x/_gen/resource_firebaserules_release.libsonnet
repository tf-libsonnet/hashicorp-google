local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    name,
    ruleset_name,
    project=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebaserules_release',
    label=resourceLabel,
    attrs=self.newAttrs(
      name=name,
      project=project,
      ruleset_name=ruleset_name,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    ruleset_name,
    project=null,
    timeouts=null
  ):: std.prune(a={
    name: name,
    project: project,
    ruleset_name: ruleset_name,
    timeouts: timeouts,
  }),
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
      google_firebaserules_release+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebaserules_release+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRulesetName(resourceLabel, value):: {
    resource+: {
      google_firebaserules_release+: {
        [resourceLabel]+: {
          ruleset_name: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebaserules_release+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebaserules_release+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

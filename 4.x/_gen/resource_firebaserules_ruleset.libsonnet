local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    project=null,
    source=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_firebaserules_ruleset',
    label=resourceLabel,
    attrs=self.newAttrs(project=project, source=source, timeouts=timeouts),
    _meta=_meta
  ),
  newAttrs(
    project=null,
    source=null,
    timeouts=null
  ):: std.prune(a={
    project: project,
    source: source,
    timeouts: timeouts,
  }),
  source:: {
    files:: {
      new(
        content,
        name,
        fingerprint=null
      ):: std.prune(a={
        content: content,
        fingerprint: fingerprint,
        name: name,
      }),
    },
    new(
      files=null,
      language=null
    ):: std.prune(a={
      files: files,
      language: language,
    }),
  },
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSource(resourceLabel, value):: {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          source: value,
        },
      },
    },
  },
  withSourceMixin(resourceLabel, value):: {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          source+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_firebaserules_ruleset+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

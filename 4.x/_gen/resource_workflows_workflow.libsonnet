local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    description=null,
    labels=null,
    name=null,
    name_prefix=null,
    project=null,
    region=null,
    service_account=null,
    source_contents=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_workflows_workflow',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      labels=labels,
      name=name,
      name_prefix=name_prefix,
      project=project,
      region=region,
      service_account=service_account,
      source_contents=source_contents,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    description=null,
    labels=null,
    name=null,
    name_prefix=null,
    project=null,
    region=null,
    service_account=null,
    source_contents=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    labels: labels,
    name: name,
    name_prefix: name_prefix,
    project: project,
    region: region,
    service_account: service_account,
    source_contents: source_contents,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNamePrefix(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          name_prefix: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withServiceAccount(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          service_account: value,
        },
      },
    },
  },
  withSourceContents(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          source_contents: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_workflows_workflow+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

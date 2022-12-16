local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  labels:: {
    new(
      key=null,
      value=null
    ):: std.prune(a={
      key: key,
      value: value,
    }),
  },
  new(
    resourceLabel,
    name,
    create_policy=null,
    delete_policy=null,
    description=null,
    labels=null,
    preview=null,
    project=null,
    target=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_deployment_manager_deployment',
    label=resourceLabel,
    attrs=self.newAttrs(
      create_policy=create_policy,
      delete_policy=delete_policy,
      description=description,
      labels=labels,
      name=name,
      preview=preview,
      project=project,
      target=target,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    create_policy=null,
    delete_policy=null,
    description=null,
    labels=null,
    preview=null,
    project=null,
    target=null,
    timeouts=null
  ):: std.prune(a={
    create_policy: create_policy,
    delete_policy: delete_policy,
    description: description,
    labels: labels,
    name: name,
    preview: preview,
    project: project,
    target: target,
    timeouts: timeouts,
  }),
  target:: {
    config:: {
      new(
        content
      ):: std.prune(a={
        content: content,
      }),
    },
    imports:: {
      new(
        content=null,
        name=null
      ):: std.prune(a={
        content: content,
        name: name,
      }),
    },
    new(
      config=null,
      imports=null
    ):: std.prune(a={
      config: config,
      imports: imports,
    }),
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
  withCreatePolicy(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          create_policy: value,
        },
      },
    },
  },
  withDeletePolicy(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          delete_policy: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLabelsMixin(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          labels+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPreview(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          preview: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTarget(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          target: value,
        },
      },
    },
  },
  withTargetMixin(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          target+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_deployment_manager_deployment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

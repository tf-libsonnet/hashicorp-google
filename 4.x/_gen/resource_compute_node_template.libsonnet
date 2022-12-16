local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    cpu_overcommit_type=null,
    description=null,
    name=null,
    node_affinity_labels=null,
    node_type=null,
    node_type_flexibility=null,
    project=null,
    region=null,
    server_binding=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_node_template',
    label=resourceLabel,
    attrs=self.newAttrs(
      cpu_overcommit_type=cpu_overcommit_type,
      description=description,
      name=name,
      node_affinity_labels=node_affinity_labels,
      node_type=node_type,
      node_type_flexibility=node_type_flexibility,
      project=project,
      region=region,
      server_binding=server_binding,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    cpu_overcommit_type=null,
    description=null,
    name=null,
    node_affinity_labels=null,
    node_type=null,
    node_type_flexibility=null,
    project=null,
    region=null,
    server_binding=null,
    timeouts=null
  ):: std.prune(a={
    cpu_overcommit_type: cpu_overcommit_type,
    description: description,
    name: name,
    node_affinity_labels: node_affinity_labels,
    node_type: node_type,
    node_type_flexibility: node_type_flexibility,
    project: project,
    region: region,
    server_binding: server_binding,
    timeouts: timeouts,
  }),
  node_type_flexibility:: {
    new(
      cpus=null,
      memory=null
    ):: std.prune(a={
      cpus: cpus,
      memory: memory,
    }),
  },
  server_binding:: {
    new(
      type
    ):: std.prune(a={
      type: type,
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
  withCpuOvercommitType(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          cpu_overcommit_type: value,
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNodeAffinityLabels(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_affinity_labels: value,
        },
      },
    },
  },
  withNodeType(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_type: value,
        },
      },
    },
  },
  withNodeTypeFlexibility(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_type_flexibility: value,
        },
      },
    },
  },
  withNodeTypeFlexibilityMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          node_type_flexibility+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withServerBinding(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          server_binding: value,
        },
      },
    },
  },
  withServerBindingMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          server_binding+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_template+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

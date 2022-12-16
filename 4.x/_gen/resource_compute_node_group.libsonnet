local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  autoscaling_policy:: {
    new(
      max_nodes=null,
      min_nodes=null,
      mode=null
    ):: std.prune(a={
      max_nodes: max_nodes,
      min_nodes: min_nodes,
      mode: mode,
    }),
  },
  maintenance_window:: {
    new(
      start_time
    ):: std.prune(a={
      start_time: start_time,
    }),
  },
  new(
    resourceLabel,
    node_template,
    autoscaling_policy=null,
    description=null,
    initial_size=null,
    maintenance_policy=null,
    maintenance_window=null,
    name=null,
    project=null,
    size=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_node_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      autoscaling_policy=autoscaling_policy,
      description=description,
      initial_size=initial_size,
      maintenance_policy=maintenance_policy,
      maintenance_window=maintenance_window,
      name=name,
      node_template=node_template,
      project=project,
      size=size,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    node_template,
    autoscaling_policy=null,
    description=null,
    initial_size=null,
    maintenance_policy=null,
    maintenance_window=null,
    name=null,
    project=null,
    size=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    autoscaling_policy: autoscaling_policy,
    description: description,
    initial_size: initial_size,
    maintenance_policy: maintenance_policy,
    maintenance_window: maintenance_window,
    name: name,
    node_template: node_template,
    project: project,
    size: size,
    timeouts: timeouts,
    zone: zone,
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
  withAutoscalingPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          autoscaling_policy: value,
        },
      },
    },
  },
  withAutoscalingPolicyMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          autoscaling_policy+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withInitialSize(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          initial_size: value,
        },
      },
    },
  },
  withMaintenancePolicy(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_policy: value,
        },
      },
    },
  },
  withMaintenanceWindow(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_window: value,
        },
      },
    },
  },
  withMaintenanceWindowMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          maintenance_window+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNodeTemplate(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          node_template: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSize(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          size: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_node_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

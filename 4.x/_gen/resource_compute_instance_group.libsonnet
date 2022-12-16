local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  named_port:: {
    new(
      name,
      port
    ):: std.prune(a={
      name: name,
      port: port,
    }),
  },
  new(
    resourceLabel,
    name,
    description=null,
    instances=null,
    named_port=null,
    network=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_group',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      instances=instances,
      name=name,
      named_port=named_port,
      network=network,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    instances=null,
    named_port=null,
    network=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    description: description,
    instances: instances,
    name: name,
    named_port: named_port,
    network: network,
    project: project,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withInstances(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          instances: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNamedPort(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          named_port: value,
        },
      },
    },
  },
  withNamedPortMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          named_port+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withNetwork(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          network: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

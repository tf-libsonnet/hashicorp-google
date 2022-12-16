local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    group,
    name,
    port,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_instance_group_named_port',
    label=resourceLabel,
    attrs=self.newAttrs(
      group=group,
      name=name,
      port=port,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    group,
    name,
    port,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    group: group,
    name: name,
    port: port,
    project: project,
    timeouts: timeouts,
    zone: zone,
  }),
  timeouts:: {
    new(
      create=null,
      delete=null
    ):: std.prune(a={
      create: create,
      delete: delete,
    }),
  },
  withGroup(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          group: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withPort(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          port: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_instance_group_named_port+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

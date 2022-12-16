local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    instance,
    name,
    description=null,
    nat_policy=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_target_instance',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      instance=instance,
      name=name,
      nat_policy=nat_policy,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    instance,
    name,
    description=null,
    nat_policy=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    description: description,
    instance: instance,
    name: name,
    nat_policy: nat_policy,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNatPolicy(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          nat_policy: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_target_instance+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

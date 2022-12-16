local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    disk,
    instance,
    device_name=null,
    mode=null,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_attached_disk',
    label=resourceLabel,
    attrs=self.newAttrs(
      device_name=device_name,
      disk=disk,
      instance=instance,
      mode=mode,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    disk,
    instance,
    device_name=null,
    mode=null,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    device_name: device_name,
    disk: disk,
    instance: instance,
    mode: mode,
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
  withDeviceName(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          device_name: value,
        },
      },
    },
  },
  withDisk(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          disk: value,
        },
      },
    },
  },
  withInstance(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          instance: value,
        },
      },
    },
  },
  withMode(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          mode: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_attached_disk+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

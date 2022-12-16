local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    disk,
    name,
    project=null,
    timeouts=null,
    zone=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_disk_resource_policy_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      disk=disk,
      name=name,
      project=project,
      timeouts=timeouts,
      zone=zone
    ),
    _meta=_meta
  ),
  newAttrs(
    disk,
    name,
    project=null,
    timeouts=null,
    zone=null
  ):: std.prune(a={
    disk: disk,
    name: name,
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
  withDisk(resourceLabel, value):: {
    resource+: {
      google_compute_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          disk: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withZone(resourceLabel, value):: {
    resource+: {
      google_compute_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          zone: value,
        },
      },
    },
  },
}

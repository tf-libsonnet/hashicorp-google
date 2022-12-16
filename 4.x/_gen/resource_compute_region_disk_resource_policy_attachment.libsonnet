local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  new(
    resourceLabel,
    disk,
    name,
    project=null,
    region=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_region_disk_resource_policy_attachment',
    label=resourceLabel,
    attrs=self.newAttrs(
      disk=disk,
      name=name,
      project=project,
      region=region,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    disk,
    name,
    project=null,
    region=null,
    timeouts=null
  ):: std.prune(a={
    disk: disk,
    name: name,
    project: project,
    region: region,
    timeouts: timeouts,
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
      google_compute_region_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          disk: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRegion(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          region: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_region_disk_resource_policy_attachment+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

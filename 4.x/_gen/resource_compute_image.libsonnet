local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  guest_os_features:: {
    new(
      type
    ):: std.prune(a={
      type: type,
    }),
  },
  new(
    resourceLabel,
    name,
    description=null,
    disk_size_gb=null,
    family=null,
    guest_os_features=null,
    labels=null,
    licenses=null,
    project=null,
    raw_disk=null,
    source_disk=null,
    source_image=null,
    source_snapshot=null,
    timeouts=null,
    _meta={}
  ):: tf.withResource(
    type='google_compute_image',
    label=resourceLabel,
    attrs=self.newAttrs(
      description=description,
      disk_size_gb=disk_size_gb,
      family=family,
      guest_os_features=guest_os_features,
      labels=labels,
      licenses=licenses,
      name=name,
      project=project,
      raw_disk=raw_disk,
      source_disk=source_disk,
      source_image=source_image,
      source_snapshot=source_snapshot,
      timeouts=timeouts
    ),
    _meta=_meta
  ),
  newAttrs(
    name,
    description=null,
    disk_size_gb=null,
    family=null,
    guest_os_features=null,
    labels=null,
    licenses=null,
    project=null,
    raw_disk=null,
    source_disk=null,
    source_image=null,
    source_snapshot=null,
    timeouts=null
  ):: std.prune(a={
    description: description,
    disk_size_gb: disk_size_gb,
    family: family,
    guest_os_features: guest_os_features,
    labels: labels,
    licenses: licenses,
    name: name,
    project: project,
    raw_disk: raw_disk,
    source_disk: source_disk,
    source_image: source_image,
    source_snapshot: source_snapshot,
    timeouts: timeouts,
  }),
  raw_disk:: {
    new(
      source,
      container_type=null,
      sha1=null
    ):: std.prune(a={
      container_type: container_type,
      sha1: sha1,
      source: source,
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
  withDescription(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          description: value,
        },
      },
    },
  },
  withDiskSizeGb(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          disk_size_gb: value,
        },
      },
    },
  },
  withFamily(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          family: value,
        },
      },
    },
  },
  withGuestOsFeatures(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          guest_os_features: value,
        },
      },
    },
  },
  withGuestOsFeaturesMixin(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          guest_os_features+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLabels(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          labels: value,
        },
      },
    },
  },
  withLicenses(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          licenses: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withRawDisk(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          raw_disk: value,
        },
      },
    },
  },
  withRawDiskMixin(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          raw_disk+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withSourceDisk(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          source_disk: value,
        },
      },
    },
  },
  withSourceImage(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          source_image: value,
        },
      },
    },
  },
  withSourceSnapshot(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          source_snapshot: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_compute_image+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
}

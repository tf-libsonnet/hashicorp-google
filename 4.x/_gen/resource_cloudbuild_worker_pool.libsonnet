local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  network_config:: {
    new(
      peered_network
    ):: std.prune(a={
      peered_network: peered_network,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    annotations=null,
    display_name=null,
    network_config=null,
    project=null,
    timeouts=null,
    worker_config=null,
    _meta={}
  ):: tf.withResource(
    type='google_cloudbuild_worker_pool',
    label=resourceLabel,
    attrs=self.newAttrs(
      annotations=annotations,
      display_name=display_name,
      location=location,
      name=name,
      network_config=network_config,
      project=project,
      timeouts=timeouts,
      worker_config=worker_config
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    annotations=null,
    display_name=null,
    network_config=null,
    project=null,
    timeouts=null,
    worker_config=null
  ):: std.prune(a={
    annotations: annotations,
    display_name: display_name,
    location: location,
    name: name,
    network_config: network_config,
    project: project,
    timeouts: timeouts,
    worker_config: worker_config,
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
  withAnnotations(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          annotations: value,
        },
      },
    },
  },
  withDisplayName(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          display_name: value,
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withNetworkConfig(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          network_config: value,
        },
      },
    },
  },
  withNetworkConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          network_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withWorkerConfig(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          worker_config: value,
        },
      },
    },
  },
  withWorkerConfigMixin(resourceLabel, value):: {
    resource+: {
      google_cloudbuild_worker_pool+: {
        [resourceLabel]+: {
          worker_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  worker_config:: {
    new(
      disk_size_gb=null,
      machine_type=null,
      no_external_ip=null
    ):: std.prune(a={
      disk_size_gb: disk_size_gb,
      machine_type: machine_type,
      no_external_ip: no_external_ip,
    }),
  },
}

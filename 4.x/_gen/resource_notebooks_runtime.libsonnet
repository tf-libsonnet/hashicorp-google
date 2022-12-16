local tf = (import 'github.com/tf-libsonnet/core/main.libsonnet');
{
  access_config:: {
    new(
      access_type=null,
      runtime_owner=null
    ):: std.prune(a={
      access_type: access_type,
      runtime_owner: runtime_owner,
    }),
  },
  new(
    resourceLabel,
    location,
    name,
    access_config=null,
    project=null,
    software_config=null,
    timeouts=null,
    virtual_machine=null,
    _meta={}
  ):: tf.withResource(
    type='google_notebooks_runtime',
    label=resourceLabel,
    attrs=self.newAttrs(
      access_config=access_config,
      location=location,
      name=name,
      project=project,
      software_config=software_config,
      timeouts=timeouts,
      virtual_machine=virtual_machine
    ),
    _meta=_meta
  ),
  newAttrs(
    location,
    name,
    access_config=null,
    project=null,
    software_config=null,
    timeouts=null,
    virtual_machine=null
  ):: std.prune(a={
    access_config: access_config,
    location: location,
    name: name,
    project: project,
    software_config: software_config,
    timeouts: timeouts,
    virtual_machine: virtual_machine,
  }),
  software_config:: {
    kernels:: {
      new(
        repository,
        tag=null
      ):: std.prune(a={
        repository: repository,
        tag: tag,
      }),
    },
    new(
      custom_gpu_driver_path=null,
      enable_health_monitoring=null,
      idle_shutdown=null,
      idle_shutdown_timeout=null,
      install_gpu_driver=null,
      kernels=null,
      notebook_upgrade_schedule=null,
      post_startup_script=null,
      post_startup_script_behavior=null
    ):: std.prune(a={
      custom_gpu_driver_path: custom_gpu_driver_path,
      enable_health_monitoring: enable_health_monitoring,
      idle_shutdown: idle_shutdown,
      idle_shutdown_timeout: idle_shutdown_timeout,
      install_gpu_driver: install_gpu_driver,
      kernels: kernels,
      notebook_upgrade_schedule: notebook_upgrade_schedule,
      post_startup_script: post_startup_script,
      post_startup_script_behavior: post_startup_script_behavior,
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
  virtual_machine:: {
    new(
      virtual_machine_config=null
    ):: std.prune(a={
      virtual_machine_config: virtual_machine_config,
    }),
    virtual_machine_config:: {
      accelerator_config:: {
        new(
          core_count=null,
          type=null
        ):: std.prune(a={
          core_count: core_count,
          type: type,
        }),
      },
      container_images:: {
        new(
          repository,
          tag=null
        ):: std.prune(a={
          repository: repository,
          tag: tag,
        }),
      },
      data_disk:: {
        initialize_params:: {
          new(
            description=null,
            disk_name=null,
            disk_size_gb=null,
            disk_type=null,
            labels=null
          ):: std.prune(a={
            description: description,
            disk_name: disk_name,
            disk_size_gb: disk_size_gb,
            disk_type: disk_type,
            labels: labels,
          }),
        },
        new(
          initialize_params=null,
          interface=null,
          mode=null,
          source=null,
          type=null
        ):: std.prune(a={
          initialize_params: initialize_params,
          interface: interface,
          mode: mode,
          source: source,
          type: type,
        }),
      },
      encryption_config:: {
        new(
          kms_key=null
        ):: std.prune(a={
          kms_key: kms_key,
        }),
      },
      new(
        machine_type,
        accelerator_config=null,
        container_images=null,
        data_disk=null,
        encryption_config=null,
        internal_ip_only=null,
        labels=null,
        metadata=null,
        network=null,
        nic_type=null,
        reserved_ip_range=null,
        shielded_instance_config=null,
        subnet=null,
        tags=null
      ):: std.prune(a={
        accelerator_config: accelerator_config,
        container_images: container_images,
        data_disk: data_disk,
        encryption_config: encryption_config,
        internal_ip_only: internal_ip_only,
        labels: labels,
        machine_type: machine_type,
        metadata: metadata,
        network: network,
        nic_type: nic_type,
        reserved_ip_range: reserved_ip_range,
        shielded_instance_config: shielded_instance_config,
        subnet: subnet,
        tags: tags,
      }),
      shielded_instance_config:: {
        new(
          enable_integrity_monitoring=null,
          enable_secure_boot=null,
          enable_vtpm=null
        ):: std.prune(a={
          enable_integrity_monitoring: enable_integrity_monitoring,
          enable_secure_boot: enable_secure_boot,
          enable_vtpm: enable_vtpm,
        }),
      },
    },
  },
  withAccessConfig(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          access_config: value,
        },
      },
    },
  },
  withAccessConfigMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          access_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withLocation(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          location: value,
        },
      },
    },
  },
  withName(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          name: value,
        },
      },
    },
  },
  withProject(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          project: value,
        },
      },
    },
  },
  withSoftwareConfig(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          software_config: value,
        },
      },
    },
  },
  withSoftwareConfigMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          software_config+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
  withTimeouts(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          timeouts: value,
        },
      },
    },
  },
  withTimeoutsMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          timeouts+: value,
        },
      },
    },
  },
  withVirtualMachine(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          virtual_machine: value,
        },
      },
    },
  },
  withVirtualMachineMixin(resourceLabel, value):: {
    resource+: {
      google_notebooks_runtime+: {
        [resourceLabel]+: {
          virtual_machine+: if std.isArray(v=value) then value else [value],
        },
      },
    },
  },
}
